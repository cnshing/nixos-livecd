# Recursively imports all the modules
# Modified from https://github.com/evanjs/nixos_cfg/blob/4bb5b0b84a221b25cf50853c12b9f66f0cad3ea4/config/new-modules/default.nix
{lib, ...}:
with lib; let
  # Recursively constructs an attrset of a given folder, recursing on directories, value of attrs is the filetype
  getDir = dir:
    mapAttrs
    (
      file: type:
      # Implement implicit copy fix from https://discourse.nixos.org/t/understanding-the-import-system-in-nixos/24367/4
        if type == "directory"
        then getDir (dir + "/${file}")
        else type
    )
    (builtins.readDir dir);

  # Collects all files of a directory as a list of strings of paths
  files = dir: collect isString (mapAttrsRecursive (path: type: concatStringsSep "/" path) (getDir dir));

  excludedModules = ["appimage-menu-updater.nix"];

  # Filters out directories that don't end with .nix or are this file, also makes the strings absolute
  validFiles = dir:
    map
    (file: ./. + "/${file}")
    (filter
      (file: hasSuffix ".nix" file && file != "default.nix" && !builtins.any (module: hasInfix module file) excludedModules)
      (files dir));
in {
  imports = validFiles ./.;
}

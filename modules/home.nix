# Allows home configuration from multiple files by utilizing options merging.
# Modified from https://github.com/jakehamilton/config/blob/dacffe212ebe6c7c42181e4cc42733d1233ec5d2/modules/nixos/home/default.nix#L9
{ options, config, pkgs, lib, inputs, ... }:

with lib;
let

  # Copy source material import code - required for options.home
  # From https://github.com/jakehamilton/config/blob/dacffe212ebe6c7c42181e4cc42733d1233ec5d2/lib/module/default.nix#L7
  # If mkOpt will be used more in the future then move this to a dedicated module
  mkOpt = type: default: description:
    mkOption { inherit type default description; };

  cfg = config.home;
in
{
  # imports = with inputs; [
  #   home-manager.nixosModules.home-manager
  # ];


  options.home = with types; {
    file = mkOpt attrs { }
      (mdDoc "A set of files to be managed by home-manager's `home.file`.");
    configFile = mkOpt attrs { }
      (mdDoc "A set of files to be managed by home-manager's `xdg.configFile`.");
    extraOptions = mkOpt attrs { } "Options to pass directly to home-manager.";
  };

  config = {
    home.extraOptions = {
      home.stateVersion = lib.mkDefault "${pkgs.lib.versions.majorMinor pkgs.lib.version}";
      home.file = mkAliasDefinitions options.home.file;
      xdg.enable = true;
      xdg.configFile = mkAliasDefinitions options.home.configFile;
    };

    programs.home-manager.enable = true;

    home-manager = {
      useUserPackages = true;
      useGlobalPkgs = true;

      users.${config.user.name} = { 
        home.username = "${config.user.name}";
        home.homeDirectory = "/home/${config.user.name}";
      } // mkAliasDefinitions options.home.extraOptions;
    };
  };
}
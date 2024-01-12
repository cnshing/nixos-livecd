{
  pkgs,
  lib,
  ...
}: {
  environment.systemPackages = with pkgs; [
    libreoffice-still
    hunspell
    (lib.filterAttrs (name: value: value.type == "package") (lib.attrValues hunspellDicts))
  ];
}

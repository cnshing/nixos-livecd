{
  pkgs,
  lib,
  ...
}: {
  environment.systemPackages = with pkgs; [
    libreoffice-still
    hunspell
    (lib.attrValues hunspellDicts)
  ];
}

{
  pkgs,
  lib,
  ...
}:
with lib; let
  allHunspellDicts = attrValues (filterAttrs (name: value: types.isType types.package value) (attrValues pkgs.hunspellDicts));
in {
  environment.systemPackages = with pkgs;
    [
      libreoffice-still
      hunspell
    ]
    ++ allHunspellDicts;
}

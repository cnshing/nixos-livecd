{
  pkgs,
  lib,
  ...
}:
with lib; let
  allHunspellChromiumDicts = attrValues (
    filterAttrs
      (name: value: types.isType types.package value)
      pkgs.hunspellDictsChromium
  );
in {
  environment.systemPackages = with pkgs;
    [
      firefox
      google-chrome
      chromium
    ]
    ++ allHunspellChromiumDicts;
  programs.firefox.enable = true;
  programs.chromium.enable = true;
}

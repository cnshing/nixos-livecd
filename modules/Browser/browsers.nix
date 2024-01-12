{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    firefox
    google-chrome
    chromium
    (lib.attrValues hunspellDictsChromium)
  ];
  programs.firefox.enable = true;
  programs.chromium.enable = true;
}

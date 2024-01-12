{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    firefox
    google-chrome
    chromium
    (lib.filterAttrs (name: value: value.type == "package") (lib.attrValues hunspellDictsChromium))
  ];
  programs.firefox.enable = true;
  programs.chromium.enable = true;
}

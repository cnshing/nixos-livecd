{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    firefox
    google-chrome
    chromium
  ];
  programs.firefox.enable = true;
  programs.chromium.enable = true;
}

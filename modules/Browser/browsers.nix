{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    firefox
    google-chrome
    ungoogled-chromium
  ];
  programs.firefox.enable = true;

  programs.firefox.nativeMessagingHosts.packages = with pkgs; [gnome-browser-connector];
  nixpkgs.config.firefox.enableGnomeExtensions = true;
  programs.chromium.enable = true;
}

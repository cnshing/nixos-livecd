{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    firefox
    google-chrome
    ungoogled-chromium
  ];
  programs.firefox.enable = true;
  nixpkgs.config.firefox.enableGnomeExtensions = true;
  programs.chromium.enable = true;
}

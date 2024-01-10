{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    firefox
    google-chrome
    ungoogled-chromium
  ];
  programs.firefox.enable = true;
  programs.chromium.enable = true;
}

/*
Code modified from socherbyc's AppImageLauncher derivation at
https://github.com/NixOS/nixpkgs/issues/199452
*/
{pkgs, ...}:
with pkgs; let
  appimagelauncher = libsForQt5.callPackage ./appimagelauncher-deb.nix {};
  appimage-menu-updater = callPackage ./appimage-menu-updater.nix {};
in {
  environment.systemPackages = [appimagelauncher];

  systemd.user.services = {
    appimage-launcherd = {
      description = "AppImage Launcher";
      wantedBy = ["appimage-launcherd.target"];
      serviceConfig = {
        Type = "simple";
        ExecStart = "${appimagelauncher}/bin/appimagelauncherd";
      };
    };
    appimage-menu-updater = {
      enable = true;
      description = "AppImage Menu Updater";
      unitConfig = {
        Type = "simple";
      };
      serviceConfig = {
        ExecStart = "/bin/sh -c 'HOME=%h ${appimage-menu-updater}'";
      };
      wantedBy = ["default.target"];
    };
  };
}

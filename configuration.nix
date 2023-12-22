{
  config,
  lib,
  pkgs,
  ...
}: {
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  imports = [ ./modules ];
  disabledModules = [];

  home.username = "nixos-livecd";
  home.homeDirectory = "/home/nixos-livecd";

  home.stateVersion = lib.mkDefault "${pkgs.lib.versions.majorMinor pkgs.lib.version}";
  programs.home-manager.enable = true;

  services.sshd.enable = true;
  services.nginx.enable = true;

  networking.firewall.allowedTCPPorts = [80];

  system.stateVersion = lib.version;

  users.users.root.password = "nixos";
  services.openssh.settings.PermitRootLogin = lib.mkForce "yes";
  services.getty.autologinUser = lib.mkDefault "root";
}
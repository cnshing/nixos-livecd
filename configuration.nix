{
  config,
  lib,
  pkgs,
  home-manager,
  ...
}: {
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  imports = [ 
    ./modules 
  ];

  disabledModules = [];

  user.name = "nixos-livecd";

  services.sshd.enable = true;
  services.nginx.enable = true;

  networking.useDHCP = mkDefault true;
  networking.firewall.allowedTCPPorts = [80];

  users.users.root.password = "nixos";
  users.users.nixos-livecd = {
    isNormalUser = true;
    group = "users";
    extraGroup = ["wheels"];
    password = "root";
  };
  services.openssh.settings.PermitRootLogin = lib.mkForce "yes";
  services.getty.autologinUser = lib.mkDefault "root";
}
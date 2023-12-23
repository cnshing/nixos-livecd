{
  config,
  lib,
  pkgs,
  home-manager,
  ...
}: {
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  user.name = "nixos-livecd";

  imports = [ 
    ./modules 
  ];

  disabledModules = [];


  services.sshd.enable = true;
  services.nginx.enable = true;

  networking.firewall.allowedTCPPorts = [80];

  users.users.root.password = "nixos";
  services.openssh.settings.PermitRootLogin = lib.mkForce "yes";
  services.getty.autologinUser = lib.mkDefault "root";
}
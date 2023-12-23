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


  # Workaround for network manager and wpa_supp conflicts
  # See https://github.com/NixOS/nixpkgs/blob/master/nixos/doc/manual/configuration/network-manager.section.md
  networking.networkmanager.unmanaged = [
    "*" "except:type:wwan" "except:type:gsm"
  ];
  networking.useDHCP = lib.mkDefault true;
  networking.firewall.allowedTCPPorts = [80];

  users.users.root.password = "nixos";
  users.users.nixos-livecd = {
    isNormalUser = true;
    group = "users";
    extraGroups = ["wheels"];
    password = "root";
  };
  services.openssh.settings.PermitRootLogin = lib.mkForce "yes";
  services.getty.autologinUser = lib.mkDefault "root";
}
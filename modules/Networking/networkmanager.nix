# Everything required to get network manager working

{ lib, ... }:

{ 
  networking = {
    networkmanager.enable = true;
    # Workaround for network manager and wpa_supp conflicts
    # See https://github.com/NixOS/nixpkgs/blob/master/nixos/doc/manual/configuration/network-manager.section.md
    networkmanager.unmanaged = [
      "*" "except:type:wwan" "except:type:gsm"
    ];
    useDHCP = lib.mkForce true;
    firewall.allowedTCPPorts = [80];
  };
}
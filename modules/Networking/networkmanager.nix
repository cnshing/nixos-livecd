# Everything required to get network manager working
{ 
  networking.networkmanager.enable = true;
  # Workaround for network manager and wpa_supp conflicts
  # See https://github.com/NixOS/nixpkgs/blob/master/nixos/doc/manual/configuration/network-manager.section.md
  networking.networkmanager.unmanaged = [
    "*" "except:type:wwan" "except:type:gsm"
  ];
  networking.useDHCP = lib.mkForce true;
  networking.firewall.allowedTCPPorts = [80];
}
{pkgs, ...}: {
  programs.dconf.enable = true;
  # Example modified from
  # https://github.com/Electrostasy/dots/blob/c62895040a8474bba8c4d48828665cfc1791c711/profiles/system/gnome/default.nix#L235-L241
  profiles.user.databases = [
    {
      settings = with lib.gvariant; {
        "org/gnome/shell".enabled-extensions = builtins.map (gnome: gnome.extensionUuid) (with pkgs; [
          gnomeExtensions.arcmenu
          gnomeExtensions.dash-to-panel
          gnomeExtensions.appindicator
          gnomeExtensions.desktop-icons-ng-ding
          gnomeExtensions.gsconnect
          gnomeExtensions.noannoyance-fork
          gnomeExtensions.awesome-tiles
        ]);
      };
    }
  ];
}

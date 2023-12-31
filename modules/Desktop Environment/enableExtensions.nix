{pkgs, ...}: {
  programs.dconf.enable = true;
  profiles.${config.user.name}.databases = [
    {
      settings = {
        "org/gnome/shell".enabled-extensions = builtins.map (gnome: gnome.extensionUuid) (with pkgs; [
          gnomeExtensions.arcmenu
          gnomeExtensions.dash-to-panel
          gnomeExtensions.appindicator
          gnomeExtensions.desktop-icons-ng-ding
          gnomeExtensions.gsconnect
          gnomeExtensions.noannoyance-fork
          gnomeExtensions.awesome-tiles
        ]) 
      };
    }
  ];
}

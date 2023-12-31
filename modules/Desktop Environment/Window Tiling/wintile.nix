{ pkgs, ... }:
{
    environment.systemPackages = with pkgs; [
        # TODO: Switch to wintile after it is avaliable for ver 45 in extensions.gnome.org 
        #gnomeExtensions.wintile-windows-10-window-tiling-for-gnome 
        gnomeExtensions.awesome-tiles
    ];
}

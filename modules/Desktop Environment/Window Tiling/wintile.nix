{ pkgs, ... }:
{
    environment.systemPackages = with pkgs; [ gnomeExtensions.wintile-windows-10-window-tiling-for-gnome ];
}

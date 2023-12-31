{ pkgs, ... }: 
{
  environment.systemPackages = with pkgs; [
    gnomeExtensions.arcmenu
    gnomeExtensions.dash-to-panel
    gnomeExtensions.appindicator
    gnomeExtensions.desktop-icons-ng-ding
  ];
}

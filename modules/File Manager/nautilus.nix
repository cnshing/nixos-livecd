{pkgs, ...}: 
{
  environment.systemPackages = with pkgs; [
    pkgs.nautilus-open-any-terminal # Allow Nautilus to open any terminal via right click
    gnome.nautilus
  ];
}

{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    nautilus-open-any-terminal # Allow Nautilus to open any terminal via right click
    gnome.nautilus
  ];
}

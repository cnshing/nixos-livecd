{
  # Polkit needs to be enabled for Sway with Home Manager
  # See https://nixos.wiki/wiki/Sway#Using_Home_Manager
  security.polkit.enable = true;

  home.extraOptions = {
    wayland.windowManager.sway = {
      enable = true;
    };

    services.swayidle.enable = true;
  };

  services.xserver = {
    enable = true;
    displayManager.defaultSession = "gnome";
    desktopManager.gnome.enable = true;
  };

  services.gnome = {
    core-utilities.enable = false;
    games.enable = false;
  };
}

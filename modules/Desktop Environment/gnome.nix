{
  # Polkit needs to be enabled for Sway with Home Manager
  # See https://nixos.wiki/wiki/Sway#Using_Home_Manager
  security.polkit.enable = true;

  wayland.windowManager.sway = {
    enable = true;
  };

  services.swayidle.enable = true;

  services.xserver = {
    enable = true;

    displayManager.lightdm = {
      enable = true;
      greeter = true;  
      autoLogin.enable = true;
      autoLogin.user = "nixos-livecd";
    };
    
    displayManager.defaultSession = "gnome";
    desktopManager.gnome.enable = true; 
  };
}
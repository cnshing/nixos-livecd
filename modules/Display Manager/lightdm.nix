{
  services.xserver.displayManager.lightdm = {
    enable = true;
    greeters.gtk.enable = true;
    autoLogin.enable = true;
    autoLogin.user = "nixos-livecd";
  };
}

{pkgs, ...}: 
{
  fonts.packages = with pkgs; [
    inter
    ( nerdfonts.override { fonts = ["Arimo"]; } ) # Zorin's default Sans font
    jetbrains-mono
  ];

  home.extraOptions = {
    dconf.settings = {
      "org/gnome/shell/extensions/user-theme" = {
        # TODO: Add support for Zorin themes
        #name = "ZorinGrey-Dark";
      };

      "org/gnome/desktop/interface" = {
        cursor-theme = "Adwaita";
        #icon-theme = "ZorinGrey-Dark";
        #gtk-theme = "ZorinGrey-Dark";
        font-name = "Inter 10";
        document-font-name = "Sans 10";
        monospace-font-name = "JetBrains Mono 10";
        titlebar-font = "Inter Bold 10";
        font-antialiasing = "rgba";
        font-hinting = "medium";
        text-scaling-factor = 1.0;
        clock-show-weekday = true;
        clock-show-date = true;
        clock-show-seconds = true;
        gtk-enable-primary-paste = true;
        gtk-key-theme = "Default";
        locate-pointer = false;
      };

      "org/gnome/desktop/background" = {
        picture-options = "zoom";
        picture-uri = "";
      };

      "org/gnome/desktop/input-sources" = {
        show-all-sources = false;
      };

      "org/gnome/mutter" = {
        overlay-key = "Super_L";
        attach-modal-dialogs = true;
        center-new-windows = false;
      };

      "org/gnome/desktop/calendar" = {
        show-weekdate = false;
      };

      "org/gnome/desktop/wm/preferences" = {
        titlebar-font = "Inter Bold 10";
        action-double-click-titlebar = "toggle-maximize";
        action-middle-click-titlebar = "none";
        action-right-click-titlebar = "menu";
        button-layout = "appmenu:minimize,maximize,close";
        resize-with-right-button = false;
        mouse-button-modifier = "<Super>";
        focus-mode = "click";
        auto-raise = false;
      };

      "org/gnome/desktop/peripherals/touchpad" = {
        disable-while-typing = true;
        click-method = "fingers";
      };

      "org/gnome/desktop/peripherals/mouse" = {
        accel-profile = "default";
      };

      "org/gnome/desktop/sound" = {
        theme-name = "freedesktop";
        allow-volume-above-100-percent = false;
      };
    };
  };
}

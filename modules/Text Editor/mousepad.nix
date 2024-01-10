{
  pkgs,
  lib,
  ...
}: {
  environment.systemPackages = with pkgs; [xfce.mousepad];

  /*
  programs.dconf.profiles.user.databases = [
    {
      settings = with lib.gvariant; {
        "org/xfce/mousepad/preferences/file" = {
          add-last-end-of-line = false;
          auto-reload = false;
          autosave-timer = mkUint32 30;
          default-encoding = "UTF-8";
          make-backup = false;
          monitor-changes = true;
          monitor-disabling-timer = mkUint32 500;
          session-restore = "after-a-crash";
        };

        "org/xfce/mousepad/preferences/view" = {
          auto-indent = false;
          color-scheme = "oblivion";
          font-name = "Monospace 10";
          highlight-current-line = true;
          indent-on-tab = true;
          indent-width = -1;
          insert-spaces = false;
          match-braces = false;
          right-margin-position = mkUint32 80;
          show-line-endings = true;
          show-line-marks = false;
          show-line-numbers = true;
          show-right-margin = false;
          show-whitespace = false;
          smart-backspace = false;
          smart-home-end = "disabled";
          tab-width = mkUint32 8;
          use-default-monospace-font = true;
          word-wrap = true;
        };

        "org/xfce/mousepad/preferences/view/show-whitespace" = {
          inside = true;
          leading = true;
          trailing = true;
        };

        "org/xfce/mousepad/preferences/window" = {
          always-show-tabs = false;
          client-side-decorations = false;
          cycle-tabs = false;
          default-tab-sizes = "2,3,4,8";
          expand-tabs = true;
          menubar-visible = true;
          menubar-visible-in-fullscreen = "auto";
          old-style-menu = true;
          opening-mode = "tab";
          path-in-title = true;
          recent-menu-items = mkUint32 10;
          remember-position = false;
          remember-size = true;
          remember-state = true;
          statusbar-visible = false;
          statusbar-visible-in-fullscreen = "auto";
          toolbar-icon-size = "small-toolbar";
          toolbar-style = "icons";
          toolbar-visible = false;
          toolbar-visible-in-fullscreen = "auto";
        };

        "org/xfce/mousepad/state/application" = {
          enabled-plugins = [];
          session = ["1;;+"];
        };

        "org/xfce/mousepad/state/search" = {
          direction = mkUint32 1;
          enable-regex = false;
          highlight-all = false;
          history-size = mkUint32 20;
          incremental = false;
          match-case = false;
          match-whole-word = false;
          replace-all = false;
          replace-all-location = mkUint32 1;
          replace-history = [];
          search-history = [];
          wrap-around = true;
        };

        "org/xfce/mousepad/state/window" = {
          fullscreen = false;
          height = mkUint32 634;
          left = mkUint32 0;
          maximized = false;
          top = mkUint32 0;
          width = mkUint32 1393;
        };
      };
    }
  ];
  */
}

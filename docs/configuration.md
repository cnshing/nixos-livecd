# Configuration

The following document describes all the high level configurations of the liveCD.

## AppImages

AppImages will replace packages not available in nixOS in the `$HOME/AppImages` directory.

Managing and integrating these AppImages into the desktop environment will be up to [AppImageLauncher](https://github.com/TheAssassin/AppImageLauncher) Lite, where it will be configured to look for `$HOME/AppImages`. The AppImageLauncher AppImage wil also be placed in the same directory.

## Audio Effects

Ideally, there should be an application that automatically applies an [AutoEQ](https://autoeq.app/) filter for whatever audio device you happen to listen on. Since there isn't any such application yet, [EasyEffects](https://github.com/wwmm/easyeffects) should be already installed so that the user can at least quickly import an impulse response.

## Battery Management

[TLP](https://github.com/linrunner/TLP) will be used to optimize battery with performance. Preferentially, any laptop devices should use full computing power when charging and switch to power-saving mode within `0%` - `40%` battery thresholds.

### NVIDIA Optimus

If possible, there should be a separate boot entry from the standard one that explicitly enables screen rendering from a dedicated GPU, allowing the user to choose which use-case is most appropriate for their battery and performance needs.

## Display Manager

[LighDM](https://github.com/canonical/lightdm) will be the display manager using the default GTK [theme](#theming).

## Desktop Environment

[GNOME](https://www.gnome.org/) will be our desktop environment with extensions to support the below functionalities:
 
### Phone Sync

With [GSConnect](https://extensions.gnome.org/extension/1319/gsconnect/), a GNOME [KDEConnect](https://kdeconnect.kde.org/) implementation, installed and automatically enabled, users can pair and sync communications with the liveCD.

### Shell

The desktop shell should traditionally include a [start menu](https://extensions.gnome.org/extension/3628/arcmenu/), an application [taskbar](https://extensions.gnome.org/extension/1160/dash-to-panel/), [system tray](https://extensions.gnome.org/extension/615/appindicator-support/) and [desktop icons](https://extensions.gnome.org/extension/2087/desktop-icons-ng-ding/) support.

### Theming

Enable the User Themes GNOME extension and [gnome-tweaks](https://gitlab.gnome.org/GNOME/gnome-tweaks). Then install the ZorinOS [desktop](https://github.com/ZorinOS/zorin-desktop-themes), [icon](https://github.com/ZorinOS/zorin-icon-themes), and special LibreOffice themes. Most of the liveCD look-and-feel should come from [ZorinOS](https://zorin.com/os/).

[comment - Update the desktop background picture-uri once a path of known background images are found]: #

### Thumbnailers

Content based files should always have a preview thumbnail. NixOS should automatically provide thumbnail functionality built into GNOME, but some [issues](https://github.com/NixOS/nixpkgs/issues/200714) may or may not preside.

### Tweaks

`gnome-shell-extension-prefs` should be installed to allow the user to enable or disable extensions during normal usage. Use the following gsetting configuration:

```bash
gsettings set org.gnome.shell.extensions.user-theme name 'ZorinGrey-Dark'
gsettings set org.gnome.desktop.interface cursor-theme 'Adwaita'
gsettings set org.gnome.desktop.interface icon-theme 'ZorinGrey-Dark'
gsettings set org.gnome.desktop.sound theme-name 'freedesktop'
gsettings set org.gnome.desktop.interface gtk-theme 'ZorinGrey-Dark'
gsettings set org.gnome.desktop.background picture-options 'zoom'
gsettings set org.gnome.desktop.background picture-uri ''
gsettings set org.gnome.desktop.interface font-name 'Inter 10'
gsettings set org.gnome.desktop.interface document-font-name 'Sans 10'
gsettings set org.gnome.desktop.interface monospace-font-name 'JetBrains Mono 10'
gsettings set org.gnome.desktop.wm.preferences titlebar-font 'Inter Bold 10'
gsettings set org.gnome.desktop.interface font-antialiasing 'rgba'
gsettings set org.gnome.desktop.interface font-hinting 'medium'
gsettings set org.gnome.desktop.interface text-scaling-factor 1.0
gsettings set org.gnome.desktop.input-sources show-all-sources false
gsettings set org.gnome.desktop.interface gtk-key-theme 'Default'
gsettings set org.gnome.mutter overlay-key 'Super_L'
gsettings set org.gnome.desktop.interface locate-pointer false
gsettings set org.gnome.desktop.interface gtk-enable-primary-paste true
gsettings set org.gnome.desktop.peripherals.touchpad disable-while-typing true
gsettings set org.gnome.desktop.peripherals.touchpad click-method 'fingers'
gsettings set org.gnome.desktop.peripherals.mouse accel-profile 'default'
gsettings set org.gnome.desktop.interface clock-show-weekday true
gsettings set org.gnome.desktop.interface clock-show-date true
gsettings set org.gnome.desktop.interface clock-show-seconds true
gsettings set org.gnome.desktop.calendar show-weekdate false
gsettings set org.gnome.desktop.wm.preferences action-double-click-titlebar 'toggle-maximize'
gsettings set org.gnome.desktop.wm.preferences action-middle-click-titlebar 'none'
gsettings set org.gnome.desktop.wm.preferences action-right-click-titlebar 'menu'
gsettings set org.gnome.desktop.wm.preferences button-layout 'appmenu:minimize,maximize,close'
gsettings set org.gnome.mutter attach-modal-dialogs true
gsettings set org.gnome.mutter center-new-windows false
gsettings set org.gnome.desktop.wm.preferences resize-with-right-button false
gsettings set org.gnome.desktop.wm.preferences mouse-button-modifier '<Super>'
gsettings set org.gnome.desktop.wm.preferences focus-mode 'click'
gsettings set org.gnome.desktop.wm.preferences auto-raise false
gsettings set org.gnome.desktop.sound allow-volume-above-100-percent false
```

For reference, here is each command with it's corresponding GUI Location:
| Command                                                                                          | Location                                                 |
|--------------------------------------------------------------------------------------------------|----------------------------------------------------------|
| `gsettings set org.gnome.shell.extensions.user-theme name 'ZorinGrey-Dark'`                      | Appearance -> Themes -> Shell                            |
| `gsettings set org.gnome.desktop.interface cursor-theme 'Adwaita'`                               | Appearance -> Themes -> Cursor                           |
| `gsettings set org.gnome.desktop.interface icon-theme 'ZorinGrey-Dark'`                          | Appearance -> Themes -> Icons                            |
| `gsettings set org.gnome.desktop.sound theme-name 'freedesktop'`                                 | Appearance -> Themes -> Alert Sound                      |
| `gsettings set org.gnome.desktop.interface gtk-theme 'ZorinGrey-Dark'`                           | Appearance -> Themes -> Legacy Applications              |
| `gsettings set org.gnome.desktop.background picture-options 'zoom'`                              | Appearance -> Background -> Adjustment                   |
| `gsettings set org.gnome.desktop.background picture-uri ''`                                      | Appearance -> Background -> Image                        |
| `gsettings set org.gnome.desktop.interface font-name 'Inter 10'`                                 | Fonts -> Interface Text                                  |
| `gsettings set org.gnome.desktop.interface document-font-name 'Sans 10'`                         | Fonts -> Document Text                                   |
| `gsettings set org.gnome.desktop.interface monospace-font-name 'JetBrains Mono 10'`              | Fonts -> Monospace Text                                  |
| `gsettings set org.gnome.desktop.wm.preferences titlebar-font 'Inter Bold 10'`                   | Fonts -> Legacy Window Titles                            |
| `gsettings set org.gnome.desktop.interface font-antialiasing 'rgba'`                             | Fonts -> Antialiasing                                    |
| `gsettings set org.gnome.desktop.interface font-hinting 'medium'`                                | Fonts -> Hinting                                         |
| `gsettings set org.gnome.desktop.interface text-scaling-factor 1.0`                              | Fonts -> Scaling Factor                                  |
| `gsettings set org.gnome.desktop.input-sources show-all-sources false`                           | Keyboard & Mouse -> Keyboard -> Show All Input Sources   |
| `gsettings set org.gnome.desktop.interface gtk-key-theme 'Default'`                              | Keyboard & Mouse -> Keyboard -> Emacs Input              |
| `gsettings set org.gnome.mutter overlay-key 'Super_L'`                                           | Keyboard & Mouse -> Keyboard -> Overview Shortcuts       |
| `gsettings set org.gnome.desktop.interface locate-pointer false`                                 | Keyboard & Mouse -> Mouse -> Pointer Location            |
| `gsettings set org.gnome.desktop.interface gtk-enable-primary-paste true`                        | Keyboard & Mouse -> Mouse -> Middle Click Paste          |
| `gsettings set org.gnome.desktop.peripherals.touchpad disable-while-typing true`                 | Keyboard & Mouse -> Touchpad -> Disable While Typing     |
| `gsettings set org.gnome.desktop.peripherals.touchpad click-method 'fingers'`                    | Keyboard & Mouse -> Mouse Click Emulation                |
| `gsettings set org.gnome.desktop.peripherals.mouse accel-profile 'default'`                      | Keyboard & Mouse -> Mouse -> Acceleration Profile        |
| `gsettings set org.gnome.desktop.interface clock-show-weekday true`                              | Top Bar -> Clock -> Weekday                              |
| `gsettings set org.gnome.desktop.interface clock-show-date true`                                 | Top Bar -> Clock -> Date                                 |
| `gsettings set org.gnome.desktop.interface clock-show-seconds true`                              | Top Bar -> Clock -> Seconds                              |
| `gsettings set org.gnome.desktop.calendar show-weekdate false`                                   | Top Bar -> Calendar -> Week Numbers                      |
| `gsettings set org.gnome.desktop.wm.preferences action-double-click-titlebar 'toggle-maximize'`  | Windows Titlebars -> Titlebar Actions -> Double-click    |
| `gsettings set org.gnome.desktop.wm.preferences action-middle-click-titlebar 'none'`             | Windows Titlebars -> Titlebar Actions -> Middle-click    |
| `gsettings set org.gnome.desktop.wm.preferences action-right-click-titlebar 'menu'`              | Windows Titlebars -> Titlebar Actions -> Secondary-Click |
| `gsettings set org.gnome.desktop.wm.preferences button-layout 'appmenu:minimize,maximize,close'` | Windows Titlebars -> Titlebar Buttons                    |
| `gsettings set org.gnome.mutter attach-modal-dialogs true`                                       | Windows -> Attach Modal Dialogs                          |
| `gsettings set org.gnome.mutter center-new-windows false`                                        | Windows -> Center New Windows                            |
| `gsettings set org.gnome.desktop.wm.preferences resize-with-right-button false`                  | Windows -> Resize with Secondary-Click                   |
| `gsettings set org.gnome.desktop.wm.preferences mouse-button-modifier '<Super>'`                 | Windows -> Windows Action Key                            |
| `gsettings set org.gnome.desktop.wm.preferences focus-mode 'click'`                              | Windows -> Windows Focus                                 |
| `gsettings set org.gnome.desktop.wm.preferences auto-raise false`                                | Windows -> Windows Focus -> Raise Windows When Focused   |
| `gsettings set org.gnome.desktop.sound allow-volume-above-100-percent false`                     | General -> Over-Amplification                            |



Additionally, the "Window is ready" popup whenever any application opens should be disabled. Extensions accomplishing this are usually initially developed and created only to be subsequently unmaintained with each new GNOME version. The current extension for GNOME 45 would be [NoAnnoyance](https://extensions.gnome.org/extension/6109/noannoyance-fork/).

[comment - Always update this section's current working extension for "Window is ready" for the liveCD's current version]: #

### Window Tiling

Applications should be able to be tiled to the top, bottom, left, and right halves of the screen identically to Window snap tiles via [WinTile](https://extensions.gnome.org/extension/1723/wintile-windows-10-window-tiling-for-gnome/).

## File Manager

There are some instances with GTK File Picker where it is hard coded such that only Gnome's [Nautilus](https://github.com/GNOME/nautilus) file manager can be opened, regardless of any other default file manager in the system. To remedy this there will be a primary file manager, [Thunar](https://gitlab.xfce.org/xfce/thunar), for daily use and a secondary file manager used for any situation where the primary file manager cannot be used. 

[comment - Make an explicit reference to the GNOME section in the future]: #

### Thunar

![Thunar Preview](images/thunar.png)
*What the Thunar File Manager should look like*

Create the following 'Open Terminal Here' and 'Open as Root' actions under `$XDG_CONFIG_HOME/.config/Thunar/uca.xml`'s `<actions></actions>` block:

```xml
<actions>
	<action>
		<icon>utilities-terminal</icon>
		<name>Open Terminal Here</name>
		<submenu/>
		<unique-id>1689224791084051-1</unique-id>
		<command>exo-open --working-directory %f --launch TerminalEmulator</command>
		<description>Example for a custom action</description>
		<range/>
		<patterns>*</patterns>
		<startup-notify/>
		<directories/>
	</action>
	<action>
		<icon>dialog-password</icon>
		<name>Open as Root</name>
		<submenu/>
		<unique-id>1689401683694822-1</unique-id>
		<command>pkexec thunar %f</command>
		<description/>
		<range>*</range>
		<patterns>*</patterns>
		<directories/>
	</action>
	<action>
		<icon/>
		<name/>
		<submenu/>
		<unique-id>1689402208795292-2</unique-id>
		<command/>
		<description/>
		<range>*</range>
		<patterns>*</patterns>
	</action>
...
</actions>
```

where the packages `exo-utils` and `pkexec` are required to implement the actions.

### Nautilus

No additional configurations are necessary. 

## Networking

[NetworkManager](https://networkmanager.dev/) is sufficient for Internet with ease of use and GNOME integration. 

## Mail Client

Each mail service should be accompanied by corresponding web-app based client. In practice, these web-app implementations are often based off Electron.

## Remote Desktop

[Parsec](https://parsec.app) and [Rustdesk](https://rustdesk.com/) should be in the liveCD.

### Parsec

The app should "just work", with no artificial barrier of access other than standard authentication.

### Rustdesk

[Rustdesk](https://rustdesk.com/) should be automatically running on boot with a custom static password configuration and LAN direct IP access enabled. The configuration file itself should be located at the root directory of the liveCD medium. If this configuration is not available however, Rustdesk should then revert to it's default settings. 

> [!WARNING]\
> :warning: This process of automatically exposing unattended access to a network is essentially a backdoor. Do not attempt to set a known and public Rustdesk password!


## Terminal

[Sakura](https://github.com/dabisu/sakura) will used with `scrollbar=true` enabled in `sakura.conf`. 

## Text Editor

For basic text editing, [mousepad](https://github.com/xfce-mirror/mousepad) can do the job. The configuration should match the following `gsettings list-recursively org.xfce.mousepad` preferences:

```bash
org.xfce.mousepad.preferences.file add-last-end-of-line false
org.xfce.mousepad.preferences.file auto-reload false
org.xfce.mousepad.preferences.file autosave-timer uint32 30
org.xfce.mousepad.preferences.file default-encoding 'UTF-8'
org.xfce.mousepad.preferences.file make-backup false
org.xfce.mousepad.preferences.file monitor-changes true
org.xfce.mousepad.preferences.file monitor-disabling-timer uint32 500
org.xfce.mousepad.preferences.file session-restore 'after-a-crash'
org.xfce.mousepad.preferences.view auto-indent false
org.xfce.mousepad.preferences.view color-scheme 'oblivion'
org.xfce.mousepad.preferences.view font-name 'Monospace 10'
org.xfce.mousepad.preferences.view highlight-current-line true
org.xfce.mousepad.preferences.view indent-on-tab true
org.xfce.mousepad.preferences.view indent-width -1
org.xfce.mousepad.preferences.view insert-spaces false
org.xfce.mousepad.preferences.view match-braces false
org.xfce.mousepad.preferences.view right-margin-position uint32 80
org.xfce.mousepad.preferences.view show-line-endings true
org.xfce.mousepad.preferences.view show-line-marks false
org.xfce.mousepad.preferences.view show-line-numbers true
org.xfce.mousepad.preferences.view show-right-margin false
org.xfce.mousepad.preferences.view show-whitespace false
org.xfce.mousepad.preferences.view smart-backspace false
org.xfce.mousepad.preferences.view smart-home-end 'disabled'
org.xfce.mousepad.preferences.view tab-width uint32 8
org.xfce.mousepad.preferences.view use-default-monospace-font true
org.xfce.mousepad.preferences.view word-wrap true
org.xfce.mousepad.preferences.view.show-whitespace inside true
org.xfce.mousepad.preferences.view.show-whitespace leading true
org.xfce.mousepad.preferences.view.show-whitespace trailing true
org.xfce.mousepad.preferences.window always-show-tabs false
org.xfce.mousepad.preferences.window client-side-decorations false
org.xfce.mousepad.preferences.window cycle-tabs false
org.xfce.mousepad.preferences.window default-tab-sizes '2,3,4,8'
org.xfce.mousepad.preferences.window expand-tabs true
org.xfce.mousepad.preferences.window menubar-visible true
org.xfce.mousepad.preferences.window menubar-visible-in-fullscreen 'auto'
org.xfce.mousepad.preferences.window old-style-menu true
org.xfce.mousepad.preferences.window opening-mode 'tab'
org.xfce.mousepad.preferences.window path-in-title true
org.xfce.mousepad.preferences.window recent-menu-items uint32 10
org.xfce.mousepad.preferences.window remember-position false
org.xfce.mousepad.preferences.window remember-size true
org.xfce.mousepad.preferences.window remember-state true
org.xfce.mousepad.preferences.window statusbar-visible false
org.xfce.mousepad.preferences.window statusbar-visible-in-fullscreen 'auto'
org.xfce.mousepad.preferences.window toolbar-icon-size 'small-toolbar'
org.xfce.mousepad.preferences.window toolbar-style 'icons'
org.xfce.mousepad.preferences.window toolbar-visible false
org.xfce.mousepad.preferences.window toolbar-visible-in-fullscreen 'auto'
org.xfce.mousepad.state.application enabled-plugins @as []
org.xfce.mousepad.state.application session ['1;;+']
org.xfce.mousepad.state.search direction uint32 1
org.xfce.mousepad.state.search enable-regex false
org.xfce.mousepad.state.search highlight-all false
org.xfce.mousepad.state.search history-size uint32 20
org.xfce.mousepad.state.search incremental false
org.xfce.mousepad.state.search match-case false
org.xfce.mousepad.state.search match-whole-word false
org.xfce.mousepad.state.search replace-all false
org.xfce.mousepad.state.search replace-all-location uint32 1
org.xfce.mousepad.state.search replace-history @as []
org.xfce.mousepad.state.search search-history []
org.xfce.mousepad.state.search wrap-around true
org.xfce.mousepad.state.window fullscreen false
org.xfce.mousepad.state.window height uint32 634
org.xfce.mousepad.state.window left uint32 0
org.xfce.mousepad.state.window maximized false
org.xfce.mousepad.state.window top uint32 0
org.xfce.mousepad.state.window width uint32 1393
```

A simple solution to set these preferences is by running `gsettings set` for each preference line.

For note taking and general document processing work, [LibreOffice](https://www.libreoffice.org/) should be setup with ZorinOS's [special](#theming) icons.

## Video Player

[mpv](https://mpv.io/) shall be used as the default video player.

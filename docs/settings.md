# Settings

The following document contains all the tangible application settings, or some form of explicit instructions to replicate the desired [configuration](configuration.md) of the liveCD.

## Desktop Environment

### Tweaks

The gsetting configuration for `gnome-shell-extensions-prefs` is as follows:

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

## File Manager

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

## Terminal

Enabling scrollbar in the [Sakura](https://github.com/dabisu/sakura) terminal emulator will require the line`scrollbar=true` in `sakura.conf`. 

## Text Editor

The configuration should match the following `gsettings list-recursively org.xfce.mousepad` preferences:

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

# Configuration

The following document describes all the relevant configuration, preferences, and look-and-feel of the LiveCD.

## AppImages

AppImages will replace packages not available in nixOS in the `$HOME/AppImages` directory.

Managing and integrating these AppImages into the desktop environment will be up to [AppImageLauncher](https://github.com/TheAssassin/AppImageLauncher) Lite, where it will be configured to look for `$HOME/AppImages`. The AppImageLauncher AppImage wil also be placed in the same directory.

It should be trivial to make a nixOS equivalent package of any AppImages via [appimageTools](https://nixos.org/manual/nixpkgs/stable/#sec-pkgs-appimageTools). The only problem is that the cost of maintaining each AppImage grows faster than the benefit of integrating each one, resulting in a large increase of complexity. Our AppImageLauncher method on the other hand only requires you to place the AppImage under the directory and periodically open the tool to integrate the AppImages.

## Battery Management

[TLP](https://github.com/linrunner/TLP) will be used to optimize battery with performance. Preferentially, any laptop devices should use full computing power when charging and switch to power-saving mode within `0%` - `40%` battery thresholds.

### NVIDIA Optimus

If possible, there should be a separate boot entry from the standard one that explicitly enables screen rendering from a dedicated GPU, allowing the user to choose which use-case is most appropriate for their battery and performance needs.

## Display Manager

In my opinion the only  real choices are [LightDM](https://github.com/canonical/lightdm) because of their modern support and theme customizability. While [GDM](https://github.com/GNOME/gdm) also has these characteristics, I anecdotally never actually had to manually login with a DM for more than twice in a month, which makes a more resource draining GDM costly. Plus, theming tools like [Nody Greeter](https://github.com/JezerM/nody-greeter) allow LightDM to have a nice UI experience even without GNOME integrations.

## File Manager

There are some instances with GTK File Picker where it is hard coded such that only Gnome's [Nautilus](https://github.com/GNOME/nautilus) file manager can be opened, regardless of any other default file manager in the system. To remedy this there will be a primary file manager, [Thunar](https://gitlab.xfce.org/xfce/thunar), for daily use and a secondary file manager used for any situation where the primary file manager cannot be used. 

With GNOME 45's recent UX [changes](https://9to5linux.com/gnome-45s-nautilus-file-manager-gets-a-modern-full-height-sidebar-layout) to Nautilus, I am seriously considering switching to it once GNOME 45 hits stable release.

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

## Terminal

[Sakura](https://github.com/dabisu/sakura) will used with `scrollbar=true` enabled in `sakura.conf`. This terminal emulator feels the cleanest with keeping all the most necessary features without intruding on my workflow. Specifically, having the special features hidden in just one right click away feels intuitive as someone might need them quickly from time to time but for the most part just wants to use the console. 

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

For note taking and general document processing work, [LibreOffice](https://www.libreoffice.org/) should be setup with ZorinOS's special icons.

[comment - Make an explicit reference to the ZorinOS Theming section in the future]: #

## Video Player

[mpv](https://mpv.io/) is used because it supposedly less bloated than VLC, is popular enough for wide support, and is what I am familiar with.

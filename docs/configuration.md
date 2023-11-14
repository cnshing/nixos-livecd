# Configuration

The following document describes all the relevant configuration, preferences, and look-and-feel of the LiveCD.

## AppImages

AppImages will replace packages not available in nixOS in the `$HOME/AppImages` directory.

Managing and integrating these AppImages into the desktop environment will be up to [AppImageLauncher](https://github.com/TheAssassin/AppImageLauncher) Lite, where it will be configured to look for `$HOME/AppImages`. The AppImageLauncher AppImage wil also be placed in the same directory.

It should be trivial to make a nixOS equivalent package of any AppImages via [appimageTools](https://nixos.org/manual/nixpkgs/stable/#sec-pkgs-appimageTools). The only problem is that the cost of maintaining each AppImage grows faster than the benefit of integrating each one, resulting in a large increase of complexity. Our AppImageLauncher method on the other hand only requires you to place the AppImage under the directory and periodically open the tool to integrate the AppImages.

## Terminal

[Sakura](https://github.com/dabisu/sakura) will used with `scrollbar=true` enabled in `sakura.conf`. This terminal emulator feels the cleanest with keeping all the most necessary features without intruding on my workflow. Specifically, having the special features hidden in just one right click away feels intuitive as someone might need them quickly from time to time but for the most part just wants to use the console. 


{
  programs.chromium = {
    extensions = [
      "ghmbeldphafepmbegfdlkpapadhbakde"
    ];
  };
  programs.firefox = {
    policies = {
      ExtensionSettings = {
        "78272b6fa58f4a1abaac99321d503a20@proton.me" = {
          install_url = "https://addons.mozilla.org/firefox/downloads/latest/proton-pass/latest.xpi";
          installation_mode = "normal_installed";
        };
      };
    };
  };
}

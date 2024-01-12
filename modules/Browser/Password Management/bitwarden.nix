{
  programs.chromium = {
    extensions = [
      "nngceckbapebfimnlniiiahkandclblb"
    ];
  };
  programs.firefox = {
    policies = {
      ExtensionSettings = {
        "{446900e4-71c2-419f-a6a7-df9c091e268b}" = {
          install_url = "https://addons.mozilla.org/firefox/downloads/latest/bitwarden-password-manager/latest.xpi";
          installation_mode = "normal_installed";
        };
      };
    };
  };
}

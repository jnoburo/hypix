{
  pkgs,
  inputs,
  ...
}: {
  programs.firefox = {
    enable = true;

    profiles.noburo = {
      extensions = with inputs.firefox-addons.packages.${pkgs.system}; [
        ublock-origin
        bitwarden
      ];
    };
  };
}

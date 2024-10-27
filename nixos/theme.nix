{pkgs, ...}: {
  stylix = {
    enable = true;

    polarity = "dark";
    image = ../assets/outing.jpg;

    base16Scheme = "${pkgs.base16-schemes}/share/themes/rose-pine.yaml";

    cursor = {
      package = pkgs.bibata-cursors;
      name = "Bibata-Original-Classic";
      size = 20;
    };

    fonts.monospace = {
      package = pkgs.nerdfonts.override {fonts = ["AurulentSansMono"];};
      name = "AurulentSansM Nerd Font Mono";
    };
  };
}

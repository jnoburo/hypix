{
  pkgs,
  config,
  lib,
  inputs,
  ...
}: let
  spicePkgs = inputs.spicetify-nix.legacyPackages.${pkgs.system};
  accent = "${config.lib.stylix.colors.base0D}";
in {
  imports = [inputs.spicetify-nix.homeManagerModules.default];

  nixpkgs.config.allowUnfreePredicate = pkg:
    builtins.elem (lib.getName pkg) ["spotify"];

  programs.spicetify.enable = true;
}

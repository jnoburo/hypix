{lib, ...}: let
  inherit (lib) mkOption types;
in {
  options.prefs = {
    terminal = mkOption {
      type = types.str;
      default = "alacritty";
    };
    editor = mkOption {
      type = types.str;
      default = "nvim";
    };
    browser = mkOption {
      type = types.str;
      default = "firefox";
    };
    menu = mkOption {
      type = types.str;
      default = "fuzzel";
    };
  };
}

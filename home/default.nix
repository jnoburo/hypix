{
  config,
  inputs,
  pkgs,
  ...
}: {
  imports = [
    inputs.impermanence.nixosModules.home-manager.impermanence
    ./desktop
    ./programs
    ./prefs.nix
  ];

  home = {
    username = "noburo";
    homeDirectory = "/home/${config.home.username}";
    stateVersion = "24.05";

    persistence."/persist/home/${config.home.username}" = {
      directories = [
        "Downloads"
        "Documents"
        "Programming"
        "Media"

        # Firefox State
        ".mozilla"
        ".cache/mozilla"

				# App State
				".config/spotify"
      ];

      files = [
				".config/gh/hosts.yml"
				".config/sops/age/keys.txt"
				".config/vesktop/settings.json"
			];
      allowOther = true;
    };

    sessionVariables = {
      EDITOR = config.prefs.editor;
      TERM = config.prefs.terminal;
    };

    packages = [
      (inputs.nixvim-config.packages.${pkgs.system}.default)
      (inputs.hyprpanel.packages.${pkgs.system}.default)
      pkgs.ripgrep
    ];
  };

  gtk = {
    enable = true;

    iconTheme.name = "Adwaita";
    iconTheme.package = pkgs.adwaita-icon-theme;
  };

  prefs = {
    terminal = "alacritty";
    editor = "nvim";
    browser = "firefox";
    menu = "wofi -S drun";
  };
}

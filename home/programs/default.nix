{...}: {
  imports = [
    ./nushell
    ./alacritty
    ./firefox
    ./git
  ];

  programs = {
    btop.enable = true;
    wofi.enable = true;
  };
}

{...}: {
  imports = [
    ./nushell
    ./alacritty
    ./firefox
    ./git
    ./spotify
  	./discord
	];

  programs = {
    btop.enable = true;
    wofi.enable = true;
  };
}

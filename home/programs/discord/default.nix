{pkgs, ...}: {
  home.packages = with pkgs; [
    vesktop
  ];

	
	home.file.".cconfig/vesktop/settings/settings.json".source = ./settings.json;
}

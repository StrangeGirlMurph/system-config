{ config, pkgs, ... }:

{
  # SDDM
  services.displayManager.sddm = {
    enable = true;
    theme = "${(pkgs.fetchFromGitHub {
      owner = "MarianArlt";
      repo = "kde-plasma-chili";
      rev = "a371123959676f608f01421398f7400a2f01ae06";
      sha256 = "17pkxpk4lfgm14yfwg6rw6zrkdpxilzv90s48s2hsicgl3vmyr3x";
    })}";
    autoNumlock = true;
  };
}

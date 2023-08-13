{ config, pkgs, ... }:

{
  programs.git = {
    enable = true;
    userName = "Murphy";
    userEmail = "git@murphy-in.space";
  };

  programs.helix = {
    defaultEditor = true;
    settings = {
      theme = "base16_transparent";
      editor.cursor-shape =
        {
          insert = "bar";
          normal = "underline";
          select = "block";
        };

      keys = {
        normal = {
          C-s = ":w";
          j = "move_char_left";
          k = "move_line_down";
          l = "move_line_up";
          "ö" = "move_char_right";
        };
        select = {
          j = "extend_char_left";
          k = "extend_line_down";
          l = "extend_line_up";
          "ö" = "extend_char_right";
        };
      };
    };
  };
}

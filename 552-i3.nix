{ config, pkgs, ... }:
{


  services.xserver.desktopManager.default = "none+i3";
  services.xserver.desktopManager.xterm.enable = false;

  services.xserver.windowManager.i3.enable = true;
  environment.systemPackages = with pkgs ; [ 
    dmenu 
    i3status 
    rofi
    rofi-top
    rofi-calc
    rofi-systemd
    rofi-emoji
    keepmenu
  ];

  xsession = {
      enable = true;
      windowManager = {
        i3 = {
          enable = true;
          config = {
            keybindings = {
              # i3 management
              "Mod4+Shift+x" = "reload";
              "Mod4+Shift+o" = "restart";
              "Mod4+Shift+p" = "exec i3-msg exit";

              # Multimedia keys
              "XF86AudioRaiseVolume" =
                "exec --no-startup-id pactl set-sink-volume @DEFAULT_SINK@ +10% && $refresh_i3status";
              "XF86AudioLowerVolume" =
                "exec --no-startup-id pactl set-sink-volume @DEFAULT_SINK@ -10% && $refresh_i3status";
              "XF86AudioMute" =
                "exec --no-startup-id pactl set-sink-mute @DEFAULT_SINK@ toggle && $refresh_i3status";
              "XF86AudioMicMute" =
                "exec --no-startup-id pactl set-source-mute @DEFAULT_SOURCE@ toggle && $refresh_i3status";

              # Programs
              "Mod4+Return" = "exec xterm";
              "Mod4+w" = "exec firefox";
              "Mod4+f" = "exec pcmanfm";
              "Mod4+i" = "exec --no-startup-id rofi -show";

              # Window management
              "Mod4+Shift+b" = "kill";
              "Mod4+Left" = "focus left";
              "Mod4+Down" = "focus down";
              "Mod4+Up" = "focus up";
              "Mod4+Right" = "focus right";
              "Mod4+Shift+Left" = "move left";
              "Mod4+Shift+Down" = "move down";
              "Mod4+Shift+Up" = "move up";
              "Mod4+Shift+Right" = "move right";
              "Mod4+h" = "split h";
              "Mod4+v" = "split v";
              "Mod4+e" = "fullscreen toggle";
              "Mod4+u" = "layout stacking";
              "Mod4+y" = "layout tabbed";
              "Mod4+p" = "layout toggle split";

              # Workspace management
              "Mod4+0" = "workspace number 10";
              "Mod4+1" = "workspace number 1";
              "Mod4+2" = "workspace number 2";
              "Mod4+3" = "workspace number 3";
              "Mod4+4" = "workspace number 4";
              "Mod4+5" = "workspace number 5";
              "Mod4+6" = "workspace number 6";
              "Mod4+7" = "workspace number 7";
              "Mod4+8" = "workspace number 8";
              "Mod4+9" = "workspace number 9";
              "Mod4+Shift+0" = "move container to workspace number 10";
              "Mod4+Shift+1" = "move container to workspace number 1";
              "Mod4+Shift+2" = "move container to workspace number 2";
              "Mod4+Shift+3" = "move container to workspace number 3";
              "Mod4+Shift+4" = "move container to workspace number 4";
              "Mod4+Shift+5" = "move container to workspace number 5";
              "Mod4+Shift+6" = "move container to workspace number 6";
              "Mod4+Shift+7" = "move container to workspace number 7";
              "Mod4+Shift+8" = "move container to workspace number 8";
              "Mod4+Shift+9" = "move container to workspace number 9";
            };
          };
        };
      };
  };
 
}


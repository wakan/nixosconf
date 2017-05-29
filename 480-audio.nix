{ config, pkgs, pkgs_i686, ... }:

let pulse = pkgs.pulseaudioFull;
in {
  boot = {
    kernelModules = [ "snd-seq" "snd-rawmidi" ];
  };

  hardware.pulseaudio = {
    enable = true;
    support32Bit = true;
    package = pulse;
    configFile = pkgs.writeText "default.pa" ''
        load-module module-udev-detect
        load-module module-jackdbus-detect channels=2
        load-module module-bluetooth-policy
        load-module module-bluetooth-discover
        load-module module-esound-protocol-unix
        load-module module-native-protocol-unix
        load-module module-always-sink
        load-module module-console-kit
        load-module module-systemd-login
        load-module module-intended-roles
        load-module module-position-event-sounds
        load-module module-filter-heuristics
        load-module module-filter-apply
        load-module module-native-protocol-tcp auth-ip-acl=127.0.0.1
      '';
  };

  security.pam.loginLimits = [
    { domain = "@audio"; item = "memlock"; type = "-"; value = "unlimited"; }
    { domain = "@audio"; item = "rtprio";  type = "-"; value = "99"; }
    { domain = "@audio"; item = "nofile";  type = "-"; value = "99999"; }
  ];

  security.rtkit.enable = true;

  services.mpd = {
    enable = true;
    user = "guest";
    group = "users";
    musicDirectory = "/home/guest/Music";
    dataDir = "/home/guest/.mpd";
    extraConfig = ''
        audio_output {
          type    "pulse"
          name    "Local MPD"
          server  "127.0.0.1"
        }
      '';
  };

#  systemd.services = {
#    switch-to-stereo-for-bluetooth-exit = {
#      description = "Move all sink-inputs to stereo sink before suspend";
#      environment = {
#        DISPLAY = ":${toString config.services.xserver.display}";
#        PULSE_RUNTIME_PATH = "/run/user/1000/pulse";
#      };
#      serviceConfig = {
#        Type = "oneshot";
#        User = "anders";
#        ExecStart = pkgs.writeScript "switch-to-stereo-for-bluetooth-exit" ''
#            #!${pkgs.bash}/bin/bash --login
#            . ${config.system.build.setEnvironment}
#            switch-to-stereo-no-stop-jack
#          '';
#      };
#      wantedBy = [ "sleep.target" "suspend.target" ];
#      before = [ "sleep.target" "suspend.target" ];
#    };
#  };

  environment.etc = [
    { target = "jackdrc";
      text = "${pkgs.jack2Full}/bin/jackdbus -dfirewire -r48000 -p256 -n2 -D";
    }
  ];

  environment.systemPackages = with pkgs; [
    qsynth
    jack2Full
    qjackctl
    vmpk
    a2jmidid
    ardour
    hydrogen
    patchage
  ];
}

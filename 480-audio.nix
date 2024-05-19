{ config, pkgs, pkgs_i686, ... }:

{
  sound.enable = true;
  hardware.pulseaudio.enable = false;
  #hardware.pulseaudio.support32Bit = true;
  nixpkgs.config.pulseaudio = true;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };
}

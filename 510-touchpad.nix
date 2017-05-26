
{ config, pkgs, ... }:
{
      services.xserver.synaptics = {
        enable = true;

        # http://who-t.blogspot.fr/2010/11/how-to-ignore-configuration-errors.html
        dev = "/dev/input/event*";
        twoFingerScroll = true;
        accelFactor = "0.001";
        buttonsMap = [ 1 3 2 ];
};

hardware = {
    trackpoint = {
      enable = true;
      emulateWheel = true;
      speed = 180;
      sensitivity = 200;
};
};

}

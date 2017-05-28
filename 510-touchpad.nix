
{ config, pkgs, ... }:
{
      services.xserver.synaptics = {
        enable = true;
        twoFingerScroll = true;
        maxSpeed = "1.0";
	minSpeed = "0.5";
	accelFactor = "0.25";
};

}

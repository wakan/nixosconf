{ config, pkgs, ... }:
{
 boot.loader.grub.extraEntries = ''
	menuentry "Windows" {
		  chainloader (hd0,1)+1
	}
  '';
}

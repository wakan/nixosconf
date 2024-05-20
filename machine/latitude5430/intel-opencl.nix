{ pkgs, ... } :
{
    hardware.opengl.extraPackages = with pkgs ; [
      intel-compute-runtime
    ];
}   
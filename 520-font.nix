
{ pkgs, ... }:
{

fonts = {
fontDir.enable = true;
packages = with pkgs; [
carlito
corefonts # Microsoft free fonts
inconsolata # monospaced
ubuntu_font_family
dejavu_fonts
ipafont
kochi-substitute
ttf_bitstream_vera
font-awesome
monocraft
ucs-fonts
libertine
proggyfonts
terminus_font
anonymousPro
fira
fira-code
fira-mono
];
fontconfig.defaultFonts = {
    monospace = [
      "terminus"
      "DejaVu Sans Mono"
      "IPAGothic"
    ];
    sansSerif = [
      "terminus"
      "DejaVu Sans"
      "IPAPGothic"
    ];
    serif = [
      "terminus"
      "DejaVu Serif"
      "IPAPMincho"
    ];
  };

};
}



{ pkgs, ... }:
{

fonts = {
fontDir.enable = true;
enableGhostscriptFonts = true;
packages = with pkgs; [
corefonts # Microsoft free fonts
inconsolata # monospaced
ubuntu_font_family
dejavu_fonts
ucs-fonts
libertine
proggyfonts
terminus_font
anonymousPro
fira
fira-code
fira-mono
];
};
}


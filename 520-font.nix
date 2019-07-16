
{ pkgs, ... }:
{

fonts = {
enableFontDir = true;
enableGhostscriptFonts = true;
fonts = with pkgs; [
corefonts # Microsoft free fonts
inconsolata # monospaced
ubuntu_font_family
dejavu_fonts
ucs-fonts
libertine
proggyfonts
terminus_font
anonymousPro
font-awesome-ttf
fira
fira-code
fira-mono
];
};
}


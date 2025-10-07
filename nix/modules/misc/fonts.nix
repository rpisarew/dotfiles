{ pkgs, ... }:
{
  fonts = {
    enableDefaultPackages = true;
    packages = with pkgs; [
      nerd-fonts.fira-mono
      nerd-fonts.fira-code
      inter
      jetbrains-mono
      noto-fonts
      noto-fonts-cjk-sans
      noto-fonts-emoji
      liberation_ttf
      dejavu_fonts
      roboto
    ];
    fontconfig = {
      enable = true;
      antialias = true;
      subpixel = {
        rgba = "rgb"; # valid: "rgb" "bgr" "vrgb" "vbgr" "none"
        lcdfilter = "default"; # valid: "none" "default" "light" "legacy"
      };
      hinting = {
        style = "slight";
      };
      defaultFonts = {
        serif = [ "Noto Serif" "DejaVu Serif" ];
        sansSerif = [ "Inter" "Noto Sans" "DejaVu Sans" ];
        monospace = [ "JetBrains Mono" "Fira Code" "DejaVu Sans Mono" ];
        emoji = [ "Noto Color Emoji" ];
      };
    };
  };
}

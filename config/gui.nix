{ config, pkgs, ... }:

{
environment.systemPackages = with pkgs; [
  qutebrowser
  thunderbird
  alacritty
  gparted
  xfce.thunar
  ffmpeg
  logseq
  jetbrains.idea-ultimate
  vscodium # consider vscodium-fhs
  texlive.combined.scheme-medium
  telegram-desktop
];
  programs.firefox = {
    enable = true; # TODO use home-manager
    policies = {
      DisablePocket = true;
      ExtensionSettings = {};
    };
    preferencesStatus = "locked";
    preferences = {};
  };
}

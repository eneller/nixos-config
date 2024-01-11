{ config, pkgs, ... }:
{
imports = [
  ./xorg.nix
];
services.xserver.windowManager.i3.enable = true;

environment.systemPackages = with pkgs; [
  # might use picom as a compositor
  lightdm-slick-greeter
  rofi
  i3status
  i3lock
  xfce.xfce4-power-manager
  networkmanager
  networkmanagerapplet
  networkmanager-openvpn
  networkmanager-openconnect
  libnotify
  dunst
];
}

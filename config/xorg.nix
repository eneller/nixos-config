{ config, pkgs, ... }:
{
# Enable the X11 windowing system.
services.xserver = {
  enable = true;
  displayManager.lightdm.enable = true;
  xkbVariant = "";
  autoRepeatDelay = 200;
  autoRepeatInterval = 35;
};
}

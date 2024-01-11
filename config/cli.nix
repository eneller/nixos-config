{ config, pkgs, ... }:
{
# List packages installed in system profile. To search, run:
# $ nix search wget
environment.systemPackages = with pkgs; [
  nixos-option
  vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
  less
  wget
  gitFull
  zsh
  zsh-powerlevel10k # TODO set up zsh to replace bash
  tmux
  eza
  ripgrep
  bat
  gnused
  gawk
  file
  htop
  inxi
  openssl
  ffmpeg
  imagemagick_light
  rclone
  python3
  ansible
];

programs.neovim = {
  enable = true;
  defaultEditor = true;
};
}

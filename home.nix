{ pkgs, ... }:

{


  # You need to change these to match your username and home directory
  # path:
  home.username = "tofu";
  home.homeDirectory = "/home/tofu";


  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "20.09";

  # Since we do not install home-manager, you need to let home-manager
  # manage your shell, otherwise it will not be able to add its hooks
  # to your profile.
  programs.bash = {
    enable = true;
  };

  home.packages = [
    # Desktop Environment
    pkgs.i3
    pkgs.picom
    pkgs.rofi
    pkgs.polybar
    pkgs.nautilus

    # Browsers
    pkgs.google-chrome
    pkgs.qutebrowser

    # Terminal and Developer
    pkgs.git
    pkgs.lazygit
    pkgs.wezterm
    pkgs.zoxide
    pkgs.tmux
    pkgs.vim
    pkgs.neovim
    pkgs.stow
  ];

}

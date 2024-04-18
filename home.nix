{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "gege";
  home.homeDirectory = "/home/gege";

  # This value determines the Home Manager release that your configuration is
  # compatible with. This helps avoid breakage when a new Home Manager release
  # introduces backwards incompatible changes.
  #
  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  home.stateVersion = "23.11"; # Please read the comment before changing.

  # The home.packages option allows you to install Nix packages into your
  # environment.
  home.packages = [
    # # Adds the 'hello' command to your environment. It prints a friendly
    # # "Hello, world!" when run.
    # pkgs.hello
      pkgs.htop
      pkgs.neofetch
      pkgs.git
      pkgs.gh
    # pkgs.libgcc
      pkgs.gcc
    # pkgs.libgccjit
      pkgs.libllvm
     # pkgs.clang_18
      pkgs.cmake
      pkgs.gnumake
      pkgs.dotnet-sdk_8
      pkgs.mono
      pkgs.python3
      #pkgs.pyenv
      pkgs.rustup
      pkgs.go
      pkgs.temurin-bin
      #pkgs.graalvm-ce
      pkgs.nodejs_21
      pkgs.eza
      pkgs.starship
      pkgs.zoxide
      pkgs.lazygit
      pkgs.swww
      pkgs.vim
      pkgs.fish
      pkgs.zsh
      pkgs.kitty
      pkgs.warp-terminal
      pkgs.wezterm
      pkgs.tmux
      pkgs.obsidian
      pkgs.blender
      pkgs.unityhub
      pkgs.obs-studio
      pkgs.discord
      pkgs.shotcut
      pkgs.olive-editor
      pkgs.audacity
      pkgs.komikku
      pkgs.popcorntime
      pkgs.davinci-resolve
      pkgs.vscode
      pkgs.atuin
      pkgs.notepadqq
      pkgs.neovim
      pkgs.yazi
      pkgs.nerdfonts
      pkgs.gimp
      pkgs.inkscape
      pkgs.krita
      pkgs.reaper
      pkgs.plugdata
    # # It is sometimes useful to fine-tune packages, for example, by applying
    # # overrides. You can do that directly here, just don't forget the
    # # parentheses. Maybe you want to install Nerd Fonts with a limited number of
    # # fonts?
    # (pkgs.nerdfonts.override { fonts = [ "FantasqueSansMono" ]; })

    # # You can also create simple shell scripts directly inside your
    # # configuration. For example, this adds a command 'my-hello' to your
    # # environment:
    # (pkgs.writeShellScriptBin "my-hello" ''
    #   echo "Hello, ${config.home.username}!"
    # '')
  ];

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
  };

  # Home Manager can also manage your environment variables through
  # 'home.sessionVariables'. If you don't want to manage your shell through Home
  # Manager then you have to manually source 'hm-session-vars.sh' located at
  # either
  #
  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  ~/.local/state/nix/profiles/profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  /etc/profiles/per-user/gege/etc/profile.d/hm-session-vars.sh
  #
  home.sessionVariables = {
    # EDITOR = "emacs";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  programs.emacs = {
    enable = true;
    extraPackages = epkgs: [
      epkgs.nix-mode
      epkgs.magit
    ];
  };

#  programs.git = {
 #   enable = true;
 #   userName = "gerard adams";
 #   userEmail = "adamsxgerard@gmail.com";
 # };
}

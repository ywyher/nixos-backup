{ pkgs, inputs, system, ... }: {
    nixpkgs.config.allowUnfree = true;
    home.packages = with pkgs; [
        inputs.zen-browser.packages."${system}".default # beta

        kitty
        lshw
        firefox
        brightnessctl
        mako
        pavucontrol
        anki
        nautilus
        qimgv
        papirus-icon-theme
        thunderbird
        swww
        zed-editor
        libreoffice-qt6
        hunspell
        btop
        vlc
        mpv
        ncmpcpp
        unzip
    	telegram-desktop
        google-chrome
        youtube-music
        ytmdesktop
        speedtest-cli	
        obsidian
        gh
        scrcpy

        (discord.override {
            # withOpenASAR = true; # can do this here too
            withVencord = true;
        })

        polkit
        usbutils
        hyprpolkitagent
        hyprpicker
        hypridle
        hyprsunset
        hypridle
        hyprpaper
        hyprshot
        cliphist
        wl-clipboard

        home-manager

        nodejs
        bun
        pnpm
        jdk
        glxinfo
        libnotify
        heroic
        lutris
        superTuxKart # free racing 3rd game to test shit
	    gamemode

        # Wine and related packages
        winetricks
        wineWowPackages.stable  # For 64-bit support
        # wineWowPackages.waylandFull # Expremintal
    ];
}

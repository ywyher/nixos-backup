{ pkgs, inputs, user, stateVersion, uwsm, ... }:
{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      ./nixos/modules
    ];

	
  services.logrotate.enable = false;
	
  networking.hostName = user;

  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [ home-manager spicetify-cli ghostty ];

  hardware.opentabletdriver = {
    enable = true;

    daemon = {
      enable = true;
    };
  };

  system.stateVersion = stateVersion;
}
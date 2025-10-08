{
  description = "k0s via Nix Flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs =
    {
      self,
      nixpkgs,
      flake-utils,
      ...
    }@inputs:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = import nixpkgs {
          inherit system;
        };

        app-run = pkgs.writeShellScriptBin "my-command" ''
          #xdg-open ${./index.html}
          xdg-open ${./.}/index.html
        '';

      in
      {
        packages.default = app-run;
        
      }
    );
}

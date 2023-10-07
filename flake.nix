{
  description = "My personal website";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/release-23.05";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = {
    self,
    nixpkgs,
    flake-utils,
  }:
    flake-utils.lib.eachDefaultSystem (
      system: {
        packages.default = with import nixpkgs {inherit system;};
          stdenv.mkDerivation {
            name = "felipe.keiler.nom.br";
            src = self;
            buildInputs = with pkgs; [zola];
            buildPhase = "zola build";
            installPhase = "cp -r public $out";
          };
      }
    );
}

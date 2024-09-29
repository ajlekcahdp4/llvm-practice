{
  description = "llvm practice";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    flake-parts.url = "github:hercules-ci/flake-parts";
    treefmt-nix = {
      url = "github:numtide/treefmt-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    { flake-parts, treefmt-nix, ... }@inputs:
    flake-parts.lib.mkFlake { inherit inputs; } {
      imports = [ treefmt-nix.flakeModule ];

      systems = [
        "x86_64-linux"
        "aarch64-linux"
      ];

      perSystem =
        { pkgs, ... }:
        let
          llvmPackages = pkgs.llvmPackages_18;
        in
        rec {
          imports = [ ./nix/treefmt.nix ];

          packages = rec {
            llvm-practice = pkgs.callPackage ./. { stdenv = llvmPackages.stdenv; };
            default = llvm-practice;
          };

          devShells.default = (pkgs.mkShell.override { stdenv = llvmPackages.stdenv; }) {
            nativeBuildInputs =
              packages.llvm-practice.nativeBuildInputs
              ++ (with pkgs; [
                act
                valgrind
                gdb
                just
              ]);
            buildInputs = packages.llvm-practice.buildInputs;
          };
        };
    };
}

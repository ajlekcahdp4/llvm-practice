{ pkgs, stdenv, ... }:
stdenv.mkDerivation {
  src = ./.;
  pname = "llvm-practice";
  version = "0.0.0";
  nativeBuildInputs = with pkgs; [
    meson
    ninja
    pkg-config
  ];
  buildInputs = with pkgs; [
    SDL2
  ];
}

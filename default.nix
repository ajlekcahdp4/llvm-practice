{ pkgs, stdenv, ... }:
stdenv.mkDerivation {
  src = ./.;
  pname = "llvm-practice";
  version = "0.0.0";
  nativeBuildInputs = with pkgs; [
    meson
    just
    ninja
    SDL2
    act
  ];
}

{
  pkgs,
  stdenv,
  fetchFromGitHub,
  llvmPkgs,
  ...
}:
let
ctti = fetchFromGitHub {
    owner = "Manu343726";
    repo = "ctti";
    rev = "d7e9828b82ce7a6321465fbd84f9bccb772c7f43";
    hash = "sha256-oeHlK5M6lHgW1hVCE9UO6Z1DHO2raf0fGeAkSYN0Spw=";
  };
in
stdenv.mkDerivation {
  src = ./.;
  pname = "llvm-practice";
  version = "0.0.0";
  nativeBuildInputs = with pkgs; [
    meson
    ninja
    clang
    pkg-config
    ctti
  ];
  buildInputs = with pkgs; [
    SDL2
    ctti
    llvmPkgs.llvm
  ];
  checkInputs = with pkgs; [gtest];
}

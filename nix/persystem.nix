{ pkgs, ... }:
{
  devShells.default = pkgs.mkShell {
    nativeBuildInputs = with pkgs; [
      cmake
      ninja
    ];
  };
}

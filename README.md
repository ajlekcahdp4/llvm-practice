# llvm-practice

## fetching all dependencies

To fetch all of the required dependencies you can use [nix](https://nixos.org/download/)
Run the following command and you will be put into a shell with all dependencies you need

```sh
nix develop
```

## build

### highlife

```sh
meson setup build
meson compile -C build
```

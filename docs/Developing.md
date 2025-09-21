
## Dev setup

### Requirements

- Linux/macOS (WSL is fine)
- [makeself](https://makeself.io/)
- [dialog](https://invisible-island.net/dialog/) (for testing locally)

Checkout git submodules:

```bash
git submodule update --init --recursive
```

### Cross compile `stress-ng` (manually)

#### Linux host (including WSL in Windows)

```bash
wget -c https://developer.arm.com/-/media/Files/downloads/gnu-a/10.2-2020.11/binrel/gcc-arm-10.2-2020.11-x86_64-arm-none-linux-gnueabihf.tar.xz

mkdir -p $HOME/opt
cd $HOME/opt
tar xf gcc-arm-10.2-2020.11-x86_64-arm-none-linux-gnueabihf.tar.xz 
```

When in the `stress-ng` directory, you will need to have the `PATH` and `CC` environment variables pointing to the gcc for cross compiling.

You can add the following to `~/.bashrc` or similar (e.g. [`direnv`](https://direnv.net/)):

```bash
export PATH=$PATH:$HOME/opt/gcc-arm-10.2-2020.11-x86_64-arm-none-linux-gnueabihf/bin
export CC='$HOME/opt/gcc-arm-10.2-2020.11-x86_64-arm-none-linux-gnueabihf/bin/arm-none-linux-gnueabihf-gcc'
```
From [here](https://github.com/MiSTer-devel/Wiki_MiSTer/wiki/ARM-cross-compiling).

#### Build

See requirements of stress-ng: https://github.com/ColinIanKing/stress-ng

```bash
cd stress-ng
make
```

Now copy the build for our process:

```bash
cp src/stress-ng/stress-ng build/
```

### Make the binary

```bash
make all

# optionally copy it to your MiSTer for testing
make deploy-local
```

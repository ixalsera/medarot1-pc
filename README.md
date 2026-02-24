# Getting Started
## Dependencies

* Medarot Parts Collection GB ROM
  * md5: `a83d745ae8806a04d4a9e3c241f8c8cb`
  * sha1: `eec1245abb1d97cd2df976fdf179c924a4efa720`

### For building/dumping:
* Docker (optional)
* Make
* [uv](https://docs.astral.sh/uv/)
* [rgbds](https://github.com/rednex/rgbds) >= 0.5.0
  * Currently relies on the rgbds overlay feature as parts are disassembled and tacked on

## First steps
1. Install any missing dependencies
2. Open a terminal in the project root
3. Run `uv sync` to build the required Python virtual environment
4. Ensure your ROM file is in the project root and named `baserom_parts_collection.gb`

# Building
To build, simply run `make` from your terminal.
   - You can also run `make` with the optional `-j` argument for a slightly faster build. e.g. `make -j$(nproc)` to build using all available cores.
   - If you encounter any issues, try running `make` _without_ the `-j` argument first before opening any issues.

In order to determine that any changes have not affected the recompilation of the ROM adversely, `master` branch will additionally compare the original ROM with the rebuilt one using `cmp`. See `man cmp` for more information.

# Dumping
Ensure you've gone through the first steps above to set up your environment and then run `make dump`.
   - Note: nothing should change as the text files are checked in!

# Related Projects

[Medarot 1 Disassembly/Translation](https://github.com/VariantXYZ/medarot1)

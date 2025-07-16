#!/bin/bash

darklua process ../src/CLI/init.luau ./Bundled.luau
lune build ./Bundled.luau --output ../blink --target macos-aarch64
rm ./Bundled.luau

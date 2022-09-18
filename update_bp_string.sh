#!/bin/bash
# Updates the blueprint string from the blueprints inside root blueprint directory

set -e

SCRIPT_PATH=$(cd "$(dirname "$0")"; pwd -P)
SCRIPT_NAME=$(basename $0)

BP_STRING_FILE="blueprint_string.txt"
ROOT_BP_DIR="$SCRIPT_PATH/hex_cells"

# build blueprint converter
cd $SCRIPT_PATH/fbpconvert
cargo b --release
cd $SCRIPT_PATH

# create/update blueprint string file
$SCRIPT_PATH/fbpconvert/target/release/fbpconvert export file "$ROOT_BP_DIR" -o "$BP_STRING_FILE"


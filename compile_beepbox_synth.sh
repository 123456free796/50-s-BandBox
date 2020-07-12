#!/bin/bash

# Compile synth/synth.ts into website/beepbox_synth.js
$TSC -p tsconfig_synth_only.json

# Minify website/beepbox_synth.js into website/beepbox_synth.min.js
$UGLIFYJS \
	--compress \
	--mangle \
	--mangle-props regex="/^_.+/;" \
	website/beepbox_synth.js \
	-o website/beepbox_synth.min.js

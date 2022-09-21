# factorio_blueprints
Collection of blueprints for my hex cells factory, updated when I have the time.

## Brief
All cells follow a template:
- 4 stations with double stackers. The cells and stations are sized to fit 2-8 trains, or any <10 car trains.
- Global circuit network (red + green wire). Currently none of my blueprints use this network.

## Design goals
- Minimal use of belt balancing. Balancers take up lots of space. All train cars unload materials in parallel -> no intermixing. Finished products are loaded in parallel.

- Maximum possible throughput. Right now I'm hitting a limit of 32 blue belts of input/output per cell (86.4k/min) for belted resources, and about 600k units/min of fluid. This level of output is quite simple to manage as each cargo wagon is loading/unloading 2 blue belts -> each cell usually has 2 ingest stations per item -> 2 output stations per item -> max 32 belts of IO from 16 wagons.

- Smallest possible size. Beaconed + black-magic belt/pipe routing. I've realised that belts can always be routed to where you need them. Might give you a headache though.

- Maximum space utilisation. See green chips v1-v4 for examples

- Cell-wide enable/disable. Currently implemented for stations. Might work on global circuit network enable/disable.

- Auto-shutoff when idle, for reduced power consumption. Analogous to clock gating in chips. Not implemented for all designs.

Feel free to improve on this.

## Checking it out
See releases for blueprint strings, or convert them using [fbpconvert.](https://github.com/cruzerngz/fbpconvert) Clone the submodule and run the shell script `update_bp_string.sh` to generate a blueprint string.

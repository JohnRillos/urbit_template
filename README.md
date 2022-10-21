<!---
    Initial Repository Setup:
    * Replace "template" with the name of your app everywhere in this repo
    * Add your name to LICENSE
    * If you want to use a React.JS frontend, clone https://github.com/urbit/create-landscape-app and copy `create-landscape-app/ts/ui/*` into a directory named `ui/`
      * Otherwise, delete any references to ui/ in _build.sh and README.md
-->

# %template

An app for [Urbit](https://urbit.org).

-----

[Overview](./src/doc/overview.udon)

[Changelog](./src/doc/changelog.udon)

Documentation and release notes can also be viewed in the [%docs](https://github.com/tinnus-napbus/docs-app) app.

-----
## Project Structure:

`src/`: Hoon source code. All code here is original and specific to this project.

`deps/`: Hoon dependencies that can't be imported via [Herd](./src/desk.herd) are pasted into this directory. None of the code here is original to this project.

`ui/`: Source code for the React.js frontend.

`dev_desk`: Contains the name of the dev desk used by Herd.

`build_desk`: Contains the name of the build desk. App will be distributed as this desk.

`_sync.sh`: Script for syncing project files into a dev desk in a pier.

`_build.sh`: Run this in your **dev** environment. Copies the build desk from a dev ship, and builds the React frontend. The `/.build` dir should not be commited except to a `build` branch.

`_dist.sh`: Run this in your **distribution** environment on a `build` branch. Copies contents of `.build` to your distribution ship's pier.

-----

## Initial dev ship setup
* Boot a moon to use for development
* Install `%docs` for documentation and `%citadel` for dependency management (Herd).
```
|install ~pocwet %docs
|install ~dister-dozzod-middev %citadel
```
* Create your dev desk and build desk with Herd
```
-citadel!herd-init [%template-dev %template]
```
* Mount your dev desk
```
|mount %template-dev
```
* Run `_sync.sh` to continually sync your source code with your dev desk.
* When you want to your changes to apply to your dev ship, commit them via `%citadel` / Herd.
```
-citadel!commit [%template-dev %template]
```

-----
## Running the app:

Unix:
* `./_sync.sh PATH/TO/PIER` to sync `src/` and `deps/` to your dev desk.
* In `ui/` run `npm run dev`
  * or `npm run dev:env foo` to use `ui/.env.foo.local` as config

Dojo:
* `-citadel!commit [%template-dev %template]` to build your desk via Herd.
  * `%citadel` must be installed first
* `|install our %template` to install your desk and start the app for the first time

# ocaml-cordova-plugin-screen-orientation

[![LGPL-v3 licensed](https://img.shields.io/badge/license-LGPLv3-blue.svg)](https://raw.githubusercontent.com/dannywillems/ocaml-cordova-plugin-screen-orientation/master/LICENSE)
[![Build Status](https://travis-ci.org/dannywillems/ocaml-cordova-plugin-screen-orientation.svg?branch=master)](https://travis-ci.org/dannywillems/ocaml-cordova-plugin-screen-orientation)

Binding to
[cordova-plugin-screen-orientation](https://github.com/gbenvenuti/cordova-plugin-screen-orientation)

[Example
application](https://github.com/dannywillems/ocaml-cordova-plugin-screen-orientation-example).

## What does cordova-plugin-screen-orientation do ?

```
Cordova plugin to set/lock the screen orientation in a common way for iOS,
Android, WP8 and Blackberry 10. This plugin is based on an early version of
Screen Orientation API so the api does not currently match the current spec.
```

Source: [cordova-plugin-screen-orientation](https://github.com/gbenvenuti/cordova-plugin-screen-orientation)

## Repository branches and tags

We are migrating bindings from
[js_of_ocaml](https://github.com/ocsigen/js_of_ocaml) (low level bindings) to
[gen_js_api](https://github.com/lexifi/gen_js_api) (high level bindings).

The gen_js_api binding allows to use *pure* ocaml types (you don't have to use
the ## syntax from js_of_ocaml or Js.string type but only # and string type).

The js_of_ocaml version is available in the branch
[*js_of_ocaml*](https://github.com/dannywillems/ocaml-cordova-plugin-screen-orientation/tree/js_of_ocaml)
but we **recommend** to use the gen_js_api version which is the master branch.

## How to install and compile your project by using this plugin ?

Don't forget to switch to a compiler **>= 4.03.0**.
```Shell
opam switch 4.03.0
```

You can use opam by pinning the repository with
```Shell
opam pin add cordova-plugin-screen-orientation https://github.com/dannywillems/ocaml-cordova-plugin-screen-orientation.git
```

and to compile your project, use
```Shell
ocamlfind ocamlc -c -o [output_file] -package gen_js_api -package cordova-plugin-screen-orientation [...] -linkpkg [other arguments]
```

Don't forget to install the cordova plugin screen orientation
```Shell
cordova plugin add cordova-plugin-screen-orientation
```

## How to use ?

* See the [official documentation](https://github.com/gbenvenuti/cordova-plugin-screen-orientation)

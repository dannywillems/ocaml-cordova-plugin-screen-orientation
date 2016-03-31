# ocaml-cordova-plugin-screen-orientation

**Currently only for iOS**

Binding to
[cordova-plugin-screen-orientation](https://github.com/gbenvenuti/cordova-plugin-screen-orientation)

[Example
application](https://github.com/dannywillems/ocaml-cordova-plugin-screen-orientation-example).
**Not developed**

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

## How to use ?

* See the [official documentation](https://github.com/gbenvenuti/cordova-plugin-screen-orientation)

## ! BE CAREFUL !

The plugin creates a new object called *screen*, but the object is
available when the *deviceready* event is handled.

We provide a function *Screen_orientation.t* of type *unit -> Screen_orientation.screen_orientation* which creates the
binding to the *screen* javascript object. You must call it when the deviceready
event is handled, eg

```OCaml
let on_device_ready _ =
  let screen = Screen_orientation.t () in
  (* Some code *)

let _ =
  Dom.addEventListener Dom_html.document (Dom.Event.make "deviceready")
  (Dom_html.handler on_device_ready) Js._false
```

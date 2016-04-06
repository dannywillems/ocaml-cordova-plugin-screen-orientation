# ocaml-cordova-plugin-screen-orientation

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

## How to use ?

* See the [official documentation](https://github.com/gbenvenuti/cordova-plugin-screen-orientation)

## ! BE CAREFUL !

The plugin creates a new object called *screen*, but the object is
available when the *deviceready* event is handled.

We don't provide a *screen* variable in this plugin (as said in the official
documentation on js_of_ocaml). If we did, *screen* will be set to **undefined**
because the *screen* object doesn't exist when we create the variable.

Instead, we provide a function *Screen_orientation.screen_orientation* of type
*unit -> Screen_orientation.screen_orientation Js.t* which creates the binding
to the *screen* javascript object. You must call it when the deviceready event
is handled, eg

```OCaml
let on_device_ready _ =
  let screen = Screen_orientation.screen_orientation () in
  (* Some code *)

let _ =
  Dom.addEventListener Dom_html.document (Dom.Event.make "deviceready")
  (Dom_html.handler on_device_ready) Js._false
```

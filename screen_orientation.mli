(* --------------------------------------------------------------------------- *)
class screen_orientation : Ojs.t ->
  object
    inherit Ojs.obj
    method lock_orientation     : string -> unit
    method orientation          : string
    method unlock_orientation   : unit
  end
(* --------------------------------------------------------------------------- *)

(* --------------------------------------------------------------------------- *)
[@@@js.stop]
type orientation

val portrait                  : orientation
val portrait_primary          : orientation
val portrait_secondary        : orientation
val landscape                 : orientation
val landscape_primary         : orientation
val landscape_secondary       : orientation

val str_to_orientation        : string -> orientation

val orientation_to_js_string  : orientation -> string
[@@@js.start]

[@@@js.implem
type orientation =
  | Portrait_primary
  | Portrait_secondary
  | Landscape_primary
  | Landscape_secondary
  | Portrait
  | Landscape
  | Unknown

let portrait              = Portrait
let portrait_primary      = Portrait_primary
let portrait_secondary    = Portrait_secondary
let landscape             = Landscape
let landscape_primary     = Landscape_primary
let landscape_secondary   = Landscape_secondary

let str_to_orientation str = match str with
  | "portrait"            -> Portrait
  | "portrait-primary"    -> Portrait_primary
  | "portrait-secondary"  -> Portrait_secondary
  | "landscape"           -> Landscape
  | "landscape-primary"   -> Landscape_primary
  | "landscape-secondary" -> Landscape_secondary
  | _                     -> Unknown

let orientation_to_js_string o = match o with
  | Portrait_primary        -> "portrait-primary"
  | Portrait_secondary      -> "portrait-secondary"
  | Landscape_primary       -> "landscape-primary"
  | Landscape_secondary     -> "landscape-secondary"
  | Portrait                -> "portrait"
  | Landscape               -> "landscape"
  | _                       -> ""
]
(* --------------------------------------------------------------------------- *)

(* --------------------------------------------------------------------------- *)
val t : unit -> screen_orientation
[@@js.get "screen"]
(* --------------------------------------------------------------------------- *)

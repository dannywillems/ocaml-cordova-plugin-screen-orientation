(* --------------------------------------------------------------------------- *)
type orientation_type =
  | Portrait_primary [@js "portrait-primary"]
  | Portrait_secondary [@js "portrait-secondary"]
  | Landscape_primary [@js "landscape-primary"]
  | Landscape_secondary [@js "landscape-secondary"]
  | Portrait [@js "portrait"]
  | Landscape [@js "landscape"]
  [@@js.enum]

[@@@js.stop]
val orientation_type_to_str : orientation_type -> string
[@@@js.start]
[@@@js.implem
let orientation_type_to_str c = match c with
  | Portrait_primary -> "portrait-primary"
  | Portrait_secondary -> "portrait-secondary"
  | Landscape_primary -> "landscape-primary"
  | Landscape_secondary -> "landscape-secondary"
  | Portrait -> "portrait"
  | Landscape -> "landscape"
]
(* --------------------------------------------------------------------------- *)

(* --------------------------------------------------------------------------- *)
val lock_orientation     : orientation_type -> unit
[@@js.global "screen.lockOrientation"]

val orientation          : orientation_type
[@@js.global "screen.orientation"]

val unlock_orientation   : unit -> unit
[@@js.global "screen.unlockOrientation"]
(* --------------------------------------------------------------------------- *)

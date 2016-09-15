module Main exposing (..)

import Html
import String


(~=) stringOne stringTwo =
    String.left 1 stringOne == String.left 1 stringTwo


main =
    (~=) "Pearse" "Preston"
        |> toString
        |> Html.text

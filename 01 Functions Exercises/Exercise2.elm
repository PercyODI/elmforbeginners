module Main exposing (..)

import String
import Html


uppercaseLongNames name =
    if String.length name > 10 then
        String.toUpper name
    else
        name


main =
    Html.text (uppercaseLongNames "foo bar")

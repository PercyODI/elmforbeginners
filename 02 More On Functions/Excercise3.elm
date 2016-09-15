module Main exposing (..)

import Html
import String


wordCount =
    String.words >> List.length


main =
    let
        sentence =
            "This is a sentence you see"
    in
        sentence
            |> wordCount
            |> toString
            |> Html.text

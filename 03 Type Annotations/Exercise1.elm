module Main exposing (..)

import Html


type alias Item =
    { name : String, qty : Int, freeQty : Int }


cart : List Item
cart =
    [ { name = "Lemon", qty = 1, freeQty = 0 }
    , { name = "Apple", qty = 5, freeQty = 0 }
    , { name = "Pear", qty = 10, freeQty = 0 }
    ]


findFreeQty : Int -> Int -> Item -> Item
findFreeQty purchNum freeNum item =
    if item.freeQty < freeNum && item.qty >= purchNum then
        { item | freeQty = freeNum }
    else
        item


newCart : List Item
newCart =
    List.map ((findFreeQty 5 1) >> (findFreeQty 10 3)) cart


main : Html.Html msg
main =
    Html.text (toString newCart)

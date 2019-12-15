module Main exposing (..)

import Browser
import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)

-- MODEL
type alias Model = Int

init : Model
init = 0

-- UPDATE
type Msg = Increment | Decrement

update : Msg -> Model -> Model
update msg counter =
  case msg of
    Increment -> counter + 1
    Decrement -> counter - 1

-- VIEW
view : Model -> Html Msg
view model =
  div []
    [ 
      button [ onClick Decrement ] [ text "-" ], 
      div [] [ text (String.fromInt model) ], 
      button [ onClick Increment ] [ text "+" ]
    ]
    
-- MAIN
main = Browser.sandbox { init = init, update = update, view = view }

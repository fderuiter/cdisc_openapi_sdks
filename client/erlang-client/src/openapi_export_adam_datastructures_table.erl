-module(openapi_export_adam_datastructures_table).

-export([encode/1]).

-export_type([openapi_export_adam_datastructures_table/0]).

-type openapi_export_adam_datastructures_table() ::
    #{ 'datastructures' => list()
     }.

encode(#{ 'datastructures' := Datastructures
        }) ->
    #{ 'datastructures' => Datastructures
     }.

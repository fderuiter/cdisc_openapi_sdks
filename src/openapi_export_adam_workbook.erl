-module(openapi_export_adam_workbook).

-export([encode/1]).

-export_type([openapi_export_adam_workbook/0]).

-type openapi_export_adam_workbook() ::
    #{ 'variables' => list(),
       'datastructures' => list()
     }.

encode(#{ 'variables' := Variables,
          'datastructures' := Datastructures
        }) ->
    #{ 'variables' => Variables,
       'datastructures' => Datastructures
     }.

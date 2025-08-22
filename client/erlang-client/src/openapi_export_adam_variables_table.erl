-module(openapi_export_adam_variables_table).

-export([encode/1]).

-export_type([openapi_export_adam_variables_table/0]).

-type openapi_export_adam_variables_table() ::
    #{ 'variables' => list()
     }.

encode(#{ 'variables' := Variables
        }) ->
    #{ 'variables' => Variables
     }.

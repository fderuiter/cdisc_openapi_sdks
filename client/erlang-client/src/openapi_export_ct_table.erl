-module(openapi_export_ct_table).

-export([encode/1]).

-export_type([openapi_export_ct_table/0]).

-type openapi_export_ct_table() ::
    #{ 'ct' => list()
     }.

encode(#{ 'ct' := Ct
        }) ->
    #{ 'ct' => Ct
     }.

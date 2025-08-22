-module(openapi_export_qrs_items_table).

-export([encode/1]).

-export_type([openapi_export_qrs_items_table/0]).

-type openapi_export_qrs_items_table() ::
    #{ 'items' => list()
     }.

encode(#{ 'items' := Items
        }) ->
    #{ 'items' => Items
     }.

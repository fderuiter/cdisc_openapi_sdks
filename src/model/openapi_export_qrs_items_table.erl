-module(openapi_export_qrs_items_table).

-include("openapi.hrl").

-export([openapi_export_qrs_items_table/0]).

-export([openapi_export_qrs_items_table/1]).

-export_type([openapi_export_qrs_items_table/0]).

-type openapi_export_qrs_items_table() ::
  [ {'items', list(openapi_export_qrs_csv_items_row:openapi_export_qrs_csv_items_row()) }
  ].


openapi_export_qrs_items_table() ->
    openapi_export_qrs_items_table([]).

openapi_export_qrs_items_table(Fields) ->
  Default = [ {'items', list(openapi_export_qrs_csv_items_row:openapi_export_qrs_csv_items_row()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


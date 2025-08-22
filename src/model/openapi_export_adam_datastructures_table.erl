-module(openapi_export_adam_datastructures_table).

-include("openapi.hrl").

-export([openapi_export_adam_datastructures_table/0]).

-export([openapi_export_adam_datastructures_table/1]).

-export_type([openapi_export_adam_datastructures_table/0]).

-type openapi_export_adam_datastructures_table() ::
  [ {'datastructures', list(openapi_export_adam_datastructures_row:openapi_export_adam_datastructures_row()) }
  ].


openapi_export_adam_datastructures_table() ->
    openapi_export_adam_datastructures_table([]).

openapi_export_adam_datastructures_table(Fields) ->
  Default = [ {'datastructures', list(openapi_export_adam_datastructures_row:openapi_export_adam_datastructures_row()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


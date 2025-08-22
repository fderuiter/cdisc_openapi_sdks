-module(openapi_export_adam_variables_table).

-include("openapi.hrl").

-export([openapi_export_adam_variables_table/0]).

-export([openapi_export_adam_variables_table/1]).

-export_type([openapi_export_adam_variables_table/0]).

-type openapi_export_adam_variables_table() ::
  [ {'variables', list(openapi_export_adam_variables_row:openapi_export_adam_variables_row()) }
  ].


openapi_export_adam_variables_table() ->
    openapi_export_adam_variables_table([]).

openapi_export_adam_variables_table(Fields) ->
  Default = [ {'variables', list(openapi_export_adam_variables_row:openapi_export_adam_variables_row()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


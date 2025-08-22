-module(openapi_export_adam_workbook).

-include("openapi.hrl").

-export([openapi_export_adam_workbook/0]).

-export([openapi_export_adam_workbook/1]).

-export_type([openapi_export_adam_workbook/0]).

-type openapi_export_adam_workbook() ::
  [ {'variables', list(openapi_export_adam_variables_row:openapi_export_adam_variables_row()) }
  | {'datastructures', list(openapi_export_adam_datastructures_row:openapi_export_adam_datastructures_row()) }
  ].


openapi_export_adam_workbook() ->
    openapi_export_adam_workbook([]).

openapi_export_adam_workbook(Fields) ->
  Default = [ {'variables', list(openapi_export_adam_variables_row:openapi_export_adam_variables_row()) }
            , {'datastructures', list(openapi_export_adam_datastructures_row:openapi_export_adam_datastructures_row()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


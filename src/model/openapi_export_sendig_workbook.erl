-module(openapi_export_sendig_workbook).

-include("openapi.hrl").

-export([openapi_export_sendig_workbook/0]).

-export([openapi_export_sendig_workbook/1]).

-export_type([openapi_export_sendig_workbook/0]).

-type openapi_export_sendig_workbook() ::
  [ {'variables', list(openapi_export_sendig_variables_row:openapi_export_sendig_variables_row()) }
  | {'datasets', list(openapi_export_sendig_datasets_row:openapi_export_sendig_datasets_row()) }
  ].


openapi_export_sendig_workbook() ->
    openapi_export_sendig_workbook([]).

openapi_export_sendig_workbook(Fields) ->
  Default = [ {'variables', list(openapi_export_sendig_variables_row:openapi_export_sendig_variables_row()) }
            , {'datasets', list(openapi_export_sendig_datasets_row:openapi_export_sendig_datasets_row()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


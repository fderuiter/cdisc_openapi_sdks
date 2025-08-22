-module(openapi_export_sdtmig_workbook).

-include("openapi.hrl").

-export([openapi_export_sdtmig_workbook/0]).

-export([openapi_export_sdtmig_workbook/1]).

-export_type([openapi_export_sdtmig_workbook/0]).

-type openapi_export_sdtmig_workbook() ::
  [ {'variables', list(openapi_export_sdtmig_variables_row:openapi_export_sdtmig_variables_row()) }
  | {'datasets', list(openapi_export_sdtmig_datasets_row:openapi_export_sdtmig_datasets_row()) }
  ].


openapi_export_sdtmig_workbook() ->
    openapi_export_sdtmig_workbook([]).

openapi_export_sdtmig_workbook(Fields) ->
  Default = [ {'variables', list(openapi_export_sdtmig_variables_row:openapi_export_sdtmig_variables_row()) }
            , {'datasets', list(openapi_export_sdtmig_datasets_row:openapi_export_sdtmig_datasets_row()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


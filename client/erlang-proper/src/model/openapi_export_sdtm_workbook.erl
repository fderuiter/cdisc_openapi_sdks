-module(openapi_export_sdtm_workbook).

-include("openapi.hrl").

-export([openapi_export_sdtm_workbook/0]).

-export([openapi_export_sdtm_workbook/1]).

-export_type([openapi_export_sdtm_workbook/0]).

-type openapi_export_sdtm_workbook() ::
  [ {'class_variables', list(openapi_export_sdtm_class_variables_row:openapi_export_sdtm_class_variables_row()) }
  | {'dataset_variables', list(openapi_export_sdtm_dataset_variables_row:openapi_export_sdtm_dataset_variables_row()) }
  | {'datasets', list(openapi_export_sdtm_datasets_row:openapi_export_sdtm_datasets_row()) }
  ].


openapi_export_sdtm_workbook() ->
    openapi_export_sdtm_workbook([]).

openapi_export_sdtm_workbook(Fields) ->
  Default = [ {'class-variables', list(openapi_export_sdtm_class_variables_row:openapi_export_sdtm_class_variables_row()) }
            , {'dataset-variables', list(openapi_export_sdtm_dataset_variables_row:openapi_export_sdtm_dataset_variables_row()) }
            , {'datasets', list(openapi_export_sdtm_datasets_row:openapi_export_sdtm_datasets_row()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


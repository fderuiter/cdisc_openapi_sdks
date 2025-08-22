-module(openapi_export_sdtm_variables_table).

-include("openapi.hrl").

-export([openapi_export_sdtm_variables_table/0]).

-export([openapi_export_sdtm_variables_table/1]).

-export_type([openapi_export_sdtm_variables_table/0]).

-type openapi_export_sdtm_variables_table() ::
  [ {'class_variables', list(openapi_export_sdtm_class_variables_row:openapi_export_sdtm_class_variables_row()) }
  | {'dataset_variables', list(openapi_export_sdtm_dataset_variables_row:openapi_export_sdtm_dataset_variables_row()) }
  ].


openapi_export_sdtm_variables_table() ->
    openapi_export_sdtm_variables_table([]).

openapi_export_sdtm_variables_table(Fields) ->
  Default = [ {'class-variables', list(openapi_export_sdtm_class_variables_row:openapi_export_sdtm_class_variables_row()) }
            , {'dataset-variables', list(openapi_export_sdtm_dataset_variables_row:openapi_export_sdtm_dataset_variables_row()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


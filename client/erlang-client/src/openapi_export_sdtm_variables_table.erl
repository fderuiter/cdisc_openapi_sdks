-module(openapi_export_sdtm_variables_table).

-export([encode/1]).

-export_type([openapi_export_sdtm_variables_table/0]).

-type openapi_export_sdtm_variables_table() ::
    #{ 'class_variables' => list(),
       'dataset_variables' => list()
     }.

encode(#{ 'class_variables' := ClassVariables,
          'dataset_variables' := DatasetVariables
        }) ->
    #{ 'class-variables' => ClassVariables,
       'dataset-variables' => DatasetVariables
     }.

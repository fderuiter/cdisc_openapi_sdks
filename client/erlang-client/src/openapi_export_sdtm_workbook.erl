-module(openapi_export_sdtm_workbook).

-export([encode/1]).

-export_type([openapi_export_sdtm_workbook/0]).

-type openapi_export_sdtm_workbook() ::
    #{ 'class_variables' => list(),
       'dataset_variables' => list(),
       'datasets' => list()
     }.

encode(#{ 'class_variables' := ClassVariables,
          'dataset_variables' := DatasetVariables,
          'datasets' := Datasets
        }) ->
    #{ 'class-variables' => ClassVariables,
       'dataset-variables' => DatasetVariables,
       'datasets' => Datasets
     }.

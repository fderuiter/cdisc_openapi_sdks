-module(openapi_export_sdtmig_workbook).

-export([encode/1]).

-export_type([openapi_export_sdtmig_workbook/0]).

-type openapi_export_sdtmig_workbook() ::
    #{ 'variables' => list(),
       'datasets' => list()
     }.

encode(#{ 'variables' := Variables,
          'datasets' := Datasets
        }) ->
    #{ 'variables' => Variables,
       'datasets' => Datasets
     }.

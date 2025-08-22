-module(openapi_export_sendig_workbook).

-export([encode/1]).

-export_type([openapi_export_sendig_workbook/0]).

-type openapi_export_sendig_workbook() ::
    #{ 'variables' => list(),
       'datasets' => list()
     }.

encode(#{ 'variables' := Variables,
          'datasets' := Datasets
        }) ->
    #{ 'variables' => Variables,
       'datasets' => Datasets
     }.

-module(openapi_export_sdtmig_datasets_table).

-export([encode/1]).

-export_type([openapi_export_sdtmig_datasets_table/0]).

-type openapi_export_sdtmig_datasets_table() ::
    #{ 'datasets' => list()
     }.

encode(#{ 'datasets' := Datasets
        }) ->
    #{ 'datasets' => Datasets
     }.

-module(openapi_export_sdtmig_datasets_row).

-export([encode/1]).

-export_type([openapi_export_sdtmig_datasets_row/0]).

-type openapi_export_sdtmig_datasets_row() ::
    #{ 'Version' => binary(),
       'Class' => binary(),
       'Dataset_Name' => binary(),
       'Dataset_Label' => binary(),
       'Structure' => binary()
     }.

encode(#{ 'Version' := Version,
          'Class' := Class,
          'Dataset_Name' := DatasetName,
          'Dataset_Label' := DatasetLabel,
          'Structure' := Structure
        }) ->
    #{ 'Version' => Version,
       'Class' => Class,
       'Dataset Name' => DatasetName,
       'Dataset Label' => DatasetLabel,
       'Structure' => Structure
     }.

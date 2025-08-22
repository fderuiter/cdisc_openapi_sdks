-module(openapi_export_adam_datastructures_row).

-export([encode/1]).

-export_type([openapi_export_adam_datastructures_row/0]).

-type openapi_export_adam_datastructures_row() ::
    #{ 'Version' => binary(),
       'Data_Structure_Name' => binary(),
       'Dataset_Name' => binary(),
       'Dataset_Label' => binary(),
       'Dataset_Description' => binary(),
       'Class' => binary()
     }.

encode(#{ 'Version' := Version,
          'Data_Structure_Name' := DataStructureName,
          'Dataset_Name' := DatasetName,
          'Dataset_Label' := DatasetLabel,
          'Dataset_Description' := DatasetDescription,
          'Class' := Class
        }) ->
    #{ 'Version' => Version,
       'Data Structure Name' => DataStructureName,
       'Dataset Name' => DatasetName,
       'Dataset Label' => DatasetLabel,
       'Dataset Description' => DatasetDescription,
       'Class' => Class
     }.

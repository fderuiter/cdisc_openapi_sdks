-module(openapi_export_adam_datastructures_row).

-include("openapi.hrl").

-export([openapi_export_adam_datastructures_row/0]).

-export([openapi_export_adam_datastructures_row/1]).

-export_type([openapi_export_adam_datastructures_row/0]).

-type openapi_export_adam_datastructures_row() ::
  [ {'Version', binary() }
  | {'Data_Structure_Name', binary() }
  | {'Dataset_Name', binary() }
  | {'Dataset_Label', binary() }
  | {'Dataset_Description', binary() }
  | {'Class', binary() }
  ].


openapi_export_adam_datastructures_row() ->
    openapi_export_adam_datastructures_row([]).

openapi_export_adam_datastructures_row(Fields) ->
  Default = [ {'Version', binary() }
            , {'Data Structure Name', binary() }
            , {'Dataset Name', binary() }
            , {'Dataset Label', binary() }
            , {'Dataset Description', binary() }
            , {'Class', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


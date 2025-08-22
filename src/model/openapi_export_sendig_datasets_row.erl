-module(openapi_export_sendig_datasets_row).

-include("openapi.hrl").

-export([openapi_export_sendig_datasets_row/0]).

-export([openapi_export_sendig_datasets_row/1]).

-export_type([openapi_export_sendig_datasets_row/0]).

-type openapi_export_sendig_datasets_row() ::
  [ {'Version', binary() }
  | {'Class', binary() }
  | {'Dataset_Name', binary() }
  | {'Dataset_Label', binary() }
  | {'Structure', binary() }
  ].


openapi_export_sendig_datasets_row() ->
    openapi_export_sendig_datasets_row([]).

openapi_export_sendig_datasets_row(Fields) ->
  Default = [ {'Version', binary() }
            , {'Class', binary() }
            , {'Dataset Name', binary() }
            , {'Dataset Label', binary() }
            , {'Structure', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


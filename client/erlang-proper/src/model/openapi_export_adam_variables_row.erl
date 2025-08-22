-module(openapi_export_adam_variables_row).

-include("openapi.hrl").

-export([openapi_export_adam_variables_row/0]).

-export([openapi_export_adam_variables_row/1]).

-export_type([openapi_export_adam_variables_row/0]).

-type openapi_export_adam_variables_row() ::
  [ {'Version', binary() }
  | {'Data_Structure_Name', binary() }
  | {'Dataset_Name', binary() }
  | {'Variable_Group', binary() }
  | {'Variable_Name', binary() }
  | {'Variable_Label', binary() }
  | {'Type', binary() }
  | {'Codelist_Controlled_Terms', binary() }
  | {'Core', binary() }
  | {'CDISC_Notes', binary() }
  ].


openapi_export_adam_variables_row() ->
    openapi_export_adam_variables_row([]).

openapi_export_adam_variables_row(Fields) ->
  Default = [ {'Version', binary() }
            , {'Data Structure Name', binary() }
            , {'Dataset Name', binary() }
            , {'Variable Group', binary() }
            , {'Variable Name', binary() }
            , {'Variable Label', binary() }
            , {'Type', binary() }
            , {'Codelist/Controlled Terms', binary() }
            , {'Core', binary() }
            , {'CDISC Notes', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


-module(openapi_export_sdtmig_variables_row).

-include("openapi.hrl").

-export([openapi_export_sdtmig_variables_row/0]).

-export([openapi_export_sdtmig_variables_row/1]).

-export_type([openapi_export_sdtmig_variables_row/0]).

-type openapi_export_sdtmig_variables_row() ::
  [ {'Version', binary() }
  | {'Variable_Order', binary() }
  | {'Class', binary() }
  | {'Dataset_Name', binary() }
  | {'Variable_Name', binary() }
  | {'Variable_Label', binary() }
  | {'Type', binary() }
  | {'Controlled_Terms_Codelist_or_Format', binary() }
  | {'Role', binary() }
  | {'CDISC_Notes', binary() }
  | {'Core', binary() }
  ].


openapi_export_sdtmig_variables_row() ->
    openapi_export_sdtmig_variables_row([]).

openapi_export_sdtmig_variables_row(Fields) ->
  Default = [ {'Version', binary() }
            , {'Variable Order', binary() }
            , {'Class', binary() }
            , {'Dataset Name', binary() }
            , {'Variable Name', binary() }
            , {'Variable Label', binary() }
            , {'Type', binary() }
            , {'Controlled Terms, Codelist or Format', binary() }
            , {'Role', binary() }
            , {'CDISC Notes', binary() }
            , {'Core', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


-module(openapi_export_sdtm_class_variables_row).

-include("openapi.hrl").

-export([openapi_export_sdtm_class_variables_row/0]).

-export([openapi_export_sdtm_class_variables_row/1]).

-export_type([openapi_export_sdtm_class_variables_row/0]).

-type openapi_export_sdtm_class_variables_row() ::
  [ {'Version', binary() }
  | {'Variable_Order', binary() }
  | {'Class', binary() }
  | {'Dataset_Name', binary() }
  | {'Variable_Name', binary() }
  | {'Variable_Label', binary() }
  | {'Type', binary() }
  | {'Controlled_Terms_Codelist_or_Format', binary() }
  | {'Role', binary() }
  | {'Role_Description', binary() }
  | {'Description', binary() }
  ].


openapi_export_sdtm_class_variables_row() ->
    openapi_export_sdtm_class_variables_row([]).

openapi_export_sdtm_class_variables_row(Fields) ->
  Default = [ {'Version', binary() }
            , {'Variable Order', binary() }
            , {'Class', binary() }
            , {'Dataset Name', binary() }
            , {'Variable Name', binary() }
            , {'Variable Label', binary() }
            , {'Type', binary() }
            , {'Controlled Terms, Codelist or Format', binary() }
            , {'Role', binary() }
            , {'Role Description', binary() }
            , {'Description', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


-module(openapi_export_cdash_class_variables_row).

-include("openapi.hrl").

-export([openapi_export_cdash_class_variables_row/0]).

-export([openapi_export_cdash_class_variables_row/1]).

-export_type([openapi_export_cdash_class_variables_row/0]).

-type openapi_export_cdash_class_variables_row() ::
  [ {'Version', binary() }
  | {'Class', binary() }
  | {'Domain', binary() }
  | {'Variable_Order', binary() }
  | {'CDASH_Variable', binary() }
  | {'CDASH_Variable_Label', binary() }
  | {'DRAFT_CDASH_Definition', binary() }
  | {'Domain_Specific', binary() }
  | {'Question_Text', binary() }
  | {'Prompt', binary() }
  | {'Type', binary() }
  | {'SDTM_Target', list(binary()) }
  | {'Mapping_Instructions', binary() }
  | {'Controlled_Terminology_Codelist_Name', binary() }
  | {'Implementation_Notes', binary() }
  ].


openapi_export_cdash_class_variables_row() ->
    openapi_export_cdash_class_variables_row([]).

openapi_export_cdash_class_variables_row(Fields) ->
  Default = [ {'Version', binary() }
            , {'Class', binary() }
            , {'Domain', binary() }
            , {'Variable Order', binary() }
            , {'CDASH Variable', binary() }
            , {'CDASH Variable Label', binary() }
            , {'DRAFT CDASH Definition', binary() }
            , {'Domain Specific', binary() }
            , {'Question Text', binary() }
            , {'Prompt', binary() }
            , {'Type', binary() }
            , {'SDTM Target', list(binary()) }
            , {'Mapping Instructions', binary() }
            , {'Controlled Terminology Codelist Name', binary() }
            , {'Implementation Notes', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


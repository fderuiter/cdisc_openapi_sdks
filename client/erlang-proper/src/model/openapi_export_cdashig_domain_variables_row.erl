-module(openapi_export_cdashig_domain_variables_row).

-include("openapi.hrl").

-export([openapi_export_cdashig_domain_variables_row/0]).

-export([openapi_export_cdashig_domain_variables_row/1]).

-export_type([openapi_export_cdashig_domain_variables_row/0]).

-type openapi_export_cdashig_domain_variables_row() ::
  [ {'Version', binary() }
  | {'Class', binary() }
  | {'Domain', binary() }
  | {'Data_Collection_Scenario', binary() }
  | {'Variable_Order', binary() }
  | {'CDASHIG_Variable', binary() }
  | {'CDASHIG_Variable_Label', binary() }
  | {'DRAFT_CDASHIG_Definition', binary() }
  | {'Question_Text', binary() }
  | {'Prompt', binary() }
  | {'Type', binary() }
  | {'CDASHIG_Core', binary() }
  | {'Case_Report_Form_Completion_Instructions', binary() }
  | {'SDTMIG_Target', list(binary()) }
  | {'Mapping_Instructions', binary() }
  | {'Controlled_Terminology_Codelist_Name', binary() }
  | {'Implementation_Notes', binary() }
  ].


openapi_export_cdashig_domain_variables_row() ->
    openapi_export_cdashig_domain_variables_row([]).

openapi_export_cdashig_domain_variables_row(Fields) ->
  Default = [ {'Version', binary() }
            , {'Class', binary() }
            , {'Domain', binary() }
            , {'Data Collection Scenario', binary() }
            , {'Variable Order', binary() }
            , {'CDASHIG Variable', binary() }
            , {'CDASHIG Variable Label', binary() }
            , {'DRAFT CDASHIG Definition', binary() }
            , {'Question Text', binary() }
            , {'Prompt', binary() }
            , {'Type', binary() }
            , {'CDASHIG Core', binary() }
            , {'Case Report Form Completion Instructions', binary() }
            , {'SDTMIG Target', list(binary()) }
            , {'Mapping Instructions', binary() }
            , {'Controlled Terminology Codelist Name', binary() }
            , {'Implementation Notes', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


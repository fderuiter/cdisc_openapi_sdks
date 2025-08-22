-module(openapi_export_qrs_responses).

-include("openapi.hrl").

-export([openapi_export_qrs_responses/0]).

-export([openapi_export_qrs_responses/1]).

-export_type([openapi_export_qrs_responses/0]).

-type openapi_export_qrs_responses() ::
  [ {'Response_Group', binary() }
  | {'Sequence', binary() }
  | {'Responses_Original_Result_Codelist_C_Code', binary() }
  | {'Responses_Original_Result_Term_C_Code', binary() }
  | {'Responses_Original_Result_Unit_Codelist_C_Code', binary() }
  | {'Responses_Original_Result_Unit_Term_C_Code', binary() }
  | {'Responses_Standardized_Result_Codelist_C_Code', binary() }
  | {'Responses_Standardized_Result_Term_C_Code', binary() }
  | {'Responses_Standardized_Result_Unit_Codelist_C_Code', binary() }
  | {'Responses_Standardized_Result_Unit_Term_C_Code', binary() }
  ].


openapi_export_qrs_responses() ->
    openapi_export_qrs_responses([]).

openapi_export_qrs_responses(Fields) ->
  Default = [ {'Response Group', binary() }
            , {'Sequence', binary() }
            , {'Response&#39;s Original Result Codelist C-Code', binary() }
            , {'Response&#39;s Original Result Term C-Code', binary() }
            , {'Response&#39;s Original Result Unit Codelist C-Code', binary() }
            , {'Response&#39;s Original Result Unit Term C-Code', binary() }
            , {'Response&#39;s Standardized Result Codelist C-Code', binary() }
            , {'Response&#39;s Standardized Result Term C-Code', binary() }
            , {'Response&#39;s Standardized Result Unit Codelist C-Code', binary() }
            , {'Response&#39;s Standardized Result Unit Term C-Code', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


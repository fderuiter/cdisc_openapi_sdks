-module(openapi_export_qrs_responses).

-export([encode/1]).

-export_type([openapi_export_qrs_responses/0]).

-type openapi_export_qrs_responses() ::
    #{ 'Response_Group' => binary(),
       'Sequence' => binary(),
       'Responses_Original_Result_Codelist_C_Code' => binary(),
       'Responses_Original_Result_Term_C_Code' => binary(),
       'Responses_Original_Result_Unit_Codelist_C_Code' => binary(),
       'Responses_Original_Result_Unit_Term_C_Code' => binary(),
       'Responses_Standardized_Result_Codelist_C_Code' => binary(),
       'Responses_Standardized_Result_Term_C_Code' => binary(),
       'Responses_Standardized_Result_Unit_Codelist_C_Code' => binary(),
       'Responses_Standardized_Result_Unit_Term_C_Code' => binary()
     }.

encode(#{ 'Response_Group' := ResponseGroup,
          'Sequence' := Sequence,
          'Responses_Original_Result_Codelist_C_Code' := ResponsesOriginalResultCodelistCCode,
          'Responses_Original_Result_Term_C_Code' := ResponsesOriginalResultTermCCode,
          'Responses_Original_Result_Unit_Codelist_C_Code' := ResponsesOriginalResultUnitCodelistCCode,
          'Responses_Original_Result_Unit_Term_C_Code' := ResponsesOriginalResultUnitTermCCode,
          'Responses_Standardized_Result_Codelist_C_Code' := ResponsesStandardizedResultCodelistCCode,
          'Responses_Standardized_Result_Term_C_Code' := ResponsesStandardizedResultTermCCode,
          'Responses_Standardized_Result_Unit_Codelist_C_Code' := ResponsesStandardizedResultUnitCodelistCCode,
          'Responses_Standardized_Result_Unit_Term_C_Code' := ResponsesStandardizedResultUnitTermCCode
        }) ->
    #{ 'Response Group' => ResponseGroup,
       'Sequence' => Sequence,
       'Response&#39;s Original Result Codelist C-Code' => ResponsesOriginalResultCodelistCCode,
       'Response&#39;s Original Result Term C-Code' => ResponsesOriginalResultTermCCode,
       'Response&#39;s Original Result Unit Codelist C-Code' => ResponsesOriginalResultUnitCodelistCCode,
       'Response&#39;s Original Result Unit Term C-Code' => ResponsesOriginalResultUnitTermCCode,
       'Response&#39;s Standardized Result Codelist C-Code' => ResponsesStandardizedResultCodelistCCode,
       'Response&#39;s Standardized Result Term C-Code' => ResponsesStandardizedResultTermCCode,
       'Response&#39;s Standardized Result Unit Codelist C-Code' => ResponsesStandardizedResultUnitCodelistCCode,
       'Response&#39;s Standardized Result Unit Term C-Code' => ResponsesStandardizedResultUnitTermCCode
     }.

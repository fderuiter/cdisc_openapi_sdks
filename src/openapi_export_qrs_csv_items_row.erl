-module(openapi_export_qrs_csv_items_row).

-export([encode/1]).

-export_type([openapi_export_qrs_csv_items_row/0]).

-type openapi_export_qrs_csv_items_row() ::
    #{ 'QRS_Measure_Name' => binary(),
       'QRS_Measure_Label' => binary(),
       'QRS_Measure_Type' => binary(),
       'Item_Sequence' => binary(),
       'Test_Name' => binary(),
       'Item_Text' => binary(),
       'Tests_Codelist_C_Code' => binary(),
       'Tests_Term_C_Code' => binary(),
       'Test_Codes_Codelist_C_Code' => binary(),
       'Test_Codes_Term_C_Code' => binary(),
       'Subcategorys_Codelist_C_Code' => binary(),
       'Subcategorys_Term_C_Code' => binary(),
       'Evaluators_Codelist_C_Code' => binary(),
       'Evaluators_Term_C_Code' => binary(),
       'Free_form_Responses_Datatype' => binary(),
       'Response_Group' => binary()
     }.

encode(#{ 'QRS_Measure_Name' := QRSMeasureName,
          'QRS_Measure_Label' := QRSMeasureLabel,
          'QRS_Measure_Type' := QRSMeasureType,
          'Item_Sequence' := ItemSequence,
          'Test_Name' := TestName,
          'Item_Text' := ItemText,
          'Tests_Codelist_C_Code' := TestsCodelistCCode,
          'Tests_Term_C_Code' := TestsTermCCode,
          'Test_Codes_Codelist_C_Code' := TestCodesCodelistCCode,
          'Test_Codes_Term_C_Code' := TestCodesTermCCode,
          'Subcategorys_Codelist_C_Code' := SubcategorysCodelistCCode,
          'Subcategorys_Term_C_Code' := SubcategorysTermCCode,
          'Evaluators_Codelist_C_Code' := EvaluatorsCodelistCCode,
          'Evaluators_Term_C_Code' := EvaluatorsTermCCode,
          'Free_form_Responses_Datatype' := FreeFormResponsesDatatype,
          'Response_Group' := ResponseGroup
        }) ->
    #{ 'QRS Measure Name' => QRSMeasureName,
       'QRS Measure Label' => QRSMeasureLabel,
       'QRS Measure Type' => QRSMeasureType,
       'Item Sequence' => ItemSequence,
       'Test Name' => TestName,
       'Item Text' => ItemText,
       'Test&#39;s Codelist C-Code' => TestsCodelistCCode,
       'Test&#39;s Term C-Code' => TestsTermCCode,
       'Test Code&#39;s Codelist C-Code' => TestCodesCodelistCCode,
       'Test Code&#39;s Term C-Code' => TestCodesTermCCode,
       'Subcategory&#39;s Codelist C-Code' => SubcategorysCodelistCCode,
       'Subcategory&#39;s Term C-Code' => SubcategorysTermCCode,
       'Evaluator&#39;s Codelist C-Code' => EvaluatorsCodelistCCode,
       'Evaluator&#39;s Term C-Code' => EvaluatorsTermCCode,
       'Free-form Response&#39;s Datatype' => FreeFormResponsesDatatype,
       'Response Group' => ResponseGroup
     }.

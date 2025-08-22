-module(openapi_export_qrs_workbook_items_row).

-include("openapi.hrl").

-export([openapi_export_qrs_workbook_items_row/0]).

-export([openapi_export_qrs_workbook_items_row/1]).

-export_type([openapi_export_qrs_workbook_items_row/0]).

-type openapi_export_qrs_workbook_items_row() ::
  [ {'Item_Sequence', binary() }
  | {'Test_Name', binary() }
  | {'Item_Text', binary() }
  | {'Tests_Codelist_C_Code', binary() }
  | {'Tests_Term_C_Code', binary() }
  | {'Test_Codes_Codelist_C_Code', binary() }
  | {'Test_Codes_Term_C_Code', binary() }
  | {'Subcategorys_Codelist_C_Code', binary() }
  | {'Subcategorys_Term_C_Code', binary() }
  | {'Evaluators_Codelist_C_Code', binary() }
  | {'Evaluators_Term_C_Code', binary() }
  | {'Free_form_Responses_Datatype', binary() }
  | {'Response_Group', binary() }
  ].


openapi_export_qrs_workbook_items_row() ->
    openapi_export_qrs_workbook_items_row([]).

openapi_export_qrs_workbook_items_row(Fields) ->
  Default = [ {'Item Sequence', binary() }
            , {'Test Name', binary() }
            , {'Item Text', binary() }
            , {'Test&#39;s Codelist C-Code', binary() }
            , {'Test&#39;s Term C-Code', binary() }
            , {'Test Code&#39;s Codelist C-Code', binary() }
            , {'Test Code&#39;s Term C-Code', binary() }
            , {'Subcategory&#39;s Codelist C-Code', binary() }
            , {'Subcategory&#39;s Term C-Code', binary() }
            , {'Evaluator&#39;s Codelist C-Code', binary() }
            , {'Evaluator&#39;s Term C-Code', binary() }
            , {'Free-form Response&#39;s Datatype', binary() }
            , {'Response Group', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


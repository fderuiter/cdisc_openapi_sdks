-module(openapi_export_qrs_workbook).

-include("openapi.hrl").

-export([openapi_export_qrs_workbook/0]).

-export([openapi_export_qrs_workbook/1]).

-export_type([openapi_export_qrs_workbook/0]).

-type openapi_export_qrs_workbook() ::
  [ {'self', openapi_export_qrs_general:openapi_export_qrs_general() }
  | {'items', list(openapi_export_qrs_workbook_items_row:openapi_export_qrs_workbook_items_row()) }
  | {'responses', list(openapi_export_qrs_responses:openapi_export_qrs_responses()) }
  ].


openapi_export_qrs_workbook() ->
    openapi_export_qrs_workbook([]).

openapi_export_qrs_workbook(Fields) ->
  Default = [ {'self', openapi_export_qrs_general:openapi_export_qrs_general() }
            , {'items', list(openapi_export_qrs_workbook_items_row:openapi_export_qrs_workbook_items_row()) }
            , {'responses', list(openapi_export_qrs_responses:openapi_export_qrs_responses()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


-module(openapi_export_qrs_workbook).

-export([encode/1]).

-export_type([openapi_export_qrs_workbook/0]).

-type openapi_export_qrs_workbook() ::
    #{ 'self' => openapi_export_qrs_general:openapi_export_qrs_general(),
       'items' => list(),
       'responses' => list()
     }.

encode(#{ 'self' := Self,
          'items' := Items,
          'responses' := Responses
        }) ->
    #{ 'self' => Self,
       'items' => Items,
       'responses' => Responses
     }.

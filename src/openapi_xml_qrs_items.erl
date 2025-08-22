-module(openapi_xml_qrs_items).

-export([encode/1]).

-export_type([openapi_xml_qrs_items/0]).

-type openapi_xml_qrs_items() ::
    #{ 'self' => openapi_qrs_items:openapi_qrs_items()
     }.

encode(#{ 'self' := Self
        }) ->
    #{ 'self' => Self
     }.

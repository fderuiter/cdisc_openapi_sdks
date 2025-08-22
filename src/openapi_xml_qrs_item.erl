-module(openapi_xml_qrs_item).

-export([encode/1]).

-export_type([openapi_xml_qrs_item/0]).

-type openapi_xml_qrs_item() ::
    #{ 'self' => openapi_qrs_item:openapi_qrs_item()
     }.

encode(#{ 'self' := Self
        }) ->
    #{ 'self' => Self
     }.

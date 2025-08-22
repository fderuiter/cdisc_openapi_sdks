-module(openapi_xml_qrs_product).

-export([encode/1]).

-export_type([openapi_xml_qrs_product/0]).

-type openapi_xml_qrs_product() ::
    #{ 'self' => openapi_qrs_product:openapi_qrs_product()
     }.

encode(#{ 'self' := Self
        }) ->
    #{ 'self' => Self
     }.

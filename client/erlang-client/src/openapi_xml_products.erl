-module(openapi_xml_products).

-export([encode/1]).

-export_type([openapi_xml_products/0]).

-type openapi_xml_products() ::
    #{ 'self' => openapi_products:openapi_products()
     }.

encode(#{ 'self' := Self
        }) ->
    #{ 'self' => Self
     }.

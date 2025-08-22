-module(openapi_xml_adam_product_datastructures).

-export([encode/1]).

-export_type([openapi_xml_adam_product_datastructures/0]).

-type openapi_xml_adam_product_datastructures() ::
    #{ 'self' => openapi_adam_product_datastructures:openapi_adam_product_datastructures()
     }.

encode(#{ 'self' := Self
        }) ->
    #{ 'self' => Self
     }.

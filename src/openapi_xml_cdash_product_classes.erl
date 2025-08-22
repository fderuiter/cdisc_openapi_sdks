-module(openapi_xml_cdash_product_classes).

-export([encode/1]).

-export_type([openapi_xml_cdash_product_classes/0]).

-type openapi_xml_cdash_product_classes() ::
    #{ 'self' => openapi_cdash_product_classes:openapi_cdash_product_classes()
     }.

encode(#{ 'self' := Self
        }) ->
    #{ 'self' => Self
     }.

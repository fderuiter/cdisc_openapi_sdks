-module(openapi_xml_cdash_product_domains).

-export([encode/1]).

-export_type([openapi_xml_cdash_product_domains/0]).

-type openapi_xml_cdash_product_domains() ::
    #{ 'self' => openapi_cdash_product_domains:openapi_cdash_product_domains()
     }.

encode(#{ 'self' := Self
        }) ->
    #{ 'self' => Self
     }.

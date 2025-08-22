-module(openapi_xml_cdash_product).

-export([encode/1]).

-export_type([openapi_xml_cdash_product/0]).

-type openapi_xml_cdash_product() ::
    #{ 'self' => openapi_cdash_product:openapi_cdash_product()
     }.

encode(#{ 'self' := Self
        }) ->
    #{ 'self' => Self
     }.

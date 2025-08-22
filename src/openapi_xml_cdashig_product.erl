-module(openapi_xml_cdashig_product).

-export([encode/1]).

-export_type([openapi_xml_cdashig_product/0]).

-type openapi_xml_cdashig_product() ::
    #{ 'self' => openapi_cdashig_product:openapi_cdashig_product()
     }.

encode(#{ 'self' := Self
        }) ->
    #{ 'self' => Self
     }.

-module(openapi_xml_sendig_product).

-export([encode/1]).

-export_type([openapi_xml_sendig_product/0]).

-type openapi_xml_sendig_product() ::
    #{ 'self' => openapi_sendig_product:openapi_sendig_product()
     }.

encode(#{ 'self' := Self
        }) ->
    #{ 'self' => Self
     }.

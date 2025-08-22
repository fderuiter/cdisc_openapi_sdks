-module(openapi_xml_adam_product).

-export([encode/1]).

-export_type([openapi_xml_adam_product/0]).

-type openapi_xml_adam_product() ::
    #{ 'self' => openapi_adam_product:openapi_adam_product()
     }.

encode(#{ 'self' := Self
        }) ->
    #{ 'self' => Self
     }.

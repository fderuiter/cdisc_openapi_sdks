-module(openapi_xml_sdtm_product).

-export([encode/1]).

-export_type([openapi_xml_sdtm_product/0]).

-type openapi_xml_sdtm_product() ::
    #{ 'self' => openapi_sdtm_product:openapi_sdtm_product()
     }.

encode(#{ 'self' := Self
        }) ->
    #{ 'self' => Self
     }.

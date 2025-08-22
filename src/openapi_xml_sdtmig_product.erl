-module(openapi_xml_sdtmig_product).

-export([encode/1]).

-export_type([openapi_xml_sdtmig_product/0]).

-type openapi_xml_sdtmig_product() ::
    #{ 'self' => openapi_sdtmig_product:openapi_sdtmig_product()
     }.

encode(#{ 'self' := Self
        }) ->
    #{ 'self' => Self
     }.

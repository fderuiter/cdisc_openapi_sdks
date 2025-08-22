-module(openapi_sdtm_product_links).

-export([encode/1]).

-export_type([openapi_sdtm_product_links/0]).

-type openapi_sdtm_product_links() ::
    #{ 'self' => openapi_sdtm_product_ref:openapi_sdtm_product_ref(),
       'priorVersion' => openapi_sdtm_product_ref:openapi_sdtm_product_ref()
     }.

encode(#{ 'self' := Self,
          'priorVersion' := PriorVersion
        }) ->
    #{ 'self' => Self,
       'priorVersion' => PriorVersion
     }.

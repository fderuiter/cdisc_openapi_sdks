-module(openapi_sdtmig_product_links).

-export([encode/1]).

-export_type([openapi_sdtmig_product_links/0]).

-type openapi_sdtmig_product_links() ::
    #{ 'self' => openapi_sdtmig_product_ref:openapi_sdtmig_product_ref(),
       'model' => openapi_sdtm_product_ref:openapi_sdtm_product_ref(),
       'priorVersion' => openapi_sdtmig_product_ref:openapi_sdtmig_product_ref()
     }.

encode(#{ 'self' := Self,
          'model' := Model,
          'priorVersion' := PriorVersion
        }) ->
    #{ 'self' => Self,
       'model' => Model,
       'priorVersion' => PriorVersion
     }.

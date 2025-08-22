-module(openapi_sendig_product_links).

-export([encode/1]).

-export_type([openapi_sendig_product_links/0]).

-type openapi_sendig_product_links() ::
    #{ 'self' => openapi_sendig_product_ref:openapi_sendig_product_ref(),
       'model' => openapi_sdtm_product_ref:openapi_sdtm_product_ref(),
       'priorVersion' => openapi_sendig_product_ref:openapi_sendig_product_ref()
     }.

encode(#{ 'self' := Self,
          'model' := Model,
          'priorVersion' := PriorVersion
        }) ->
    #{ 'self' => Self,
       'model' => Model,
       'priorVersion' => PriorVersion
     }.

-module(openapi_cdashig_product_links).

-export([encode/1]).

-export_type([openapi_cdashig_product_links/0]).

-type openapi_cdashig_product_links() ::
    #{ 'self' => openapi_cdashig_product_ref:openapi_cdashig_product_ref(),
       'model' => openapi_cdash_product_ref:openapi_cdash_product_ref(),
       'priorVersion' => openapi_cdashig_product_ref:openapi_cdashig_product_ref()
     }.

encode(#{ 'self' := Self,
          'model' := Model,
          'priorVersion' := PriorVersion
        }) ->
    #{ 'self' => Self,
       'model' => Model,
       'priorVersion' => PriorVersion
     }.

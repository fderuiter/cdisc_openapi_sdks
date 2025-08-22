-module(openapi_cdash_class_links).

-export([encode/1]).

-export_type([openapi_cdash_class_links/0]).

-type openapi_cdash_class_links() ::
    #{ 'self' => openapi_cdash_class_ref:openapi_cdash_class_ref(),
       'parentProduct' => openapi_cdash_product_ref:openapi_cdash_product_ref(),
       'priorVersion' => openapi_cdash_class_ref:openapi_cdash_class_ref()
     }.

encode(#{ 'self' := Self,
          'parentProduct' := ParentProduct,
          'priorVersion' := PriorVersion
        }) ->
    #{ 'self' => Self,
       'parentProduct' => ParentProduct,
       'priorVersion' => PriorVersion
     }.

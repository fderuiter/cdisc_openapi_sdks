-module(openapi_cdash_domain_links).

-export([encode/1]).

-export_type([openapi_cdash_domain_links/0]).

-type openapi_cdash_domain_links() ::
    #{ 'self' => openapi_cdash_domain_ref:openapi_cdash_domain_ref(),
       'parentProduct' => openapi_cdash_product_ref:openapi_cdash_product_ref(),
       'parentClass' => openapi_cdash_class_ref:openapi_cdash_class_ref(),
       'priorVersion' => openapi_cdash_domain_ref:openapi_cdash_domain_ref()
     }.

encode(#{ 'self' := Self,
          'parentProduct' := ParentProduct,
          'parentClass' := ParentClass,
          'priorVersion' := PriorVersion
        }) ->
    #{ 'self' => Self,
       'parentProduct' => ParentProduct,
       'parentClass' => ParentClass,
       'priorVersion' => PriorVersion
     }.

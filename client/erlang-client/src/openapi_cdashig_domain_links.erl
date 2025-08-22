-module(openapi_cdashig_domain_links).

-export([encode/1]).

-export_type([openapi_cdashig_domain_links/0]).

-type openapi_cdashig_domain_links() ::
    #{ 'self' => openapi_cdashig_domain_ref:openapi_cdashig_domain_ref(),
       'parentProduct' => openapi_cdashig_product_ref:openapi_cdashig_product_ref(),
       'parentClass' => openapi_cdashig_class_ref:openapi_cdashig_class_ref(),
       'priorVersion' => openapi_cdashig_domain_ref:openapi_cdashig_domain_ref(),
       'scenarios' => list()
     }.

encode(#{ 'self' := Self,
          'parentProduct' := ParentProduct,
          'parentClass' := ParentClass,
          'priorVersion' := PriorVersion,
          'scenarios' := Scenarios
        }) ->
    #{ 'self' => Self,
       'parentProduct' => ParentProduct,
       'parentClass' => ParentClass,
       'priorVersion' => PriorVersion,
       'scenarios' => Scenarios
     }.

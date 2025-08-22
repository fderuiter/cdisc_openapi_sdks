-module(openapi_cdashig_scenario_links).

-export([encode/1]).

-export_type([openapi_cdashig_scenario_links/0]).

-type openapi_cdashig_scenario_links() ::
    #{ 'self' => openapi_cdashig_scenario_ref:openapi_cdashig_scenario_ref(),
       'parentProduct' => openapi_cdashig_product_ref:openapi_cdashig_product_ref(),
       'parentClass' => openapi_cdashig_class_ref:openapi_cdashig_class_ref(),
       'parentDomain' => openapi_cdashig_domain_ref:openapi_cdashig_domain_ref(),
       'priorVersion' => openapi_cdashig_scenario_ref:openapi_cdashig_scenario_ref()
     }.

encode(#{ 'self' := Self,
          'parentProduct' := ParentProduct,
          'parentClass' := ParentClass,
          'parentDomain' := ParentDomain,
          'priorVersion' := PriorVersion
        }) ->
    #{ 'self' => Self,
       'parentProduct' => ParentProduct,
       'parentClass' => ParentClass,
       'parentDomain' => ParentDomain,
       'priorVersion' => PriorVersion
     }.

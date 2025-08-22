-module(openapi_cdashig_scenario_fields_links).

-export([encode/1]).

-export_type([openapi_cdashig_scenario_fields_links/0]).

-type openapi_cdashig_scenario_fields_links() ::
    #{ 'self' => openapi_cdashig_scenario_fields_ref:openapi_cdashig_scenario_fields_ref(),
       'parentProduct' => openapi_cdashig_product_ref:openapi_cdashig_product_ref(),
       'parentClass' => openapi_cdashig_class_ref:openapi_cdashig_class_ref(),
       'parentDomain' => openapi_cdashig_domain_ref:openapi_cdashig_domain_ref(),
       'fields' => list()
     }.

encode(#{ 'self' := Self,
          'parentProduct' := ParentProduct,
          'parentClass' := ParentClass,
          'parentDomain' := ParentDomain,
          'fields' := Fields
        }) ->
    #{ 'self' => Self,
       'parentProduct' => ParentProduct,
       'parentClass' => ParentClass,
       'parentDomain' => ParentDomain,
       'fields' => Fields
     }.

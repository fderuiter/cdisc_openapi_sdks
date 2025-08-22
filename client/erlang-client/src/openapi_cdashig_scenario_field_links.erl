-module(openapi_cdashig_scenario_field_links).

-export([encode/1]).

-export_type([openapi_cdashig_scenario_field_links/0]).

-type openapi_cdashig_scenario_field_links() ::
    #{ 'self' => openapi_cdashig_scenario_field_ref:openapi_cdashig_scenario_field_ref(),
       'codelist' => list(),
       'parentProduct' => openapi_cdashig_product_ref:openapi_cdashig_product_ref(),
       'parentDomain' => openapi_cdashig_domain_ref:openapi_cdashig_domain_ref(),
       'parentScenario' => openapi_cdashig_scenario_ref:openapi_cdashig_scenario_ref(),
       'rootItem' => openapi_root_cdashig_scenario_field_ref:openapi_root_cdashig_scenario_field_ref(),
       'priorVersion' => openapi_cdashig_scenario_field_ref:openapi_cdashig_scenario_field_ref(),
       'sdtmigDatasetMappingTargets' => list()
     }.

encode(#{ 'self' := Self,
          'codelist' := Codelist,
          'parentProduct' := ParentProduct,
          'parentDomain' := ParentDomain,
          'parentScenario' := ParentScenario,
          'rootItem' := RootItem,
          'priorVersion' := PriorVersion,
          'sdtmigDatasetMappingTargets' := SdtmigDatasetMappingTargets
        }) ->
    #{ 'self' => Self,
       'codelist' => Codelist,
       'parentProduct' => ParentProduct,
       'parentDomain' => ParentDomain,
       'parentScenario' => ParentScenario,
       'rootItem' => RootItem,
       'priorVersion' => PriorVersion,
       'sdtmigDatasetMappingTargets' => SdtmigDatasetMappingTargets
     }.

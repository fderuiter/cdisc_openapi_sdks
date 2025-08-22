-module(openapi_cdashig_domain_field_links).

-export([encode/1]).

-export_type([openapi_cdashig_domain_field_links/0]).

-type openapi_cdashig_domain_field_links() ::
    #{ 'self' => openapi_cdashig_domain_field_ref:openapi_cdashig_domain_field_ref(),
       'codelist' => list(),
       'parentProduct' => openapi_cdashig_product_ref:openapi_cdashig_product_ref(),
       'parentDomain' => openapi_cdashig_domain_ref:openapi_cdashig_domain_ref(),
       'rootItem' => openapi_root_cdashig_domain_field_ref:openapi_root_cdashig_domain_field_ref(),
       'priorVersion' => openapi_cdashig_domain_field_ref:openapi_cdashig_domain_field_ref(),
       'sdtmClassMappingTargets' => list(),
       'sdtmigDatasetMappingTargets' => list()
     }.

encode(#{ 'self' := Self,
          'codelist' := Codelist,
          'parentProduct' := ParentProduct,
          'parentDomain' := ParentDomain,
          'rootItem' := RootItem,
          'priorVersion' := PriorVersion,
          'sdtmClassMappingTargets' := SdtmClassMappingTargets,
          'sdtmigDatasetMappingTargets' := SdtmigDatasetMappingTargets
        }) ->
    #{ 'self' => Self,
       'codelist' => Codelist,
       'parentProduct' => ParentProduct,
       'parentDomain' => ParentDomain,
       'rootItem' => RootItem,
       'priorVersion' => PriorVersion,
       'sdtmClassMappingTargets' => SdtmClassMappingTargets,
       'sdtmigDatasetMappingTargets' => SdtmigDatasetMappingTargets
     }.

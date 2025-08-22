-module(openapi_cdash_domain_field_links).

-export([encode/1]).

-export_type([openapi_cdash_domain_field_links/0]).

-type openapi_cdash_domain_field_links() ::
    #{ 'self' => openapi_cdash_domain_field_ref:openapi_cdash_domain_field_ref(),
       'codelist' => list(),
       'parentProduct' => openapi_cdash_product_ref:openapi_cdash_product_ref(),
       'parentClass' => openapi_cdash_class_ref:openapi_cdash_class_ref(),
       'parentDomain' => openapi_cdash_domain_ref:openapi_cdash_domain_ref(),
       'rootItem' => openapi_root_cdash_domain_field_ref:openapi_root_cdash_domain_field_ref(),
       'priorVersion' => openapi_cdash_domain_field_ref:openapi_cdash_domain_field_ref(),
       'sdtmDatasetMappingTargets' => list(),
       'sdtmigDatasetMappingTargets' => list()
     }.

encode(#{ 'self' := Self,
          'codelist' := Codelist,
          'parentProduct' := ParentProduct,
          'parentClass' := ParentClass,
          'parentDomain' := ParentDomain,
          'rootItem' := RootItem,
          'priorVersion' := PriorVersion,
          'sdtmDatasetMappingTargets' := SdtmDatasetMappingTargets,
          'sdtmigDatasetMappingTargets' := SdtmigDatasetMappingTargets
        }) ->
    #{ 'self' => Self,
       'codelist' => Codelist,
       'parentProduct' => ParentProduct,
       'parentClass' => ParentClass,
       'parentDomain' => ParentDomain,
       'rootItem' => RootItem,
       'priorVersion' => PriorVersion,
       'sdtmDatasetMappingTargets' => SdtmDatasetMappingTargets,
       'sdtmigDatasetMappingTargets' => SdtmigDatasetMappingTargets
     }.

-module(openapi_cdash_class_field_links).

-export([encode/1]).

-export_type([openapi_cdash_class_field_links/0]).

-type openapi_cdash_class_field_links() ::
    #{ 'self' => openapi_cdash_class_field_ref:openapi_cdash_class_field_ref(),
       'codelist' => list(),
       'parentProduct' => openapi_cdash_product_ref:openapi_cdash_product_ref(),
       'parentClass' => openapi_cdash_class_ref:openapi_cdash_class_ref(),
       'rootItem' => openapi_root_cdash_class_field_ref:openapi_root_cdash_class_field_ref(),
       'priorVersion' => openapi_cdash_class_field_ref:openapi_cdash_class_field_ref(),
       'sdtmClassMappingTargets' => list(),
       'sdtmDatasetMappingTargets' => list()
     }.

encode(#{ 'self' := Self,
          'codelist' := Codelist,
          'parentProduct' := ParentProduct,
          'parentClass' := ParentClass,
          'rootItem' := RootItem,
          'priorVersion' := PriorVersion,
          'sdtmClassMappingTargets' := SdtmClassMappingTargets,
          'sdtmDatasetMappingTargets' := SdtmDatasetMappingTargets
        }) ->
    #{ 'self' => Self,
       'codelist' => Codelist,
       'parentProduct' => ParentProduct,
       'parentClass' => ParentClass,
       'rootItem' => RootItem,
       'priorVersion' => PriorVersion,
       'sdtmClassMappingTargets' => SdtmClassMappingTargets,
       'sdtmDatasetMappingTargets' => SdtmDatasetMappingTargets
     }.

-module(openapi_sdtm_class_variable_links).

-export([encode/1]).

-export_type([openapi_sdtm_class_variable_links/0]).

-type openapi_sdtm_class_variable_links() ::
    #{ 'self' => openapi_sdtm_class_variable_ref:openapi_sdtm_class_variable_ref(),
       'parentProduct' => openapi_sdtm_product_ref:openapi_sdtm_product_ref(),
       'parentClass' => openapi_sdtm_class_ref:openapi_sdtm_class_ref(),
       'qualifiesVariables' => list(),
       'rootItem' => openapi_root_sdtm_class_variable_ref:openapi_root_sdtm_class_variable_ref(),
       'priorVersion' => openapi_sdtm_class_variable_ref:openapi_sdtm_class_variable_ref()
     }.

encode(#{ 'self' := Self,
          'parentProduct' := ParentProduct,
          'parentClass' := ParentClass,
          'qualifiesVariables' := QualifiesVariables,
          'rootItem' := RootItem,
          'priorVersion' := PriorVersion
        }) ->
    #{ 'self' => Self,
       'parentProduct' => ParentProduct,
       'parentClass' => ParentClass,
       'qualifiesVariables' => QualifiesVariables,
       'rootItem' => RootItem,
       'priorVersion' => PriorVersion
     }.

-module(openapi_sdtm_dataset_links).

-export([encode/1]).

-export_type([openapi_sdtm_dataset_links/0]).

-type openapi_sdtm_dataset_links() ::
    #{ 'self' => openapi_sdtm_dataset_ref:openapi_sdtm_dataset_ref(),
       'parentProduct' => openapi_sdtm_product_ref:openapi_sdtm_product_ref(),
       'parentClass' => openapi_sdtm_class_ref:openapi_sdtm_class_ref(),
       'priorVersion' => openapi_sdtm_dataset_ref:openapi_sdtm_dataset_ref()
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

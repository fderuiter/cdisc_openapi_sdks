-module(openapi_sendig_dataset_links).

-export([encode/1]).

-export_type([openapi_sendig_dataset_links/0]).

-type openapi_sendig_dataset_links() ::
    #{ 'self' => openapi_sendig_dataset_ref:openapi_sendig_dataset_ref(),
       'modelDataset' => openapi_sdtm_dataset_ref:openapi_sdtm_dataset_ref(),
       'parentProduct' => openapi_sendig_product_ref:openapi_sendig_product_ref(),
       'parentClass' => openapi_sendig_class_ref:openapi_sendig_class_ref(),
       'priorVersion' => openapi_sendig_dataset_ref:openapi_sendig_dataset_ref()
     }.

encode(#{ 'self' := Self,
          'modelDataset' := ModelDataset,
          'parentProduct' := ParentProduct,
          'parentClass' := ParentClass,
          'priorVersion' := PriorVersion
        }) ->
    #{ 'self' => Self,
       'modelDataset' => ModelDataset,
       'parentProduct' => ParentProduct,
       'parentClass' => ParentClass,
       'priorVersion' => PriorVersion
     }.

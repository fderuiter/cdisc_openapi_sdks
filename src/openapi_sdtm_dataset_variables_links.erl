-module(openapi_sdtm_dataset_variables_links).

-export([encode/1]).

-export_type([openapi_sdtm_dataset_variables_links/0]).

-type openapi_sdtm_dataset_variables_links() ::
    #{ 'self' => openapi_sdtm_dataset_variables_ref:openapi_sdtm_dataset_variables_ref(),
       'parentProduct' => openapi_sdtm_product_ref:openapi_sdtm_product_ref(),
       'parentClass' => openapi_sdtm_class_ref:openapi_sdtm_class_ref(),
       'priorVersion' => openapi_sdtm_dataset_variables_ref:openapi_sdtm_dataset_variables_ref(),
       'datasetVariables' => list()
     }.

encode(#{ 'self' := Self,
          'parentProduct' := ParentProduct,
          'parentClass' := ParentClass,
          'priorVersion' := PriorVersion,
          'datasetVariables' := DatasetVariables
        }) ->
    #{ 'self' => Self,
       'parentProduct' => ParentProduct,
       'parentClass' => ParentClass,
       'priorVersion' => PriorVersion,
       'datasetVariables' => DatasetVariables
     }.

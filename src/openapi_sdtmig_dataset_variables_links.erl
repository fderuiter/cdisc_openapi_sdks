-module(openapi_sdtmig_dataset_variables_links).

-export([encode/1]).

-export_type([openapi_sdtmig_dataset_variables_links/0]).

-type openapi_sdtmig_dataset_variables_links() ::
    #{ 'self' => openapi_sdtmig_dataset_variables_ref:openapi_sdtmig_dataset_variables_ref(),
       'modelDataset' => openapi_sdtm_dataset_ref:openapi_sdtm_dataset_ref(),
       'parentProduct' => openapi_sdtmig_product_ref:openapi_sdtmig_product_ref(),
       'parentClass' => openapi_sdtmig_class_ref:openapi_sdtmig_class_ref(),
       'priorVersion' => openapi_sdtmig_dataset_variables_ref:openapi_sdtmig_dataset_variables_ref(),
       'datasetVariables' => list()
     }.

encode(#{ 'self' := Self,
          'modelDataset' := ModelDataset,
          'parentProduct' := ParentProduct,
          'parentClass' := ParentClass,
          'priorVersion' := PriorVersion,
          'datasetVariables' := DatasetVariables
        }) ->
    #{ 'self' => Self,
       'modelDataset' => ModelDataset,
       'parentProduct' => ParentProduct,
       'parentClass' => ParentClass,
       'priorVersion' => PriorVersion,
       'datasetVariables' => DatasetVariables
     }.

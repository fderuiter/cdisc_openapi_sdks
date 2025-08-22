-module(openapi_sendig_dataset_variable_links).

-export([encode/1]).

-export_type([openapi_sendig_dataset_variable_links/0]).

-type openapi_sendig_dataset_variable_links() ::
    #{ 'self' => openapi_sendig_dataset_variable_ref:openapi_sendig_dataset_variable_ref(),
       'codelist' => list(),
       'modelClassVariable' => openapi_sdtm_class_variable_ref:openapi_sdtm_class_variable_ref(),
       'modelDatasetVariable' => openapi_sdtm_dataset_variable_ref:openapi_sdtm_dataset_variable_ref(),
       'parentProduct' => openapi_sendig_product_ref:openapi_sendig_product_ref(),
       'parentDataset' => openapi_sendig_dataset_ref:openapi_sendig_dataset_ref(),
       'rootItem' => openapi_root_sendig_dataset_variable_ref:openapi_root_sendig_dataset_variable_ref(),
       'priorVersion' => openapi_sendig_dataset_variable_ref:openapi_sendig_dataset_variable_ref()
     }.

encode(#{ 'self' := Self,
          'codelist' := Codelist,
          'modelClassVariable' := ModelClassVariable,
          'modelDatasetVariable' := ModelDatasetVariable,
          'parentProduct' := ParentProduct,
          'parentDataset' := ParentDataset,
          'rootItem' := RootItem,
          'priorVersion' := PriorVersion
        }) ->
    #{ 'self' => Self,
       'codelist' => Codelist,
       'modelClassVariable' => ModelClassVariable,
       'modelDatasetVariable' => ModelDatasetVariable,
       'parentProduct' => ParentProduct,
       'parentDataset' => ParentDataset,
       'rootItem' => RootItem,
       'priorVersion' => PriorVersion
     }.

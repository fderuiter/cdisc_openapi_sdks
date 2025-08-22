-module(openapi_sdtm_datasets_links).

-export([encode/1]).

-export_type([openapi_sdtm_datasets_links/0]).

-type openapi_sdtm_datasets_links() ::
    #{ 'self' => openapi_sdtm_datasets_ref:openapi_sdtm_datasets_ref(),
       'parentProduct' => openapi_sdtm_product_ref:openapi_sdtm_product_ref(),
       'priorVersion' => openapi_sdtm_datasets_ref:openapi_sdtm_datasets_ref(),
       'datasets' => list()
     }.

encode(#{ 'self' := Self,
          'parentProduct' := ParentProduct,
          'priorVersion' := PriorVersion,
          'datasets' := Datasets
        }) ->
    #{ 'self' => Self,
       'parentProduct' => ParentProduct,
       'priorVersion' => PriorVersion,
       'datasets' => Datasets
     }.

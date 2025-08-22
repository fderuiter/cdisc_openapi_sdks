-module(openapi_sendig_datasets_links).

-export([encode/1]).

-export_type([openapi_sendig_datasets_links/0]).

-type openapi_sendig_datasets_links() ::
    #{ 'self' => openapi_sendig_datasets_ref:openapi_sendig_datasets_ref(),
       'parentProduct' => openapi_sendig_product_ref:openapi_sendig_product_ref(),
       'datasets' => list()
     }.

encode(#{ 'self' := Self,
          'parentProduct' := ParentProduct,
          'datasets' := Datasets
        }) ->
    #{ 'self' => Self,
       'parentProduct' => ParentProduct,
       'datasets' => Datasets
     }.

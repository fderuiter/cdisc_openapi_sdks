-module(openapi_cdashig_product_classes_links).

-export([encode/1]).

-export_type([openapi_cdashig_product_classes_links/0]).

-type openapi_cdashig_product_classes_links() ::
    #{ 'self' => openapi_cdashig_product_classes_ref:openapi_cdashig_product_classes_ref(),
       'parentProduct' => openapi_cdashig_product_ref:openapi_cdashig_product_ref(),
       'classes' => list()
     }.

encode(#{ 'self' := Self,
          'parentProduct' := ParentProduct,
          'classes' := Classes
        }) ->
    #{ 'self' => Self,
       'parentProduct' => ParentProduct,
       'classes' => Classes
     }.

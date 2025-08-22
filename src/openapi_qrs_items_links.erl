-module(openapi_qrs_items_links).

-export([encode/1]).

-export_type([openapi_qrs_items_links/0]).

-type openapi_qrs_items_links() ::
    #{ 'self' => openapi_qrs_items_ref:openapi_qrs_items_ref(),
       'parentProduct' => openapi_qrs_product_ref:openapi_qrs_product_ref(),
       'items' => list()
     }.

encode(#{ 'self' := Self,
          'parentProduct' := ParentProduct,
          'items' := Items
        }) ->
    #{ 'self' => Self,
       'parentProduct' => ParentProduct,
       'items' => Items
     }.

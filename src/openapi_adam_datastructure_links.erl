-module(openapi_adam_datastructure_links).

-export([encode/1]).

-export_type([openapi_adam_datastructure_links/0]).

-type openapi_adam_datastructure_links() ::
    #{ 'self' => openapi_adam_datastructure_ref:openapi_adam_datastructure_ref(),
       'parentProduct' => openapi_adam_product_ref:openapi_adam_product_ref(),
       'priorVersion' => openapi_adam_datastructure_ref:openapi_adam_datastructure_ref()
     }.

encode(#{ 'self' := Self,
          'parentProduct' := ParentProduct,
          'priorVersion' := PriorVersion
        }) ->
    #{ 'self' => Self,
       'parentProduct' => ParentProduct,
       'priorVersion' => PriorVersion
     }.

-module(openapi_adam_varset_links).

-export([encode/1]).

-export_type([openapi_adam_varset_links/0]).

-type openapi_adam_varset_links() ::
    #{ 'self' => openapi_adam_varset_ref:openapi_adam_varset_ref(),
       'parentProduct' => openapi_adam_product_ref:openapi_adam_product_ref(),
       'parentDatastructure' => openapi_adam_datastructure_ref:openapi_adam_datastructure_ref(),
       'priorVersion' => openapi_adam_varset_ref:openapi_adam_varset_ref()
     }.

encode(#{ 'self' := Self,
          'parentProduct' := ParentProduct,
          'parentDatastructure' := ParentDatastructure,
          'priorVersion' := PriorVersion
        }) ->
    #{ 'self' => Self,
       'parentProduct' => ParentProduct,
       'parentDatastructure' => ParentDatastructure,
       'priorVersion' => PriorVersion
     }.

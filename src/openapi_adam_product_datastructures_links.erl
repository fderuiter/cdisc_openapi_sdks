-module(openapi_adam_product_datastructures_links).

-export([encode/1]).

-export_type([openapi_adam_product_datastructures_links/0]).

-type openapi_adam_product_datastructures_links() ::
    #{ 'self' => openapi_adam_product_datastructures_ref:openapi_adam_product_datastructures_ref(),
       'priorVersion' => openapi_adam_product_datastructures_ref:openapi_adam_product_datastructures_ref(),
       'dataStructures' => list()
     }.

encode(#{ 'self' := Self,
          'priorVersion' := PriorVersion,
          'dataStructures' := DataStructures
        }) ->
    #{ 'self' => Self,
       'priorVersion' => PriorVersion,
       'dataStructures' => DataStructures
     }.

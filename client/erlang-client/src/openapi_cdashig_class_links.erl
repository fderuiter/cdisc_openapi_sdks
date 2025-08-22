-module(openapi_cdashig_class_links).

-export([encode/1]).

-export_type([openapi_cdashig_class_links/0]).

-type openapi_cdashig_class_links() ::
    #{ 'self' => openapi_cdashig_class_ref:openapi_cdashig_class_ref(),
       'modelClass' => openapi_cdash_class_ref:openapi_cdash_class_ref(),
       'parentProduct' => openapi_cdashig_product_ref:openapi_cdashig_product_ref(),
       'parentClass' => openapi_cdashig_class_ref:openapi_cdashig_class_ref(),
       'subclasses' => list(),
       'priorVersion' => openapi_cdashig_class_ref:openapi_cdashig_class_ref()
     }.

encode(#{ 'self' := Self,
          'modelClass' := ModelClass,
          'parentProduct' := ParentProduct,
          'parentClass' := ParentClass,
          'subclasses' := Subclasses,
          'priorVersion' := PriorVersion
        }) ->
    #{ 'self' => Self,
       'modelClass' => ModelClass,
       'parentProduct' => ParentProduct,
       'parentClass' => ParentClass,
       'subclasses' => Subclasses,
       'priorVersion' => PriorVersion
     }.

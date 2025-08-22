-module(openapi_sendig_class_links).

-export([encode/1]).

-export_type([openapi_sendig_class_links/0]).

-type openapi_sendig_class_links() ::
    #{ 'self' => openapi_sendig_class_ref:openapi_sendig_class_ref(),
       'modelClass' => openapi_sdtm_class_ref:openapi_sdtm_class_ref(),
       'parentProduct' => openapi_sendig_product_ref:openapi_sendig_product_ref(),
       'parentClass' => openapi_sendig_class_ref:openapi_sendig_class_ref(),
       'subclasses' => list(),
       'priorVersion' => openapi_sendig_class_ref:openapi_sendig_class_ref()
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

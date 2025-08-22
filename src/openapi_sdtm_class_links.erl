-module(openapi_sdtm_class_links).

-export([encode/1]).

-export_type([openapi_sdtm_class_links/0]).

-type openapi_sdtm_class_links() ::
    #{ 'self' => openapi_sdtm_class_ref:openapi_sdtm_class_ref(),
       'parentProduct' => openapi_sdtm_product_ref:openapi_sdtm_product_ref(),
       'parentClass' => openapi_sdtm_class_ref:openapi_sdtm_class_ref(),
       'subclasses' => list(),
       'priorVersion' => openapi_sdtm_class_ref:openapi_sdtm_class_ref()
     }.

encode(#{ 'self' := Self,
          'parentProduct' := ParentProduct,
          'parentClass' := ParentClass,
          'subclasses' := Subclasses,
          'priorVersion' := PriorVersion
        }) ->
    #{ 'self' => Self,
       'parentProduct' => ParentProduct,
       'parentClass' => ParentClass,
       'subclasses' => Subclasses,
       'priorVersion' => PriorVersion
     }.

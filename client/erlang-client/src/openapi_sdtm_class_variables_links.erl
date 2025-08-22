-module(openapi_sdtm_class_variables_links).

-export([encode/1]).

-export_type([openapi_sdtm_class_variables_links/0]).

-type openapi_sdtm_class_variables_links() ::
    #{ 'self' => openapi_sdtm_class_variables_ref:openapi_sdtm_class_variables_ref(),
       'parentProduct' => openapi_sdtm_product_ref:openapi_sdtm_product_ref(),
       'priorVersion' => openapi_sdtm_class_variables_ref:openapi_sdtm_class_variables_ref(),
       'classVariables' => list()
     }.

encode(#{ 'self' := Self,
          'parentProduct' := ParentProduct,
          'priorVersion' := PriorVersion,
          'classVariables' := ClassVariables
        }) ->
    #{ 'self' => Self,
       'parentProduct' => ParentProduct,
       'priorVersion' => PriorVersion,
       'classVariables' => ClassVariables
     }.

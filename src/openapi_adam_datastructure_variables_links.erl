-module(openapi_adam_datastructure_variables_links).

-export([encode/1]).

-export_type([openapi_adam_datastructure_variables_links/0]).

-type openapi_adam_datastructure_variables_links() ::
    #{ 'self' => openapi_adam_datastructure_variables_ref:openapi_adam_datastructure_variables_ref(),
       'parentProduct' => openapi_adam_product_ref:openapi_adam_product_ref(),
       'priorVersion' => openapi_adam_datastructure_variables_ref:openapi_adam_datastructure_variables_ref(),
       'analysisVariables' => list()
     }.

encode(#{ 'self' := Self,
          'parentProduct' := ParentProduct,
          'priorVersion' := PriorVersion,
          'analysisVariables' := AnalysisVariables
        }) ->
    #{ 'self' => Self,
       'parentProduct' => ParentProduct,
       'priorVersion' => PriorVersion,
       'analysisVariables' => AnalysisVariables
     }.

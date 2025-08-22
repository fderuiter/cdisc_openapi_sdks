-module(openapi_adam_datastructure_varsets_links).

-export([encode/1]).

-export_type([openapi_adam_datastructure_varsets_links/0]).

-type openapi_adam_datastructure_varsets_links() ::
    #{ 'self' => openapi_adam_datastructure_varsets_ref:openapi_adam_datastructure_varsets_ref(),
       'parentProduct' => openapi_adam_product_ref:openapi_adam_product_ref(),
       'priorVersion' => openapi_adam_datastructure_varsets_ref:openapi_adam_datastructure_varsets_ref(),
       'analysisVariableSets' => list()
     }.

encode(#{ 'self' := Self,
          'parentProduct' := ParentProduct,
          'priorVersion' := PriorVersion,
          'analysisVariableSets' := AnalysisVariableSets
        }) ->
    #{ 'self' => Self,
       'parentProduct' => ParentProduct,
       'priorVersion' => PriorVersion,
       'analysisVariableSets' => AnalysisVariableSets
     }.

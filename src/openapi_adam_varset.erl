-module(openapi_adam_varset).

-export([encode/1]).

-export_type([openapi_adam_varset/0]).

-type openapi_adam_varset() ::
    #{ 'ordinal' => binary(),
       'name' => binary(),
       'label' => binary(),
       'description' => binary(),
       '_links' => openapi_adam_varset_links:openapi_adam_varset_links(),
       'analysisVariables' => list()
     }.

encode(#{ 'ordinal' := Ordinal,
          'name' := Name,
          'label' := Label,
          'description' := Description,
          '_links' := Links,
          'analysisVariables' := AnalysisVariables
        }) ->
    #{ 'ordinal' => Ordinal,
       'name' => Name,
       'label' => Label,
       'description' => Description,
       '_links' => Links,
       'analysisVariables' => AnalysisVariables
     }.

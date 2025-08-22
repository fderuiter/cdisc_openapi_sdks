-module(openapi_adam_datastructure).

-export([encode/1]).

-export_type([openapi_adam_datastructure/0]).

-type openapi_adam_datastructure() ::
    #{ 'ordinal' => binary(),
       'name' => binary(),
       'label' => binary(),
       'description' => binary(),
       'class' => binary(),
       '_links' => openapi_adam_datastructure_links:openapi_adam_datastructure_links(),
       'analysisVariableSets' => list()
     }.

encode(#{ 'ordinal' := Ordinal,
          'name' := Name,
          'label' := Label,
          'description' := Description,
          'class' := Class,
          '_links' := Links,
          'analysisVariableSets' := AnalysisVariableSets
        }) ->
    #{ 'ordinal' => Ordinal,
       'name' => Name,
       'label' => Label,
       'description' => Description,
       'class' => Class,
       '_links' => Links,
       'analysisVariableSets' => AnalysisVariableSets
     }.

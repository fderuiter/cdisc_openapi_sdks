-module(openapi_adam_datastructure_varsets).

-export([encode/1]).

-export_type([openapi_adam_datastructure_varsets/0]).

-type openapi_adam_datastructure_varsets() ::
    #{ 'ordinal' => binary(),
       'name' => binary(),
       'label' => binary(),
       'description' => binary(),
       'class' => binary(),
       '_links' => openapi_adam_datastructure_varsets_links:openapi_adam_datastructure_varsets_links()
     }.

encode(#{ 'ordinal' := Ordinal,
          'name' := Name,
          'label' := Label,
          'description' := Description,
          'class' := Class,
          '_links' := Links
        }) ->
    #{ 'ordinal' => Ordinal,
       'name' => Name,
       'label' => Label,
       'description' => Description,
       'class' => Class,
       '_links' => Links
     }.

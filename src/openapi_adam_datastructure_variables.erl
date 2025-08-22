-module(openapi_adam_datastructure_variables).

-export([encode/1]).

-export_type([openapi_adam_datastructure_variables/0]).

-type openapi_adam_datastructure_variables() ::
    #{ 'ordinal' => binary(),
       'name' => binary(),
       'label' => binary(),
       'description' => binary(),
       'class' => binary(),
       '_links' => openapi_adam_datastructure_variables_links:openapi_adam_datastructure_variables_links()
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

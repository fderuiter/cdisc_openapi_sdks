-module(openapi_cdashig_class_scenarios).

-export([encode/1]).

-export_type([openapi_cdashig_class_scenarios/0]).

-type openapi_cdashig_class_scenarios() ::
    #{ 'ordinal' => binary(),
       'name' => binary(),
       'label' => binary(),
       'description' => binary(),
       '_links' => openapi_cdashig_class_scenarios_links:openapi_cdashig_class_scenarios_links()
     }.

encode(#{ 'ordinal' := Ordinal,
          'name' := Name,
          'label' := Label,
          'description' := Description,
          '_links' := Links
        }) ->
    #{ 'ordinal' => Ordinal,
       'name' => Name,
       'label' => Label,
       'description' => Description,
       '_links' => Links
     }.

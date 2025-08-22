-module(openapi_cdashig_class).

-export([encode/1]).

-export_type([openapi_cdashig_class/0]).

-type openapi_cdashig_class() ::
    #{ 'ordinal' => binary(),
       'name' => binary(),
       'label' => binary(),
       'description' => binary(),
       '_links' => openapi_cdashig_class_links:openapi_cdashig_class_links(),
       'domains' => list(),
       'scenarios' => list()
     }.

encode(#{ 'ordinal' := Ordinal,
          'name' := Name,
          'label' := Label,
          'description' := Description,
          '_links' := Links,
          'domains' := Domains,
          'scenarios' := Scenarios
        }) ->
    #{ 'ordinal' => Ordinal,
       'name' => Name,
       'label' => Label,
       'description' => Description,
       '_links' => Links,
       'domains' => Domains,
       'scenarios' => Scenarios
     }.

-module(openapi_sendig_class).

-export([encode/1]).

-export_type([openapi_sendig_class/0]).

-type openapi_sendig_class() ::
    #{ 'ordinal' => binary(),
       'name' => binary(),
       'label' => binary(),
       'description' => binary(),
       '_links' => openapi_sendig_class_links:openapi_sendig_class_links(),
       'datasets' => list()
     }.

encode(#{ 'ordinal' := Ordinal,
          'name' := Name,
          'label' := Label,
          'description' := Description,
          '_links' := Links,
          'datasets' := Datasets
        }) ->
    #{ 'ordinal' => Ordinal,
       'name' => Name,
       'label' => Label,
       'description' => Description,
       '_links' => Links,
       'datasets' => Datasets
     }.

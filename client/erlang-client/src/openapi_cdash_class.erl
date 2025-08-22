-module(openapi_cdash_class).

-export([encode/1]).

-export_type([openapi_cdash_class/0]).

-type openapi_cdash_class() ::
    #{ 'ordinal' => binary(),
       'name' => binary(),
       'label' => binary(),
       'description' => binary(),
       '_links' => openapi_cdash_class_links:openapi_cdash_class_links(),
       'cdashModelFields' => list()
     }.

encode(#{ 'ordinal' := Ordinal,
          'name' := Name,
          'label' := Label,
          'description' := Description,
          '_links' := Links,
          'cdashModelFields' := CdashModelFields
        }) ->
    #{ 'ordinal' => Ordinal,
       'name' => Name,
       'label' => Label,
       'description' => Description,
       '_links' => Links,
       'cdashModelFields' => CdashModelFields
     }.

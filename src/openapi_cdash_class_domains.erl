-module(openapi_cdash_class_domains).

-export([encode/1]).

-export_type([openapi_cdash_class_domains/0]).

-type openapi_cdash_class_domains() ::
    #{ 'ordinal' => binary(),
       'name' => binary(),
       'label' => binary(),
       'description' => binary(),
       '_links' => openapi_cdash_class_domains_links:openapi_cdash_class_domains_links()
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

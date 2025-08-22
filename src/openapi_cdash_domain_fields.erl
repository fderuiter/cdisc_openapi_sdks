-module(openapi_cdash_domain_fields).

-export([encode/1]).

-export_type([openapi_cdash_domain_fields/0]).

-type openapi_cdash_domain_fields() ::
    #{ 'ordinal' => binary(),
       'name' => binary(),
       'label' => binary(),
       '_links' => openapi_cdash_domain_fields_links:openapi_cdash_domain_fields_links()
     }.

encode(#{ 'ordinal' := Ordinal,
          'name' := Name,
          'label' := Label,
          '_links' := Links
        }) ->
    #{ 'ordinal' => Ordinal,
       'name' => Name,
       'label' => Label,
       '_links' => Links
     }.

-module(openapi_cdashig_domain).

-export([encode/1]).

-export_type([openapi_cdashig_domain/0]).

-type openapi_cdashig_domain() ::
    #{ 'ordinal' => binary(),
       'name' => binary(),
       'label' => binary(),
       '_links' => openapi_cdashig_domain_links:openapi_cdashig_domain_links(),
       'fields' => list()
     }.

encode(#{ 'ordinal' := Ordinal,
          'name' := Name,
          'label' := Label,
          '_links' := Links,
          'fields' := Fields
        }) ->
    #{ 'ordinal' => Ordinal,
       'name' => Name,
       'label' => Label,
       '_links' => Links,
       'fields' => Fields
     }.

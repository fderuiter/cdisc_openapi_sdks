-module(openapi_cdash_class_domains_links).

-export([encode/1]).

-export_type([openapi_cdash_class_domains_links/0]).

-type openapi_cdash_class_domains_links() ::
    #{ 'self' => openapi_cdash_class_domains_ref:openapi_cdash_class_domains_ref(),
       'domains' => list()
     }.

encode(#{ 'self' := Self,
          'domains' := Domains
        }) ->
    #{ 'self' => Self,
       'domains' => Domains
     }.

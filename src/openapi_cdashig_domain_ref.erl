-module(openapi_cdashig_domain_ref).

-export([encode/1]).

-export_type([openapi_cdashig_domain_ref/0]).

-type openapi_cdashig_domain_ref() ::
    #{ 'href' => binary(),
       'title' => binary(),
       'type' => binary()
     }.

encode(#{ 'href' := Href,
          'title' := Title,
          'type' := Type
        }) ->
    #{ 'href' => Href,
       'title' => Title,
       'type' => Type
     }.

-module(openapi_cdash_domain_field_ref_element).

-export([encode/1]).

-export_type([openapi_cdash_domain_field_ref_element/0]).

-type openapi_cdash_domain_field_ref_element() ::
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

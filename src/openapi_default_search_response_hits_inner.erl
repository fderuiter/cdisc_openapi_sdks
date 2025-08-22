-module(openapi_default_search_response_hits_inner).

-export([encode/1]).

-export_type([openapi_default_search_response_hits_inner/0]).

-type openapi_default_search_response_hits_inner() ::
    #{ 'href' := binary(),
       'type' := binary()
     }.

encode(#{ 'href' := Href,
          'type' := Type
        }) ->
    #{ 'href' => Href,
       'type' => Type
     }.

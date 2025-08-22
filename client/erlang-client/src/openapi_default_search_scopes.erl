-module(openapi_default_search_scopes).

-export([encode/1]).

-export_type([openapi_default_search_scopes/0]).

-type openapi_default_search_scopes() ::
    #{ 
     }.

encode(#{ 
        }) ->
    #{ 
     }.

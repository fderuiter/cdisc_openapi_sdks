-module(openapi__mdr_search_scopes_get_200_response).

-export([encode/1]).

-export_type([openapi__mdr_search_scopes_get_200_response/0]).

-type openapi__mdr_search_scopes_get_200_response() ::
    #{ 'scopes' => list()
     }.

encode(#{ 'scopes' := Scopes
        }) ->
    #{ 'scopes' => Scopes
     }.

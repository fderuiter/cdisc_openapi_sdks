-module(openapi_default_search_response).

-export([encode/1]).

-export_type([openapi_default_search_response/0]).

-type openapi_default_search_response() ::
    #{ 'hits' => list(),
       'totalHits' => integer()
     }.

encode(#{ 'hits' := Hits,
          'totalHits' := TotalHits
        }) ->
    #{ 'hits' => Hits,
       'totalHits' => TotalHits
     }.

-module(openapi_scope_values).

-export([encode/1]).

-export_type([openapi_scope_values/0]).

-type openapi_scope_values() ::
    #{ 'total' => integer(),
       'hasMore' => boolean(),
       'values' => list()
     }.

encode(#{ 'total' := Total,
          'hasMore' := HasMore,
          'values' := Values
        }) ->
    #{ 'total' => Total,
       'hasMore' => HasMore,
       'values' => Values
     }.

-module(openapi_adam_variable_ref).

-export([encode/1]).

-export_type([openapi_adam_variable_ref/0]).

-type openapi_adam_variable_ref() ::
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

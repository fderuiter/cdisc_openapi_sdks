-module(openapi_adam_datastructure_variables_ref).

-export([encode/1]).

-export_type([openapi_adam_datastructure_variables_ref/0]).

-type openapi_adam_datastructure_variables_ref() ::
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

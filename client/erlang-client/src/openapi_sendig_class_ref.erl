-module(openapi_sendig_class_ref).

-export([encode/1]).

-export_type([openapi_sendig_class_ref/0]).

-type openapi_sendig_class_ref() ::
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

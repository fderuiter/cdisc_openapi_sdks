-module(openapi_cdashig_class_ref_subclass).

-export([encode/1]).

-export_type([openapi_cdashig_class_ref_subclass/0]).

-type openapi_cdashig_class_ref_subclass() ::
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

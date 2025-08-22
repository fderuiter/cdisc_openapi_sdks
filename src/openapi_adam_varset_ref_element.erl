-module(openapi_adam_varset_ref_element).

-export([encode/1]).

-export_type([openapi_adam_varset_ref_element/0]).

-type openapi_adam_varset_ref_element() ::
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

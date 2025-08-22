-module(openapi_qrs_product_ref).

-export([encode/1]).

-export_type([openapi_qrs_product_ref/0]).

-type openapi_qrs_product_ref() ::
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

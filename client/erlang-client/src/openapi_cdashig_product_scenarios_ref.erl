-module(openapi_cdashig_product_scenarios_ref).

-export([encode/1]).

-export_type([openapi_cdashig_product_scenarios_ref/0]).

-type openapi_cdashig_product_scenarios_ref() ::
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

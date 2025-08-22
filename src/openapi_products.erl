-module(openapi_products).

-export([encode/1]).

-export_type([openapi_products/0]).

-type openapi_products() ::
    #{ '_links' => openapi_products_links:openapi_products_links()
     }.

encode(#{ '_links' := Links
        }) ->
    #{ '_links' => Links
     }.

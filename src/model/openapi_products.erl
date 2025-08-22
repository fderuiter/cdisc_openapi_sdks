-module(openapi_products).

-include("openapi.hrl").

-export([openapi_products/0]).

-export([openapi_products/1]).

-export_type([openapi_products/0]).

-type openapi_products() ::
  [ {'_links', openapi_products_links:openapi_products_links() }
  ].


openapi_products() ->
    openapi_products([]).

openapi_products(Fields) ->
  Default = [ {'_links', openapi_products_links:openapi_products_links() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


-module(openapi_products_ref).

-include("openapi.hrl").

-export([openapi_products_ref/0]).

-export([openapi_products_ref/1]).

-export_type([openapi_products_ref/0]).

-type openapi_products_ref() ::
  [ {'href', binary() }
  | {'title', binary() }
  | {'type', binary() }
  ].


openapi_products_ref() ->
    openapi_products_ref([]).

openapi_products_ref(Fields) ->
  Default = [ {'href', binary() }
            , {'title', binary() }
            , {'type', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


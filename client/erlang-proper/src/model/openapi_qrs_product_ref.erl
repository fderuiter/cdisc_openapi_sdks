-module(openapi_qrs_product_ref).

-include("openapi.hrl").

-export([openapi_qrs_product_ref/0]).

-export([openapi_qrs_product_ref/1]).

-export_type([openapi_qrs_product_ref/0]).

-type openapi_qrs_product_ref() ::
  [ {'href', binary() }
  | {'title', binary() }
  | {'type', binary() }
  ].


openapi_qrs_product_ref() ->
    openapi_qrs_product_ref([]).

openapi_qrs_product_ref(Fields) ->
  Default = [ {'href', binary() }
            , {'title', binary() }
            , {'type', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


-module(openapi_cdashig_product_domains_ref).

-include("openapi.hrl").

-export([openapi_cdashig_product_domains_ref/0]).

-export([openapi_cdashig_product_domains_ref/1]).

-export_type([openapi_cdashig_product_domains_ref/0]).

-type openapi_cdashig_product_domains_ref() ::
  [ {'href', binary() }
  | {'title', binary() }
  | {'type', binary() }
  ].


openapi_cdashig_product_domains_ref() ->
    openapi_cdashig_product_domains_ref([]).

openapi_cdashig_product_domains_ref(Fields) ->
  Default = [ {'href', binary() }
            , {'title', binary() }
            , {'type', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


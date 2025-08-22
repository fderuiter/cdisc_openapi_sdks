-module(openapi_cdashig_product_links).

-include("openapi.hrl").

-export([openapi_cdashig_product_links/0]).

-export([openapi_cdashig_product_links/1]).

-export_type([openapi_cdashig_product_links/0]).

-type openapi_cdashig_product_links() ::
  [ {'self', openapi_cdashig_product_ref:openapi_cdashig_product_ref() }
  | {'model', openapi_cdash_product_ref:openapi_cdash_product_ref() }
  | {'priorVersion', openapi_cdashig_product_ref:openapi_cdashig_product_ref() }
  ].


openapi_cdashig_product_links() ->
    openapi_cdashig_product_links([]).

openapi_cdashig_product_links(Fields) ->
  Default = [ {'self', openapi_cdashig_product_ref:openapi_cdashig_product_ref() }
            , {'model', openapi_cdash_product_ref:openapi_cdash_product_ref() }
            , {'priorVersion', openapi_cdashig_product_ref:openapi_cdashig_product_ref() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


-module(openapi_cdash_class_links).

-include("openapi.hrl").

-export([openapi_cdash_class_links/0]).

-export([openapi_cdash_class_links/1]).

-export_type([openapi_cdash_class_links/0]).

-type openapi_cdash_class_links() ::
  [ {'self', openapi_cdash_class_ref:openapi_cdash_class_ref() }
  | {'parentProduct', openapi_cdash_product_ref:openapi_cdash_product_ref() }
  | {'priorVersion', openapi_cdash_class_ref:openapi_cdash_class_ref() }
  ].


openapi_cdash_class_links() ->
    openapi_cdash_class_links([]).

openapi_cdash_class_links(Fields) ->
  Default = [ {'self', openapi_cdash_class_ref:openapi_cdash_class_ref() }
            , {'parentProduct', openapi_cdash_product_ref:openapi_cdash_product_ref() }
            , {'priorVersion', openapi_cdash_class_ref:openapi_cdash_class_ref() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


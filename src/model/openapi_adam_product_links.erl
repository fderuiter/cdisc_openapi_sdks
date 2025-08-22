-module(openapi_adam_product_links).

-include("openapi.hrl").

-export([openapi_adam_product_links/0]).

-export([openapi_adam_product_links/1]).

-export_type([openapi_adam_product_links/0]).

-type openapi_adam_product_links() ::
  [ {'self', openapi_adam_product_ref:openapi_adam_product_ref() }
  | {'model', openapi_adam_product_ref:openapi_adam_product_ref() }
  | {'priorVersion', openapi_adam_product_ref:openapi_adam_product_ref() }
  ].


openapi_adam_product_links() ->
    openapi_adam_product_links([]).

openapi_adam_product_links(Fields) ->
  Default = [ {'self', openapi_adam_product_ref:openapi_adam_product_ref() }
            , {'model', openapi_adam_product_ref:openapi_adam_product_ref() }
            , {'priorVersion', openapi_adam_product_ref:openapi_adam_product_ref() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


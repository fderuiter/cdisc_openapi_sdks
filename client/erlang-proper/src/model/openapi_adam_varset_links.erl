-module(openapi_adam_varset_links).

-include("openapi.hrl").

-export([openapi_adam_varset_links/0]).

-export([openapi_adam_varset_links/1]).

-export_type([openapi_adam_varset_links/0]).

-type openapi_adam_varset_links() ::
  [ {'self', openapi_adam_varset_ref:openapi_adam_varset_ref() }
  | {'parentProduct', openapi_adam_product_ref:openapi_adam_product_ref() }
  | {'parentDatastructure', openapi_adam_datastructure_ref:openapi_adam_datastructure_ref() }
  | {'priorVersion', openapi_adam_varset_ref:openapi_adam_varset_ref() }
  ].


openapi_adam_varset_links() ->
    openapi_adam_varset_links([]).

openapi_adam_varset_links(Fields) ->
  Default = [ {'self', openapi_adam_varset_ref:openapi_adam_varset_ref() }
            , {'parentProduct', openapi_adam_product_ref:openapi_adam_product_ref() }
            , {'parentDatastructure', openapi_adam_datastructure_ref:openapi_adam_datastructure_ref() }
            , {'priorVersion', openapi_adam_varset_ref:openapi_adam_varset_ref() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


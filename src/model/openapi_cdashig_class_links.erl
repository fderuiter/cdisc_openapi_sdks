-module(openapi_cdashig_class_links).

-include("openapi.hrl").

-export([openapi_cdashig_class_links/0]).

-export([openapi_cdashig_class_links/1]).

-export_type([openapi_cdashig_class_links/0]).

-type openapi_cdashig_class_links() ::
  [ {'self', openapi_cdashig_class_ref:openapi_cdashig_class_ref() }
  | {'modelClass', openapi_cdash_class_ref:openapi_cdash_class_ref() }
  | {'parentProduct', openapi_cdashig_product_ref:openapi_cdashig_product_ref() }
  | {'parentClass', openapi_cdashig_class_ref:openapi_cdashig_class_ref() }
  | {'subclasses', list(openapi_cdashig_class_ref_subclass:openapi_cdashig_class_ref_subclass()) }
  | {'priorVersion', openapi_cdashig_class_ref:openapi_cdashig_class_ref() }
  ].


openapi_cdashig_class_links() ->
    openapi_cdashig_class_links([]).

openapi_cdashig_class_links(Fields) ->
  Default = [ {'self', openapi_cdashig_class_ref:openapi_cdashig_class_ref() }
            , {'modelClass', openapi_cdash_class_ref:openapi_cdash_class_ref() }
            , {'parentProduct', openapi_cdashig_product_ref:openapi_cdashig_product_ref() }
            , {'parentClass', openapi_cdashig_class_ref:openapi_cdashig_class_ref() }
            , {'subclasses', list(openapi_cdashig_class_ref_subclass:openapi_cdashig_class_ref_subclass()) }
            , {'priorVersion', openapi_cdashig_class_ref:openapi_cdashig_class_ref() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


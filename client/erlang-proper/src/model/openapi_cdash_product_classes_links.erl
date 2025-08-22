-module(openapi_cdash_product_classes_links).

-include("openapi.hrl").

-export([openapi_cdash_product_classes_links/0]).

-export([openapi_cdash_product_classes_links/1]).

-export_type([openapi_cdash_product_classes_links/0]).

-type openapi_cdash_product_classes_links() ::
  [ {'self', openapi_cdash_product_classes_ref:openapi_cdash_product_classes_ref() }
  | {'parentProduct', openapi_cdash_product_ref:openapi_cdash_product_ref() }
  | {'classes', list(openapi_cdash_class_ref_element:openapi_cdash_class_ref_element()) }
  ].


openapi_cdash_product_classes_links() ->
    openapi_cdash_product_classes_links([]).

openapi_cdash_product_classes_links(Fields) ->
  Default = [ {'self', openapi_cdash_product_classes_ref:openapi_cdash_product_classes_ref() }
            , {'parentProduct', openapi_cdash_product_ref:openapi_cdash_product_ref() }
            , {'classes', list(openapi_cdash_class_ref_element:openapi_cdash_class_ref_element()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


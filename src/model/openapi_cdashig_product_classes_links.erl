-module(openapi_cdashig_product_classes_links).

-include("openapi.hrl").

-export([openapi_cdashig_product_classes_links/0]).

-export([openapi_cdashig_product_classes_links/1]).

-export_type([openapi_cdashig_product_classes_links/0]).

-type openapi_cdashig_product_classes_links() ::
  [ {'self', openapi_cdashig_product_classes_ref:openapi_cdashig_product_classes_ref() }
  | {'parentProduct', openapi_cdashig_product_ref:openapi_cdashig_product_ref() }
  | {'classes', list(openapi_cdashig_class_ref_element:openapi_cdashig_class_ref_element()) }
  ].


openapi_cdashig_product_classes_links() ->
    openapi_cdashig_product_classes_links([]).

openapi_cdashig_product_classes_links(Fields) ->
  Default = [ {'self', openapi_cdashig_product_classes_ref:openapi_cdashig_product_classes_ref() }
            , {'parentProduct', openapi_cdashig_product_ref:openapi_cdashig_product_ref() }
            , {'classes', list(openapi_cdashig_class_ref_element:openapi_cdashig_class_ref_element()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


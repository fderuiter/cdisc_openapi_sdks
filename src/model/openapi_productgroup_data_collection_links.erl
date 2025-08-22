-module(openapi_productgroup_data_collection_links).

-include("openapi.hrl").

-export([openapi_productgroup_data_collection_links/0]).

-export([openapi_productgroup_data_collection_links/1]).

-export_type([openapi_productgroup_data_collection_links/0]).

-type openapi_productgroup_data_collection_links() ::
  [ {'self', openapi_productgroup_ref:openapi_productgroup_ref() }
  | {'cdash', list(openapi_cdash_product_ref_element:openapi_cdash_product_ref_element()) }
  | {'cdashig', list(openapi_cdashig_product_ref_element:openapi_cdashig_product_ref_element()) }
  ].


openapi_productgroup_data_collection_links() ->
    openapi_productgroup_data_collection_links([]).

openapi_productgroup_data_collection_links(Fields) ->
  Default = [ {'self', openapi_productgroup_ref:openapi_productgroup_ref() }
            , {'cdash', list(openapi_cdash_product_ref_element:openapi_cdash_product_ref_element()) }
            , {'cdashig', list(openapi_cdashig_product_ref_element:openapi_cdashig_product_ref_element()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


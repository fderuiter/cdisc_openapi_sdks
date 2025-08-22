-module(openapi_products_links).

-include("openapi.hrl").

-export([openapi_products_links/0]).

-export([openapi_products_links/1]).

-export_type([openapi_products_links/0]).

-type openapi_products_links() ::
  [ {'self', openapi_products_ref:openapi_products_ref() }
  | {'data_collection', openapi_productgroup_data_collection:openapi_productgroup_data_collection() }
  | {'data_tabulation', openapi_productgroup_data_tabulation:openapi_productgroup_data_tabulation() }
  | {'data_analysis', openapi_productgroup_data_analysis:openapi_productgroup_data_analysis() }
  | {'terminology', openapi_productgroup_terminology:openapi_productgroup_terminology() }
  | {'measure', openapi_productgroup_qrs:openapi_productgroup_qrs() }
  ].


openapi_products_links() ->
    openapi_products_links([]).

openapi_products_links(Fields) ->
  Default = [ {'self', openapi_products_ref:openapi_products_ref() }
            , {'data-collection', openapi_productgroup_data_collection:openapi_productgroup_data_collection() }
            , {'data-tabulation', openapi_productgroup_data_tabulation:openapi_productgroup_data_tabulation() }
            , {'data-analysis', openapi_productgroup_data_analysis:openapi_productgroup_data_analysis() }
            , {'terminology', openapi_productgroup_terminology:openapi_productgroup_terminology() }
            , {'measure', openapi_productgroup_qrs:openapi_productgroup_qrs() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


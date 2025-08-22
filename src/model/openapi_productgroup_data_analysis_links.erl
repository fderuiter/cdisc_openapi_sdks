-module(openapi_productgroup_data_analysis_links).

-include("openapi.hrl").

-export([openapi_productgroup_data_analysis_links/0]).

-export([openapi_productgroup_data_analysis_links/1]).

-export_type([openapi_productgroup_data_analysis_links/0]).

-type openapi_productgroup_data_analysis_links() ::
  [ {'self', openapi_productgroup_ref:openapi_productgroup_ref() }
  | {'adam', list(openapi_adam_product_ref_element:openapi_adam_product_ref_element()) }
  ].


openapi_productgroup_data_analysis_links() ->
    openapi_productgroup_data_analysis_links([]).

openapi_productgroup_data_analysis_links(Fields) ->
  Default = [ {'self', openapi_productgroup_ref:openapi_productgroup_ref() }
            , {'adam', list(openapi_adam_product_ref_element:openapi_adam_product_ref_element()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


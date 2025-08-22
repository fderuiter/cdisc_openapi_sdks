-module(openapi_productgroup_data_tabulation_links).

-include("openapi.hrl").

-export([openapi_productgroup_data_tabulation_links/0]).

-export([openapi_productgroup_data_tabulation_links/1]).

-export_type([openapi_productgroup_data_tabulation_links/0]).

-type openapi_productgroup_data_tabulation_links() ::
  [ {'self', openapi_productgroup_ref:openapi_productgroup_ref() }
  | {'sdtm', list(openapi_sdtm_product_ref_element:openapi_sdtm_product_ref_element()) }
  | {'sdtmig', list(openapi_sdtmig_product_ref_element:openapi_sdtmig_product_ref_element()) }
  | {'sendig', list(openapi_sendig_product_ref_element:openapi_sendig_product_ref_element()) }
  ].


openapi_productgroup_data_tabulation_links() ->
    openapi_productgroup_data_tabulation_links([]).

openapi_productgroup_data_tabulation_links(Fields) ->
  Default = [ {'self', openapi_productgroup_ref:openapi_productgroup_ref() }
            , {'sdtm', list(openapi_sdtm_product_ref_element:openapi_sdtm_product_ref_element()) }
            , {'sdtmig', list(openapi_sdtmig_product_ref_element:openapi_sdtmig_product_ref_element()) }
            , {'sendig', list(openapi_sendig_product_ref_element:openapi_sendig_product_ref_element()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


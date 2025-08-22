-module(openapi_sdtmig_product_links).

-include("openapi.hrl").

-export([openapi_sdtmig_product_links/0]).

-export([openapi_sdtmig_product_links/1]).

-export_type([openapi_sdtmig_product_links/0]).

-type openapi_sdtmig_product_links() ::
  [ {'self', openapi_sdtmig_product_ref:openapi_sdtmig_product_ref() }
  | {'model', openapi_sdtm_product_ref:openapi_sdtm_product_ref() }
  | {'priorVersion', openapi_sdtmig_product_ref:openapi_sdtmig_product_ref() }
  ].


openapi_sdtmig_product_links() ->
    openapi_sdtmig_product_links([]).

openapi_sdtmig_product_links(Fields) ->
  Default = [ {'self', openapi_sdtmig_product_ref:openapi_sdtmig_product_ref() }
            , {'model', openapi_sdtm_product_ref:openapi_sdtm_product_ref() }
            , {'priorVersion', openapi_sdtmig_product_ref:openapi_sdtmig_product_ref() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


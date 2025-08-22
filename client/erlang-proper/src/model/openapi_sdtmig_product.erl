-module(openapi_sdtmig_product).

-include("openapi.hrl").

-export([openapi_sdtmig_product/0]).

-export([openapi_sdtmig_product/1]).

-export_type([openapi_sdtmig_product/0]).

-type openapi_sdtmig_product() ::
  [ {'name', binary() }
  | {'label', binary() }
  | {'description', binary() }
  | {'source', binary() }
  | {'effectiveDate', binary() }
  | {'registrationStatus', binary() }
  | {'version', binary() }
  | {'_links', openapi_sdtmig_product_links:openapi_sdtmig_product_links() }
  | {'classes', list(openapi_sdtmig_class:openapi_sdtmig_class()) }
  ].


openapi_sdtmig_product() ->
    openapi_sdtmig_product([]).

openapi_sdtmig_product(Fields) ->
  Default = [ {'name', binary() }
            , {'label', binary() }
            , {'description', binary() }
            , {'source', binary() }
            , {'effectiveDate', binary() }
            , {'registrationStatus', binary() }
            , {'version', binary() }
            , {'_links', openapi_sdtmig_product_links:openapi_sdtmig_product_links() }
            , {'classes', list(openapi_sdtmig_class:openapi_sdtmig_class()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


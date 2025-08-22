-module(openapi_sdtm_product).

-include("openapi.hrl").

-export([openapi_sdtm_product/0]).

-export([openapi_sdtm_product/1]).

-export_type([openapi_sdtm_product/0]).

-type openapi_sdtm_product() ::
  [ {'name', binary() }
  | {'label', binary() }
  | {'description', binary() }
  | {'source', binary() }
  | {'effectiveDate', binary() }
  | {'registrationStatus', binary() }
  | {'version', binary() }
  | {'_links', openapi_sdtm_product_links:openapi_sdtm_product_links() }
  | {'classes', list(openapi_sdtm_class:openapi_sdtm_class()) }
  | {'datasets', list(openapi_sdtm_dataset:openapi_sdtm_dataset()) }
  ].


openapi_sdtm_product() ->
    openapi_sdtm_product([]).

openapi_sdtm_product(Fields) ->
  Default = [ {'name', binary() }
            , {'label', binary() }
            , {'description', binary() }
            , {'source', binary() }
            , {'effectiveDate', binary() }
            , {'registrationStatus', binary() }
            , {'version', binary() }
            , {'_links', openapi_sdtm_product_links:openapi_sdtm_product_links() }
            , {'classes', list(openapi_sdtm_class:openapi_sdtm_class()) }
            , {'datasets', list(openapi_sdtm_dataset:openapi_sdtm_dataset()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


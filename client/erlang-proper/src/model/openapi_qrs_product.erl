-module(openapi_qrs_product).

-include("openapi.hrl").

-export([openapi_qrs_product/0]).

-export([openapi_qrs_product/1]).

-export_type([openapi_qrs_product/0]).

-type openapi_qrs_product() ::
  [ {'name', binary() }
  | {'label', binary() }
  | {'description', binary() }
  | {'effectiveDate', binary() }
  | {'untilDate', binary() }
  | {'registrationStatus', binary() }
  | {'version', binary() }
  | {'qrsType', binary() }
  | {'_links', openapi_qrs_product_links:openapi_qrs_product_links() }
  | {'items', list(openapi_qrs_item:openapi_qrs_item()) }
  ].


openapi_qrs_product() ->
    openapi_qrs_product([]).

openapi_qrs_product(Fields) ->
  Default = [ {'name', binary() }
            , {'label', binary() }
            , {'description', binary() }
            , {'effectiveDate', binary() }
            , {'untilDate', binary() }
            , {'registrationStatus', binary() }
            , {'version', binary() }
            , {'qrsType', binary() }
            , {'_links', openapi_qrs_product_links:openapi_qrs_product_links() }
            , {'items', list(openapi_qrs_item:openapi_qrs_item()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


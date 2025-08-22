-module(openapi_cdashig_product).

-include("openapi.hrl").

-export([openapi_cdashig_product/0]).

-export([openapi_cdashig_product/1]).

-export_type([openapi_cdashig_product/0]).

-type openapi_cdashig_product() ::
  [ {'name', binary() }
  | {'label', binary() }
  | {'description', binary() }
  | {'source', binary() }
  | {'effectiveDate', binary() }
  | {'registrationStatus', binary() }
  | {'version', binary() }
  | {'_links', openapi_cdashig_product_links:openapi_cdashig_product_links() }
  | {'classes', list(openapi_cdashig_class:openapi_cdashig_class()) }
  ].


openapi_cdashig_product() ->
    openapi_cdashig_product([]).

openapi_cdashig_product(Fields) ->
  Default = [ {'name', binary() }
            , {'label', binary() }
            , {'description', binary() }
            , {'source', binary() }
            , {'effectiveDate', binary() }
            , {'registrationStatus', binary() }
            , {'version', binary() }
            , {'_links', openapi_cdashig_product_links:openapi_cdashig_product_links() }
            , {'classes', list(openapi_cdashig_class:openapi_cdashig_class()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


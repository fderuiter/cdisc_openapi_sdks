-module(openapi_cdash_product).

-include("openapi.hrl").

-export([openapi_cdash_product/0]).

-export([openapi_cdash_product/1]).

-export_type([openapi_cdash_product/0]).

-type openapi_cdash_product() ::
  [ {'name', binary() }
  | {'label', binary() }
  | {'description', binary() }
  | {'source', binary() }
  | {'effectiveDate', binary() }
  | {'registrationStatus', binary() }
  | {'version', binary() }
  | {'_links', openapi_cdash_product_links:openapi_cdash_product_links() }
  | {'classes', list(openapi_cdash_class:openapi_cdash_class()) }
  | {'domains', list(openapi_cdash_domain:openapi_cdash_domain()) }
  ].


openapi_cdash_product() ->
    openapi_cdash_product([]).

openapi_cdash_product(Fields) ->
  Default = [ {'name', binary() }
            , {'label', binary() }
            , {'description', binary() }
            , {'source', binary() }
            , {'effectiveDate', binary() }
            , {'registrationStatus', binary() }
            , {'version', binary() }
            , {'_links', openapi_cdash_product_links:openapi_cdash_product_links() }
            , {'classes', list(openapi_cdash_class:openapi_cdash_class()) }
            , {'domains', list(openapi_cdash_domain:openapi_cdash_domain()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


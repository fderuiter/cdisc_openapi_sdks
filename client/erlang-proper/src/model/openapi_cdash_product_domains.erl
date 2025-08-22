-module(openapi_cdash_product_domains).

-include("openapi.hrl").

-export([openapi_cdash_product_domains/0]).

-export([openapi_cdash_product_domains/1]).

-export_type([openapi_cdash_product_domains/0]).

-type openapi_cdash_product_domains() ::
  [ {'name', binary() }
  | {'label', binary() }
  | {'description', binary() }
  | {'source', binary() }
  | {'effectiveDate', binary() }
  | {'registrationStatus', binary() }
  | {'version', binary() }
  | {'_links', openapi_cdash_product_domains_links:openapi_cdash_product_domains_links() }
  ].


openapi_cdash_product_domains() ->
    openapi_cdash_product_domains([]).

openapi_cdash_product_domains(Fields) ->
  Default = [ {'name', binary() }
            , {'label', binary() }
            , {'description', binary() }
            , {'source', binary() }
            , {'effectiveDate', binary() }
            , {'registrationStatus', binary() }
            , {'version', binary() }
            , {'_links', openapi_cdash_product_domains_links:openapi_cdash_product_domains_links() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


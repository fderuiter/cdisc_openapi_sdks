-module(openapi_cdash_product_classes).

-include("openapi.hrl").

-export([openapi_cdash_product_classes/0]).

-export([openapi_cdash_product_classes/1]).

-export_type([openapi_cdash_product_classes/0]).

-type openapi_cdash_product_classes() ::
  [ {'name', binary() }
  | {'label', binary() }
  | {'description', binary() }
  | {'source', binary() }
  | {'effectiveDate', binary() }
  | {'registrationStatus', binary() }
  | {'version', binary() }
  | {'_links', openapi_cdash_product_classes_links:openapi_cdash_product_classes_links() }
  ].


openapi_cdash_product_classes() ->
    openapi_cdash_product_classes([]).

openapi_cdash_product_classes(Fields) ->
  Default = [ {'name', binary() }
            , {'label', binary() }
            , {'description', binary() }
            , {'source', binary() }
            , {'effectiveDate', binary() }
            , {'registrationStatus', binary() }
            , {'version', binary() }
            , {'_links', openapi_cdash_product_classes_links:openapi_cdash_product_classes_links() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


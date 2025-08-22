-module(openapi_sendig_product).

-include("openapi.hrl").

-export([openapi_sendig_product/0]).

-export([openapi_sendig_product/1]).

-export_type([openapi_sendig_product/0]).

-type openapi_sendig_product() ::
  [ {'name', binary() }
  | {'label', binary() }
  | {'description', binary() }
  | {'source', binary() }
  | {'effectiveDate', binary() }
  | {'registrationStatus', binary() }
  | {'version', binary() }
  | {'_links', openapi_sendig_product_links:openapi_sendig_product_links() }
  | {'classes', list(openapi_sendig_class:openapi_sendig_class()) }
  ].


openapi_sendig_product() ->
    openapi_sendig_product([]).

openapi_sendig_product(Fields) ->
  Default = [ {'name', binary() }
            , {'label', binary() }
            , {'description', binary() }
            , {'source', binary() }
            , {'effectiveDate', binary() }
            , {'registrationStatus', binary() }
            , {'version', binary() }
            , {'_links', openapi_sendig_product_links:openapi_sendig_product_links() }
            , {'classes', list(openapi_sendig_class:openapi_sendig_class()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


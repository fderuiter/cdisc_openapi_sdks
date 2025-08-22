-module(openapi_adam_product_datastructures).

-include("openapi.hrl").

-export([openapi_adam_product_datastructures/0]).

-export([openapi_adam_product_datastructures/1]).

-export_type([openapi_adam_product_datastructures/0]).

-type openapi_adam_product_datastructures() ::
  [ {'name', binary() }
  | {'label', binary() }
  | {'description', binary() }
  | {'source', binary() }
  | {'effectiveDate', binary() }
  | {'registrationStatus', binary() }
  | {'version', binary() }
  | {'_links', openapi_adam_product_datastructures_links:openapi_adam_product_datastructures_links() }
  ].


openapi_adam_product_datastructures() ->
    openapi_adam_product_datastructures([]).

openapi_adam_product_datastructures(Fields) ->
  Default = [ {'name', binary() }
            , {'label', binary() }
            , {'description', binary() }
            , {'source', binary() }
            , {'effectiveDate', binary() }
            , {'registrationStatus', binary() }
            , {'version', binary() }
            , {'_links', openapi_adam_product_datastructures_links:openapi_adam_product_datastructures_links() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


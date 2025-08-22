-module(openapi_adam_product).

-include("openapi.hrl").

-export([openapi_adam_product/0]).

-export([openapi_adam_product/1]).

-export_type([openapi_adam_product/0]).

-type openapi_adam_product() ::
  [ {'name', binary() }
  | {'label', binary() }
  | {'description', binary() }
  | {'source', binary() }
  | {'effectiveDate', binary() }
  | {'registrationStatus', binary() }
  | {'version', binary() }
  | {'_links', openapi_adam_product_links:openapi_adam_product_links() }
  | {'dataStructures', list(openapi_adam_datastructure:openapi_adam_datastructure()) }
  ].


openapi_adam_product() ->
    openapi_adam_product([]).

openapi_adam_product(Fields) ->
  Default = [ {'name', binary() }
            , {'label', binary() }
            , {'description', binary() }
            , {'source', binary() }
            , {'effectiveDate', binary() }
            , {'registrationStatus', binary() }
            , {'version', binary() }
            , {'_links', openapi_adam_product_links:openapi_adam_product_links() }
            , {'dataStructures', list(openapi_adam_datastructure:openapi_adam_datastructure()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


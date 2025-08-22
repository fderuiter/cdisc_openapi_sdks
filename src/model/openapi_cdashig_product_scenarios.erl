-module(openapi_cdashig_product_scenarios).

-include("openapi.hrl").

-export([openapi_cdashig_product_scenarios/0]).

-export([openapi_cdashig_product_scenarios/1]).

-export_type([openapi_cdashig_product_scenarios/0]).

-type openapi_cdashig_product_scenarios() ::
  [ {'name', binary() }
  | {'label', binary() }
  | {'description', binary() }
  | {'source', binary() }
  | {'effectiveDate', binary() }
  | {'registrationStatus', binary() }
  | {'version', binary() }
  | {'_links', openapi_cdashig_product_scenarios_links:openapi_cdashig_product_scenarios_links() }
  ].


openapi_cdashig_product_scenarios() ->
    openapi_cdashig_product_scenarios([]).

openapi_cdashig_product_scenarios(Fields) ->
  Default = [ {'name', binary() }
            , {'label', binary() }
            , {'description', binary() }
            , {'source', binary() }
            , {'effectiveDate', binary() }
            , {'registrationStatus', binary() }
            , {'version', binary() }
            , {'_links', openapi_cdashig_product_scenarios_links:openapi_cdashig_product_scenarios_links() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


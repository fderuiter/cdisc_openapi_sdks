-module(openapi_cdashig_scenario_links).

-include("openapi.hrl").

-export([openapi_cdashig_scenario_links/0]).

-export([openapi_cdashig_scenario_links/1]).

-export_type([openapi_cdashig_scenario_links/0]).

-type openapi_cdashig_scenario_links() ::
  [ {'self', openapi_cdashig_scenario_ref:openapi_cdashig_scenario_ref() }
  | {'parentProduct', openapi_cdashig_product_ref:openapi_cdashig_product_ref() }
  | {'parentClass', openapi_cdashig_class_ref:openapi_cdashig_class_ref() }
  | {'parentDomain', openapi_cdashig_domain_ref:openapi_cdashig_domain_ref() }
  | {'priorVersion', openapi_cdashig_scenario_ref:openapi_cdashig_scenario_ref() }
  ].


openapi_cdashig_scenario_links() ->
    openapi_cdashig_scenario_links([]).

openapi_cdashig_scenario_links(Fields) ->
  Default = [ {'self', openapi_cdashig_scenario_ref:openapi_cdashig_scenario_ref() }
            , {'parentProduct', openapi_cdashig_product_ref:openapi_cdashig_product_ref() }
            , {'parentClass', openapi_cdashig_class_ref:openapi_cdashig_class_ref() }
            , {'parentDomain', openapi_cdashig_domain_ref:openapi_cdashig_domain_ref() }
            , {'priorVersion', openapi_cdashig_scenario_ref:openapi_cdashig_scenario_ref() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


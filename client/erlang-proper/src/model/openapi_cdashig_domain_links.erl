-module(openapi_cdashig_domain_links).

-include("openapi.hrl").

-export([openapi_cdashig_domain_links/0]).

-export([openapi_cdashig_domain_links/1]).

-export_type([openapi_cdashig_domain_links/0]).

-type openapi_cdashig_domain_links() ::
  [ {'self', openapi_cdashig_domain_ref:openapi_cdashig_domain_ref() }
  | {'parentProduct', openapi_cdashig_product_ref:openapi_cdashig_product_ref() }
  | {'parentClass', openapi_cdashig_class_ref:openapi_cdashig_class_ref() }
  | {'priorVersion', openapi_cdashig_domain_ref:openapi_cdashig_domain_ref() }
  | {'scenarios', list(openapi_cdashig_scenario_ref_element:openapi_cdashig_scenario_ref_element()) }
  ].


openapi_cdashig_domain_links() ->
    openapi_cdashig_domain_links([]).

openapi_cdashig_domain_links(Fields) ->
  Default = [ {'self', openapi_cdashig_domain_ref:openapi_cdashig_domain_ref() }
            , {'parentProduct', openapi_cdashig_product_ref:openapi_cdashig_product_ref() }
            , {'parentClass', openapi_cdashig_class_ref:openapi_cdashig_class_ref() }
            , {'priorVersion', openapi_cdashig_domain_ref:openapi_cdashig_domain_ref() }
            , {'scenarios', list(openapi_cdashig_scenario_ref_element:openapi_cdashig_scenario_ref_element()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


-module(openapi_xml_cdashig_product_scenarios).

-include("openapi.hrl").

-export([openapi_xml_cdashig_product_scenarios/0]).

-export([openapi_xml_cdashig_product_scenarios/1]).

-export_type([openapi_xml_cdashig_product_scenarios/0]).

-type openapi_xml_cdashig_product_scenarios() ::
  [ {'self', openapi_cdashig_product_scenarios:openapi_cdashig_product_scenarios() }
  ].


openapi_xml_cdashig_product_scenarios() ->
    openapi_xml_cdashig_product_scenarios([]).

openapi_xml_cdashig_product_scenarios(Fields) ->
  Default = [ {'self', openapi_cdashig_product_scenarios:openapi_cdashig_product_scenarios() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


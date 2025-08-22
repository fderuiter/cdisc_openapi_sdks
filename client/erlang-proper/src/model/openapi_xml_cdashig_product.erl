-module(openapi_xml_cdashig_product).

-include("openapi.hrl").

-export([openapi_xml_cdashig_product/0]).

-export([openapi_xml_cdashig_product/1]).

-export_type([openapi_xml_cdashig_product/0]).

-type openapi_xml_cdashig_product() ::
  [ {'self', openapi_cdashig_product:openapi_cdashig_product() }
  ].


openapi_xml_cdashig_product() ->
    openapi_xml_cdashig_product([]).

openapi_xml_cdashig_product(Fields) ->
  Default = [ {'self', openapi_cdashig_product:openapi_cdashig_product() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


-module(openapi_xml_cdash_product).

-include("openapi.hrl").

-export([openapi_xml_cdash_product/0]).

-export([openapi_xml_cdash_product/1]).

-export_type([openapi_xml_cdash_product/0]).

-type openapi_xml_cdash_product() ::
  [ {'self', openapi_cdash_product:openapi_cdash_product() }
  ].


openapi_xml_cdash_product() ->
    openapi_xml_cdash_product([]).

openapi_xml_cdash_product(Fields) ->
  Default = [ {'self', openapi_cdash_product:openapi_cdash_product() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


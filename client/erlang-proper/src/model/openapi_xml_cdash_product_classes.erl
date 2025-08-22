-module(openapi_xml_cdash_product_classes).

-include("openapi.hrl").

-export([openapi_xml_cdash_product_classes/0]).

-export([openapi_xml_cdash_product_classes/1]).

-export_type([openapi_xml_cdash_product_classes/0]).

-type openapi_xml_cdash_product_classes() ::
  [ {'self', openapi_cdash_product_classes:openapi_cdash_product_classes() }
  ].


openapi_xml_cdash_product_classes() ->
    openapi_xml_cdash_product_classes([]).

openapi_xml_cdash_product_classes(Fields) ->
  Default = [ {'self', openapi_cdash_product_classes:openapi_cdash_product_classes() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


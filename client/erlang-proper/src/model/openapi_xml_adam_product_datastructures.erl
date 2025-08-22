-module(openapi_xml_adam_product_datastructures).

-include("openapi.hrl").

-export([openapi_xml_adam_product_datastructures/0]).

-export([openapi_xml_adam_product_datastructures/1]).

-export_type([openapi_xml_adam_product_datastructures/0]).

-type openapi_xml_adam_product_datastructures() ::
  [ {'self', openapi_adam_product_datastructures:openapi_adam_product_datastructures() }
  ].


openapi_xml_adam_product_datastructures() ->
    openapi_xml_adam_product_datastructures([]).

openapi_xml_adam_product_datastructures(Fields) ->
  Default = [ {'self', openapi_adam_product_datastructures:openapi_adam_product_datastructures() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


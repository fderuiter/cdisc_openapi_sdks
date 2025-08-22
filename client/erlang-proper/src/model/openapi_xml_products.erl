-module(openapi_xml_products).

-include("openapi.hrl").

-export([openapi_xml_products/0]).

-export([openapi_xml_products/1]).

-export_type([openapi_xml_products/0]).

-type openapi_xml_products() ::
  [ {'self', openapi_products:openapi_products() }
  ].


openapi_xml_products() ->
    openapi_xml_products([]).

openapi_xml_products(Fields) ->
  Default = [ {'self', openapi_products:openapi_products() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


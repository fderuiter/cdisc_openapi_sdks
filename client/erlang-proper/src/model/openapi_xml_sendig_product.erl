-module(openapi_xml_sendig_product).

-include("openapi.hrl").

-export([openapi_xml_sendig_product/0]).

-export([openapi_xml_sendig_product/1]).

-export_type([openapi_xml_sendig_product/0]).

-type openapi_xml_sendig_product() ::
  [ {'self', openapi_sendig_product:openapi_sendig_product() }
  ].


openapi_xml_sendig_product() ->
    openapi_xml_sendig_product([]).

openapi_xml_sendig_product(Fields) ->
  Default = [ {'self', openapi_sendig_product:openapi_sendig_product() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


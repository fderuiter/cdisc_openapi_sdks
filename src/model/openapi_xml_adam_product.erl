-module(openapi_xml_adam_product).

-include("openapi.hrl").

-export([openapi_xml_adam_product/0]).

-export([openapi_xml_adam_product/1]).

-export_type([openapi_xml_adam_product/0]).

-type openapi_xml_adam_product() ::
  [ {'self', openapi_adam_product:openapi_adam_product() }
  ].


openapi_xml_adam_product() ->
    openapi_xml_adam_product([]).

openapi_xml_adam_product(Fields) ->
  Default = [ {'self', openapi_adam_product:openapi_adam_product() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


-module(openapi_xml_qrs_product).

-include("openapi.hrl").

-export([openapi_xml_qrs_product/0]).

-export([openapi_xml_qrs_product/1]).

-export_type([openapi_xml_qrs_product/0]).

-type openapi_xml_qrs_product() ::
  [ {'self', openapi_qrs_product:openapi_qrs_product() }
  ].


openapi_xml_qrs_product() ->
    openapi_xml_qrs_product([]).

openapi_xml_qrs_product(Fields) ->
  Default = [ {'self', openapi_qrs_product:openapi_qrs_product() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


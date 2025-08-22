-module(openapi_xml_sdtm_product).

-include("openapi.hrl").

-export([openapi_xml_sdtm_product/0]).

-export([openapi_xml_sdtm_product/1]).

-export_type([openapi_xml_sdtm_product/0]).

-type openapi_xml_sdtm_product() ::
  [ {'self', openapi_sdtm_product:openapi_sdtm_product() }
  ].


openapi_xml_sdtm_product() ->
    openapi_xml_sdtm_product([]).

openapi_xml_sdtm_product(Fields) ->
  Default = [ {'self', openapi_sdtm_product:openapi_sdtm_product() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


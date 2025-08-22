-module(openapi_xml_sdtmig_product).

-include("openapi.hrl").

-export([openapi_xml_sdtmig_product/0]).

-export([openapi_xml_sdtmig_product/1]).

-export_type([openapi_xml_sdtmig_product/0]).

-type openapi_xml_sdtmig_product() ::
  [ {'self', openapi_sdtmig_product:openapi_sdtmig_product() }
  ].


openapi_xml_sdtmig_product() ->
    openapi_xml_sdtmig_product([]).

openapi_xml_sdtmig_product(Fields) ->
  Default = [ {'self', openapi_sdtmig_product:openapi_sdtmig_product() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


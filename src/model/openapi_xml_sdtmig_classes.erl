-module(openapi_xml_sdtmig_classes).

-include("openapi.hrl").

-export([openapi_xml_sdtmig_classes/0]).

-export([openapi_xml_sdtmig_classes/1]).

-export_type([openapi_xml_sdtmig_classes/0]).

-type openapi_xml_sdtmig_classes() ::
  [ {'self', openapi_sdtmig_classes:openapi_sdtmig_classes() }
  ].


openapi_xml_sdtmig_classes() ->
    openapi_xml_sdtmig_classes([]).

openapi_xml_sdtmig_classes(Fields) ->
  Default = [ {'self', openapi_sdtmig_classes:openapi_sdtmig_classes() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


-module(openapi_xml_sdtm_classes).

-include("openapi.hrl").

-export([openapi_xml_sdtm_classes/0]).

-export([openapi_xml_sdtm_classes/1]).

-export_type([openapi_xml_sdtm_classes/0]).

-type openapi_xml_sdtm_classes() ::
  [ {'self', openapi_sdtm_classes:openapi_sdtm_classes() }
  ].


openapi_xml_sdtm_classes() ->
    openapi_xml_sdtm_classes([]).

openapi_xml_sdtm_classes(Fields) ->
  Default = [ {'self', openapi_sdtm_classes:openapi_sdtm_classes() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


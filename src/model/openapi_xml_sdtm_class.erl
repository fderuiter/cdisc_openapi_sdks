-module(openapi_xml_sdtm_class).

-include("openapi.hrl").

-export([openapi_xml_sdtm_class/0]).

-export([openapi_xml_sdtm_class/1]).

-export_type([openapi_xml_sdtm_class/0]).

-type openapi_xml_sdtm_class() ::
  [ {'self', openapi_sdtm_class:openapi_sdtm_class() }
  ].


openapi_xml_sdtm_class() ->
    openapi_xml_sdtm_class([]).

openapi_xml_sdtm_class(Fields) ->
  Default = [ {'self', openapi_sdtm_class:openapi_sdtm_class() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


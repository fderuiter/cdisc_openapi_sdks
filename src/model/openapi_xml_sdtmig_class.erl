-module(openapi_xml_sdtmig_class).

-include("openapi.hrl").

-export([openapi_xml_sdtmig_class/0]).

-export([openapi_xml_sdtmig_class/1]).

-export_type([openapi_xml_sdtmig_class/0]).

-type openapi_xml_sdtmig_class() ::
  [ {'self', openapi_sdtmig_class:openapi_sdtmig_class() }
  ].


openapi_xml_sdtmig_class() ->
    openapi_xml_sdtmig_class([]).

openapi_xml_sdtmig_class(Fields) ->
  Default = [ {'self', openapi_sdtmig_class:openapi_sdtmig_class() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


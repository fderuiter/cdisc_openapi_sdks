-module(openapi_xml_lastupdated).

-include("openapi.hrl").

-export([openapi_xml_lastupdated/0]).

-export([openapi_xml_lastupdated/1]).

-export_type([openapi_xml_lastupdated/0]).

-type openapi_xml_lastupdated() ::
  [ {'self', openapi_lastupdated:openapi_lastupdated() }
  ].


openapi_xml_lastupdated() ->
    openapi_xml_lastupdated([]).

openapi_xml_lastupdated(Fields) ->
  Default = [ {'self', openapi_lastupdated:openapi_lastupdated() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


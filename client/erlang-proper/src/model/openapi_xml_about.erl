-module(openapi_xml_about).

-include("openapi.hrl").

-export([openapi_xml_about/0]).

-export([openapi_xml_about/1]).

-export_type([openapi_xml_about/0]).

-type openapi_xml_about() ::
  [ {'self', openapi_about:openapi_about() }
  ].


openapi_xml_about() ->
    openapi_xml_about([]).

openapi_xml_about(Fields) ->
  Default = [ {'self', openapi_about:openapi_about() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


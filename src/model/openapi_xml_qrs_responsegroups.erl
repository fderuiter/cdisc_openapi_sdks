-module(openapi_xml_qrs_responsegroups).

-include("openapi.hrl").

-export([openapi_xml_qrs_responsegroups/0]).

-export([openapi_xml_qrs_responsegroups/1]).

-export_type([openapi_xml_qrs_responsegroups/0]).

-type openapi_xml_qrs_responsegroups() ::
  [ {'self', openapi_qrs_responsegroups:openapi_qrs_responsegroups() }
  ].


openapi_xml_qrs_responsegroups() ->
    openapi_xml_qrs_responsegroups([]).

openapi_xml_qrs_responsegroups(Fields) ->
  Default = [ {'self', openapi_qrs_responsegroups:openapi_qrs_responsegroups() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


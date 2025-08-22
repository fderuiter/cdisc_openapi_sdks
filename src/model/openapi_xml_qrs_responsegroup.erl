-module(openapi_xml_qrs_responsegroup).

-include("openapi.hrl").

-export([openapi_xml_qrs_responsegroup/0]).

-export([openapi_xml_qrs_responsegroup/1]).

-export_type([openapi_xml_qrs_responsegroup/0]).

-type openapi_xml_qrs_responsegroup() ::
  [ {'self', openapi_qrs_responsegroup:openapi_qrs_responsegroup() }
  ].


openapi_xml_qrs_responsegroup() ->
    openapi_xml_qrs_responsegroup([]).

openapi_xml_qrs_responsegroup(Fields) ->
  Default = [ {'self', openapi_qrs_responsegroup:openapi_qrs_responsegroup() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


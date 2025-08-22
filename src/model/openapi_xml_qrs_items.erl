-module(openapi_xml_qrs_items).

-include("openapi.hrl").

-export([openapi_xml_qrs_items/0]).

-export([openapi_xml_qrs_items/1]).

-export_type([openapi_xml_qrs_items/0]).

-type openapi_xml_qrs_items() ::
  [ {'self', openapi_qrs_items:openapi_qrs_items() }
  ].


openapi_xml_qrs_items() ->
    openapi_xml_qrs_items([]).

openapi_xml_qrs_items(Fields) ->
  Default = [ {'self', openapi_qrs_items:openapi_qrs_items() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


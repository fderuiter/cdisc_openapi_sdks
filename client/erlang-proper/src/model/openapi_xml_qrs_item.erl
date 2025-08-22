-module(openapi_xml_qrs_item).

-include("openapi.hrl").

-export([openapi_xml_qrs_item/0]).

-export([openapi_xml_qrs_item/1]).

-export_type([openapi_xml_qrs_item/0]).

-type openapi_xml_qrs_item() ::
  [ {'self', openapi_qrs_item:openapi_qrs_item() }
  ].


openapi_xml_qrs_item() ->
    openapi_xml_qrs_item([]).

openapi_xml_qrs_item(Fields) ->
  Default = [ {'self', openapi_qrs_item:openapi_qrs_item() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


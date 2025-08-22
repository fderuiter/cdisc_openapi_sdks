-module(openapi_xml_adam_datastructure).

-include("openapi.hrl").

-export([openapi_xml_adam_datastructure/0]).

-export([openapi_xml_adam_datastructure/1]).

-export_type([openapi_xml_adam_datastructure/0]).

-type openapi_xml_adam_datastructure() ::
  [ {'self', openapi_adam_datastructure:openapi_adam_datastructure() }
  ].


openapi_xml_adam_datastructure() ->
    openapi_xml_adam_datastructure([]).

openapi_xml_adam_datastructure(Fields) ->
  Default = [ {'self', openapi_adam_datastructure:openapi_adam_datastructure() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


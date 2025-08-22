-module(openapi_xml_adam_datastructure_varsets).

-include("openapi.hrl").

-export([openapi_xml_adam_datastructure_varsets/0]).

-export([openapi_xml_adam_datastructure_varsets/1]).

-export_type([openapi_xml_adam_datastructure_varsets/0]).

-type openapi_xml_adam_datastructure_varsets() ::
  [ {'self', openapi_adam_datastructure_varsets:openapi_adam_datastructure_varsets() }
  ].


openapi_xml_adam_datastructure_varsets() ->
    openapi_xml_adam_datastructure_varsets([]).

openapi_xml_adam_datastructure_varsets(Fields) ->
  Default = [ {'self', openapi_adam_datastructure_varsets:openapi_adam_datastructure_varsets() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


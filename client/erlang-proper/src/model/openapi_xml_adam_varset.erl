-module(openapi_xml_adam_varset).

-include("openapi.hrl").

-export([openapi_xml_adam_varset/0]).

-export([openapi_xml_adam_varset/1]).

-export_type([openapi_xml_adam_varset/0]).

-type openapi_xml_adam_varset() ::
  [ {'self', openapi_adam_varset:openapi_adam_varset() }
  ].


openapi_xml_adam_varset() ->
    openapi_xml_adam_varset([]).

openapi_xml_adam_varset(Fields) ->
  Default = [ {'self', openapi_adam_varset:openapi_adam_varset() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


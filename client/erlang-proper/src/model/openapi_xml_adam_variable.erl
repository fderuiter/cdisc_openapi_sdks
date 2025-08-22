-module(openapi_xml_adam_variable).

-include("openapi.hrl").

-export([openapi_xml_adam_variable/0]).

-export([openapi_xml_adam_variable/1]).

-export_type([openapi_xml_adam_variable/0]).

-type openapi_xml_adam_variable() ::
  [ {'self', openapi_adam_variable:openapi_adam_variable() }
  ].


openapi_xml_adam_variable() ->
    openapi_xml_adam_variable([]).

openapi_xml_adam_variable(Fields) ->
  Default = [ {'self', openapi_adam_variable:openapi_adam_variable() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


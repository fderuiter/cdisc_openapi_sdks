-module(openapi_xml_adam_datastructure_variables).

-include("openapi.hrl").

-export([openapi_xml_adam_datastructure_variables/0]).

-export([openapi_xml_adam_datastructure_variables/1]).

-export_type([openapi_xml_adam_datastructure_variables/0]).

-type openapi_xml_adam_datastructure_variables() ::
  [ {'self', openapi_adam_datastructure_variables:openapi_adam_datastructure_variables() }
  ].


openapi_xml_adam_datastructure_variables() ->
    openapi_xml_adam_datastructure_variables([]).

openapi_xml_adam_datastructure_variables(Fields) ->
  Default = [ {'self', openapi_adam_datastructure_variables:openapi_adam_datastructure_variables() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


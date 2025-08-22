-module(openapi_xml_sendig_classes).

-include("openapi.hrl").

-export([openapi_xml_sendig_classes/0]).

-export([openapi_xml_sendig_classes/1]).

-export_type([openapi_xml_sendig_classes/0]).

-type openapi_xml_sendig_classes() ::
  [ {'self', openapi_sendig_classes:openapi_sendig_classes() }
  ].


openapi_xml_sendig_classes() ->
    openapi_xml_sendig_classes([]).

openapi_xml_sendig_classes(Fields) ->
  Default = [ {'self', openapi_sendig_classes:openapi_sendig_classes() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


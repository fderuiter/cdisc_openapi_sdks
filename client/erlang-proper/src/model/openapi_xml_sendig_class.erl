-module(openapi_xml_sendig_class).

-include("openapi.hrl").

-export([openapi_xml_sendig_class/0]).

-export([openapi_xml_sendig_class/1]).

-export_type([openapi_xml_sendig_class/0]).

-type openapi_xml_sendig_class() ::
  [ {'self', openapi_sendig_class:openapi_sendig_class() }
  ].


openapi_xml_sendig_class() ->
    openapi_xml_sendig_class([]).

openapi_xml_sendig_class(Fields) ->
  Default = [ {'self', openapi_sendig_class:openapi_sendig_class() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


-module(openapi_xml_productgroup_terminology).

-include("openapi.hrl").

-export([openapi_xml_productgroup_terminology/0]).

-export([openapi_xml_productgroup_terminology/1]).

-export_type([openapi_xml_productgroup_terminology/0]).

-type openapi_xml_productgroup_terminology() ::
  [ {'self', openapi_productgroup_terminology:openapi_productgroup_terminology() }
  ].


openapi_xml_productgroup_terminology() ->
    openapi_xml_productgroup_terminology([]).

openapi_xml_productgroup_terminology(Fields) ->
  Default = [ {'self', openapi_productgroup_terminology:openapi_productgroup_terminology() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


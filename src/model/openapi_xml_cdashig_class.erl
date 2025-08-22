-module(openapi_xml_cdashig_class).

-include("openapi.hrl").

-export([openapi_xml_cdashig_class/0]).

-export([openapi_xml_cdashig_class/1]).

-export_type([openapi_xml_cdashig_class/0]).

-type openapi_xml_cdashig_class() ::
  [ {'self', openapi_cdashig_class:openapi_cdashig_class() }
  ].


openapi_xml_cdashig_class() ->
    openapi_xml_cdashig_class([]).

openapi_xml_cdashig_class(Fields) ->
  Default = [ {'self', openapi_cdashig_class:openapi_cdashig_class() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


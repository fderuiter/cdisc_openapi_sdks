-module(openapi_xml_cdash_class).

-include("openapi.hrl").

-export([openapi_xml_cdash_class/0]).

-export([openapi_xml_cdash_class/1]).

-export_type([openapi_xml_cdash_class/0]).

-type openapi_xml_cdash_class() ::
  [ {'self', openapi_cdash_class:openapi_cdash_class() }
  ].


openapi_xml_cdash_class() ->
    openapi_xml_cdash_class([]).

openapi_xml_cdash_class(Fields) ->
  Default = [ {'self', openapi_cdash_class:openapi_cdash_class() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


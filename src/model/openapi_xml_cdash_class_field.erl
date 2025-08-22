-module(openapi_xml_cdash_class_field).

-include("openapi.hrl").

-export([openapi_xml_cdash_class_field/0]).

-export([openapi_xml_cdash_class_field/1]).

-export_type([openapi_xml_cdash_class_field/0]).

-type openapi_xml_cdash_class_field() ::
  [ {'self', openapi_cdash_class_field:openapi_cdash_class_field() }
  ].


openapi_xml_cdash_class_field() ->
    openapi_xml_cdash_class_field([]).

openapi_xml_cdash_class_field(Fields) ->
  Default = [ {'self', openapi_cdash_class_field:openapi_cdash_class_field() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


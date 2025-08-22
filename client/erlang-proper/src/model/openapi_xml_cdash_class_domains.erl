-module(openapi_xml_cdash_class_domains).

-include("openapi.hrl").

-export([openapi_xml_cdash_class_domains/0]).

-export([openapi_xml_cdash_class_domains/1]).

-export_type([openapi_xml_cdash_class_domains/0]).

-type openapi_xml_cdash_class_domains() ::
  [ {'self', openapi_cdash_class_domains:openapi_cdash_class_domains() }
  ].


openapi_xml_cdash_class_domains() ->
    openapi_xml_cdash_class_domains([]).

openapi_xml_cdash_class_domains(Fields) ->
  Default = [ {'self', openapi_cdash_class_domains:openapi_cdash_class_domains() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


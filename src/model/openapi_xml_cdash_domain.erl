-module(openapi_xml_cdash_domain).

-include("openapi.hrl").

-export([openapi_xml_cdash_domain/0]).

-export([openapi_xml_cdash_domain/1]).

-export_type([openapi_xml_cdash_domain/0]).

-type openapi_xml_cdash_domain() ::
  [ {'self', openapi_cdash_domain:openapi_cdash_domain() }
  ].


openapi_xml_cdash_domain() ->
    openapi_xml_cdash_domain([]).

openapi_xml_cdash_domain(Fields) ->
  Default = [ {'self', openapi_cdash_domain:openapi_cdash_domain() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


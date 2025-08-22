-module(openapi_xml_cdash_domain_field).

-include("openapi.hrl").

-export([openapi_xml_cdash_domain_field/0]).

-export([openapi_xml_cdash_domain_field/1]).

-export_type([openapi_xml_cdash_domain_field/0]).

-type openapi_xml_cdash_domain_field() ::
  [ {'self', openapi_cdash_domain_field:openapi_cdash_domain_field() }
  ].


openapi_xml_cdash_domain_field() ->
    openapi_xml_cdash_domain_field([]).

openapi_xml_cdash_domain_field(Fields) ->
  Default = [ {'self', openapi_cdash_domain_field:openapi_cdash_domain_field() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


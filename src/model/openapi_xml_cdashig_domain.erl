-module(openapi_xml_cdashig_domain).

-include("openapi.hrl").

-export([openapi_xml_cdashig_domain/0]).

-export([openapi_xml_cdashig_domain/1]).

-export_type([openapi_xml_cdashig_domain/0]).

-type openapi_xml_cdashig_domain() ::
  [ {'self', openapi_cdashig_domain:openapi_cdashig_domain() }
  ].


openapi_xml_cdashig_domain() ->
    openapi_xml_cdashig_domain([]).

openapi_xml_cdashig_domain(Fields) ->
  Default = [ {'self', openapi_cdashig_domain:openapi_cdashig_domain() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


-module(openapi_xml_cdashig_domain_fields).

-include("openapi.hrl").

-export([openapi_xml_cdashig_domain_fields/0]).

-export([openapi_xml_cdashig_domain_fields/1]).

-export_type([openapi_xml_cdashig_domain_fields/0]).

-type openapi_xml_cdashig_domain_fields() ::
  [ {'self', openapi_cdashig_domain_fields:openapi_cdashig_domain_fields() }
  ].


openapi_xml_cdashig_domain_fields() ->
    openapi_xml_cdashig_domain_fields([]).

openapi_xml_cdashig_domain_fields(Fields) ->
  Default = [ {'self', openapi_cdashig_domain_fields:openapi_cdashig_domain_fields() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


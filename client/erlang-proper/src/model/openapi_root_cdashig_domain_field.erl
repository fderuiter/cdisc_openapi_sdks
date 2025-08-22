-module(openapi_root_cdashig_domain_field).

-include("openapi.hrl").

-export([openapi_root_cdashig_domain_field/0]).

-export([openapi_root_cdashig_domain_field/1]).

-export_type([openapi_root_cdashig_domain_field/0]).

-type openapi_root_cdashig_domain_field() ::
  [ {'_links', openapi_root_cdashig_domain_field_links:openapi_root_cdashig_domain_field_links() }
  ].


openapi_root_cdashig_domain_field() ->
    openapi_root_cdashig_domain_field([]).

openapi_root_cdashig_domain_field(Fields) ->
  Default = [ {'_links', openapi_root_cdashig_domain_field_links:openapi_root_cdashig_domain_field_links() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


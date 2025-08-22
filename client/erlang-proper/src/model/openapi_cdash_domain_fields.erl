-module(openapi_cdash_domain_fields).

-include("openapi.hrl").

-export([openapi_cdash_domain_fields/0]).

-export([openapi_cdash_domain_fields/1]).

-export_type([openapi_cdash_domain_fields/0]).

-type openapi_cdash_domain_fields() ::
  [ {'ordinal', binary() }
  | {'name', binary() }
  | {'label', binary() }
  | {'_links', openapi_cdash_domain_fields_links:openapi_cdash_domain_fields_links() }
  ].


openapi_cdash_domain_fields() ->
    openapi_cdash_domain_fields([]).

openapi_cdash_domain_fields(Fields) ->
  Default = [ {'ordinal', binary() }
            , {'name', binary() }
            , {'label', binary() }
            , {'_links', openapi_cdash_domain_fields_links:openapi_cdash_domain_fields_links() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


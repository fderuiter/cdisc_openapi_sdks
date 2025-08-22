-module(openapi_root_cdash_domain_field_links).

-include("openapi.hrl").

-export([openapi_root_cdash_domain_field_links/0]).

-export([openapi_root_cdash_domain_field_links/1]).

-export_type([openapi_root_cdash_domain_field_links/0]).

-type openapi_root_cdash_domain_field_links() ::
  [ {'self', openapi_root_cdash_domain_field_ref:openapi_root_cdash_domain_field_ref() }
  | {'versions', list(openapi_cdash_domain_field_ref_version:openapi_cdash_domain_field_ref_version()) }
  ].


openapi_root_cdash_domain_field_links() ->
    openapi_root_cdash_domain_field_links([]).

openapi_root_cdash_domain_field_links(Fields) ->
  Default = [ {'self', openapi_root_cdash_domain_field_ref:openapi_root_cdash_domain_field_ref() }
            , {'versions', list(openapi_cdash_domain_field_ref_version:openapi_cdash_domain_field_ref_version()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


-module(openapi_ct_package_codelists).

-include("openapi.hrl").

-export([openapi_ct_package_codelists/0]).

-export([openapi_ct_package_codelists/1]).

-export_type([openapi_ct_package_codelists/0]).

-type openapi_ct_package_codelists() ::
  [ {'name', binary() }
  | {'label', binary() }
  | {'description', binary() }
  | {'source', binary() }
  | {'effectiveDate', binary() }
  | {'registrationStatus', binary() }
  | {'version', binary() }
  | {'_links', openapi_ct_package_codelists_links:openapi_ct_package_codelists_links() }
  ].


openapi_ct_package_codelists() ->
    openapi_ct_package_codelists([]).

openapi_ct_package_codelists(Fields) ->
  Default = [ {'name', binary() }
            , {'label', binary() }
            , {'description', binary() }
            , {'source', binary() }
            , {'effectiveDate', binary() }
            , {'registrationStatus', binary() }
            , {'version', binary() }
            , {'_links', openapi_ct_package_codelists_links:openapi_ct_package_codelists_links() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


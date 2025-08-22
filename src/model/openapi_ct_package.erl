-module(openapi_ct_package).

-include("openapi.hrl").

-export([openapi_ct_package/0]).

-export([openapi_ct_package/1]).

-export_type([openapi_ct_package/0]).

-type openapi_ct_package() ::
  [ {'name', binary() }
  | {'label', binary() }
  | {'description', binary() }
  | {'source', binary() }
  | {'effectiveDate', binary() }
  | {'registrationStatus', binary() }
  | {'version', binary() }
  | {'_links', openapi_ct_package_links:openapi_ct_package_links() }
  | {'codelists', list(openapi_ct_package_codelists:openapi_ct_package_codelists()) }
  ].


openapi_ct_package() ->
    openapi_ct_package([]).

openapi_ct_package(Fields) ->
  Default = [ {'name', binary() }
            , {'label', binary() }
            , {'description', binary() }
            , {'source', binary() }
            , {'effectiveDate', binary() }
            , {'registrationStatus', binary() }
            , {'version', binary() }
            , {'_links', openapi_ct_package_links:openapi_ct_package_links() }
            , {'codelists', list(openapi_ct_package_codelists:openapi_ct_package_codelists()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


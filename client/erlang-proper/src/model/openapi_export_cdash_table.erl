-module(openapi_export_cdash_table).

-include("openapi.hrl").

-export([openapi_export_cdash_table/0]).

-export([openapi_export_cdash_table/1]).

-export_type([openapi_export_cdash_table/0]).

-type openapi_export_cdash_table() ::
  [ {'class_variables', list(openapi_export_cdash_class_variables_row:openapi_export_cdash_class_variables_row()) }
  | {'domain_variables', list(openapi_export_cdash_domain_variables_row:openapi_export_cdash_domain_variables_row()) }
  ].


openapi_export_cdash_table() ->
    openapi_export_cdash_table([]).

openapi_export_cdash_table(Fields) ->
  Default = [ {'class-variables', list(openapi_export_cdash_class_variables_row:openapi_export_cdash_class_variables_row()) }
            , {'domain-variables', list(openapi_export_cdash_domain_variables_row:openapi_export_cdash_domain_variables_row()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


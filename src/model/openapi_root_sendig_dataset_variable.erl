-module(openapi_root_sendig_dataset_variable).

-include("openapi.hrl").

-export([openapi_root_sendig_dataset_variable/0]).

-export([openapi_root_sendig_dataset_variable/1]).

-export_type([openapi_root_sendig_dataset_variable/0]).

-type openapi_root_sendig_dataset_variable() ::
  [ {'_links', openapi_root_sendig_dataset_variable_links:openapi_root_sendig_dataset_variable_links() }
  ].


openapi_root_sendig_dataset_variable() ->
    openapi_root_sendig_dataset_variable([]).

openapi_root_sendig_dataset_variable(Fields) ->
  Default = [ {'_links', openapi_root_sendig_dataset_variable_links:openapi_root_sendig_dataset_variable_links() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


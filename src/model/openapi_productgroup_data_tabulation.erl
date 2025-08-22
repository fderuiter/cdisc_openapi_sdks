-module(openapi_productgroup_data_tabulation).

-include("openapi.hrl").

-export([openapi_productgroup_data_tabulation/0]).

-export([openapi_productgroup_data_tabulation/1]).

-export_type([openapi_productgroup_data_tabulation/0]).

-type openapi_productgroup_data_tabulation() ::
  [ {'_links', openapi_productgroup_data_tabulation_links:openapi_productgroup_data_tabulation_links() }
  ].


openapi_productgroup_data_tabulation() ->
    openapi_productgroup_data_tabulation([]).

openapi_productgroup_data_tabulation(Fields) ->
  Default = [ {'_links', openapi_productgroup_data_tabulation_links:openapi_productgroup_data_tabulation_links() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


-module(openapi_productgroup_data_analysis).

-include("openapi.hrl").

-export([openapi_productgroup_data_analysis/0]).

-export([openapi_productgroup_data_analysis/1]).

-export_type([openapi_productgroup_data_analysis/0]).

-type openapi_productgroup_data_analysis() ::
  [ {'_links', openapi_productgroup_data_analysis_links:openapi_productgroup_data_analysis_links() }
  ].


openapi_productgroup_data_analysis() ->
    openapi_productgroup_data_analysis([]).

openapi_productgroup_data_analysis(Fields) ->
  Default = [ {'_links', openapi_productgroup_data_analysis_links:openapi_productgroup_data_analysis_links() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


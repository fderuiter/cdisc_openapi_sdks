-module(openapi_productgroup_data_collection).

-include("openapi.hrl").

-export([openapi_productgroup_data_collection/0]).

-export([openapi_productgroup_data_collection/1]).

-export_type([openapi_productgroup_data_collection/0]).

-type openapi_productgroup_data_collection() ::
  [ {'_links', openapi_productgroup_data_collection_links:openapi_productgroup_data_collection_links() }
  ].


openapi_productgroup_data_collection() ->
    openapi_productgroup_data_collection([]).

openapi_productgroup_data_collection(Fields) ->
  Default = [ {'_links', openapi_productgroup_data_collection_links:openapi_productgroup_data_collection_links() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


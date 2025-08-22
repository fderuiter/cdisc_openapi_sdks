-module(openapi_xml_productgroup_data_collection).

-include("openapi.hrl").

-export([openapi_xml_productgroup_data_collection/0]).

-export([openapi_xml_productgroup_data_collection/1]).

-export_type([openapi_xml_productgroup_data_collection/0]).

-type openapi_xml_productgroup_data_collection() ::
  [ {'self', openapi_productgroup_data_collection:openapi_productgroup_data_collection() }
  ].


openapi_xml_productgroup_data_collection() ->
    openapi_xml_productgroup_data_collection([]).

openapi_xml_productgroup_data_collection(Fields) ->
  Default = [ {'self', openapi_productgroup_data_collection:openapi_productgroup_data_collection() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


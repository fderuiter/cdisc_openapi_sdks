-module(openapi_xml_productgroup_data_tabulation).

-include("openapi.hrl").

-export([openapi_xml_productgroup_data_tabulation/0]).

-export([openapi_xml_productgroup_data_tabulation/1]).

-export_type([openapi_xml_productgroup_data_tabulation/0]).

-type openapi_xml_productgroup_data_tabulation() ::
  [ {'self', openapi_productgroup_data_tabulation:openapi_productgroup_data_tabulation() }
  ].


openapi_xml_productgroup_data_tabulation() ->
    openapi_xml_productgroup_data_tabulation([]).

openapi_xml_productgroup_data_tabulation(Fields) ->
  Default = [ {'self', openapi_productgroup_data_tabulation:openapi_productgroup_data_tabulation() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


-module(openapi_xml_productgroup_data_analysis).

-include("openapi.hrl").

-export([openapi_xml_productgroup_data_analysis/0]).

-export([openapi_xml_productgroup_data_analysis/1]).

-export_type([openapi_xml_productgroup_data_analysis/0]).

-type openapi_xml_productgroup_data_analysis() ::
  [ {'self', openapi_productgroup_data_analysis:openapi_productgroup_data_analysis() }
  ].


openapi_xml_productgroup_data_analysis() ->
    openapi_xml_productgroup_data_analysis([]).

openapi_xml_productgroup_data_analysis(Fields) ->
  Default = [ {'self', openapi_productgroup_data_analysis:openapi_productgroup_data_analysis() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


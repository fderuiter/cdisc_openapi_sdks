-module(openapi_xml_sendig_dataset_variable).

-include("openapi.hrl").

-export([openapi_xml_sendig_dataset_variable/0]).

-export([openapi_xml_sendig_dataset_variable/1]).

-export_type([openapi_xml_sendig_dataset_variable/0]).

-type openapi_xml_sendig_dataset_variable() ::
  [ {'self', openapi_sendig_dataset_variable:openapi_sendig_dataset_variable() }
  ].


openapi_xml_sendig_dataset_variable() ->
    openapi_xml_sendig_dataset_variable([]).

openapi_xml_sendig_dataset_variable(Fields) ->
  Default = [ {'self', openapi_sendig_dataset_variable:openapi_sendig_dataset_variable() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


-module(openapi_xml_sendig_datasets).

-include("openapi.hrl").

-export([openapi_xml_sendig_datasets/0]).

-export([openapi_xml_sendig_datasets/1]).

-export_type([openapi_xml_sendig_datasets/0]).

-type openapi_xml_sendig_datasets() ::
  [ {'self', openapi_sendig_datasets:openapi_sendig_datasets() }
  ].


openapi_xml_sendig_datasets() ->
    openapi_xml_sendig_datasets([]).

openapi_xml_sendig_datasets(Fields) ->
  Default = [ {'self', openapi_sendig_datasets:openapi_sendig_datasets() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


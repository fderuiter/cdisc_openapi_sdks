-module(openapi_xml_sdtm_class_variables).

-include("openapi.hrl").

-export([openapi_xml_sdtm_class_variables/0]).

-export([openapi_xml_sdtm_class_variables/1]).

-export_type([openapi_xml_sdtm_class_variables/0]).

-type openapi_xml_sdtm_class_variables() ::
  [ {'self', openapi_sdtm_class_variables:openapi_sdtm_class_variables() }
  ].


openapi_xml_sdtm_class_variables() ->
    openapi_xml_sdtm_class_variables([]).

openapi_xml_sdtm_class_variables(Fields) ->
  Default = [ {'self', openapi_sdtm_class_variables:openapi_sdtm_class_variables() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


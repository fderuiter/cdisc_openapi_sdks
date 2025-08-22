-module(openapi_xml_ct_package_codelists).

-include("openapi.hrl").

-export([openapi_xml_ct_package_codelists/0]).

-export([openapi_xml_ct_package_codelists/1]).

-export_type([openapi_xml_ct_package_codelists/0]).

-type openapi_xml_ct_package_codelists() ::
  [ {'self', openapi_ct_package_codelists:openapi_ct_package_codelists() }
  ].


openapi_xml_ct_package_codelists() ->
    openapi_xml_ct_package_codelists([]).

openapi_xml_ct_package_codelists(Fields) ->
  Default = [ {'self', openapi_ct_package_codelists:openapi_ct_package_codelists() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).


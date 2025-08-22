-module(openapi_xml_sendig_dataset_variables).

-export([encode/1]).

-export_type([openapi_xml_sendig_dataset_variables/0]).

-type openapi_xml_sendig_dataset_variables() ::
    #{ 'self' => openapi_sendig_dataset_variables:openapi_sendig_dataset_variables()
     }.

encode(#{ 'self' := Self
        }) ->
    #{ 'self' => Self
     }.

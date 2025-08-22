-module(openapi_qrs_responsegroups).

-export([encode/1]).

-export_type([openapi_qrs_responsegroups/0]).

-type openapi_qrs_responsegroups() ::
    #{ 'name' => binary(),
       'label' => binary(),
       'description' => binary(),
       'effectiveDate' => binary(),
       'untilDate' => binary(),
       'registrationStatus' => binary(),
       'version' => binary(),
       'qrsType' => binary(),
       '_links' => openapi_qrs_responsegroups_links:openapi_qrs_responsegroups_links()
     }.

encode(#{ 'name' := Name,
          'label' := Label,
          'description' := Description,
          'effectiveDate' := EffectiveDate,
          'untilDate' := UntilDate,
          'registrationStatus' := RegistrationStatus,
          'version' := Version,
          'qrsType' := QrsType,
          '_links' := Links
        }) ->
    #{ 'name' => Name,
       'label' => Label,
       'description' => Description,
       'effectiveDate' => EffectiveDate,
       'untilDate' => UntilDate,
       'registrationStatus' => RegistrationStatus,
       'version' => Version,
       'qrsType' => QrsType,
       '_links' => Links
     }.

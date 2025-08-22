-module(openapi_qrs_items).

-export([encode/1]).

-export_type([openapi_qrs_items/0]).

-type openapi_qrs_items() ::
    #{ 'name' => binary(),
       'label' => binary(),
       'description' => binary(),
       'effectiveDate' => binary(),
       'untilDate' => binary(),
       'registrationStatus' => binary(),
       'version' => binary(),
       'qrsType' => binary(),
       '_links' => openapi_qrs_items_links:openapi_qrs_items_links()
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

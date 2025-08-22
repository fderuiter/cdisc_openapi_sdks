-module(openapi_sdtm_datasets).

-export([encode/1]).

-export_type([openapi_sdtm_datasets/0]).

-type openapi_sdtm_datasets() ::
    #{ 'name' => binary(),
       'label' => binary(),
       'description' => binary(),
       'source' => binary(),
       'effectiveDate' => binary(),
       'registrationStatus' => binary(),
       'version' => binary(),
       '_links' => openapi_sdtm_datasets_links:openapi_sdtm_datasets_links()
     }.

encode(#{ 'name' := Name,
          'label' := Label,
          'description' := Description,
          'source' := Source,
          'effectiveDate' := EffectiveDate,
          'registrationStatus' := RegistrationStatus,
          'version' := Version,
          '_links' := Links
        }) ->
    #{ 'name' => Name,
       'label' => Label,
       'description' => Description,
       'source' => Source,
       'effectiveDate' => EffectiveDate,
       'registrationStatus' => RegistrationStatus,
       'version' => Version,
       '_links' => Links
     }.

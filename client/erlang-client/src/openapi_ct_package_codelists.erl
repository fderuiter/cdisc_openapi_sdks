-module(openapi_ct_package_codelists).

-export([encode/1]).

-export_type([openapi_ct_package_codelists/0]).

-type openapi_ct_package_codelists() ::
    #{ 'name' => binary(),
       'label' => binary(),
       'description' => binary(),
       'source' => binary(),
       'effectiveDate' => binary(),
       'registrationStatus' => binary(),
       'version' => binary(),
       '_links' => openapi_ct_package_codelists_links:openapi_ct_package_codelists_links()
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

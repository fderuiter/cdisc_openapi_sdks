-module(openapi_ct_codelist).

-export([encode/1]).

-export_type([openapi_ct_codelist/0]).

-type openapi_ct_codelist() ::
    #{ 'conceptId' => binary(),
       'extensible' => binary(),
       'name' => binary(),
       'submissionValue' => binary(),
       'definition' => binary(),
       'preferredTerm' => binary(),
       'synonyms' => list(),
       '_links' => openapi_ct_codelist_links:openapi_ct_codelist_links(),
       'terms' => list()
     }.

encode(#{ 'conceptId' := ConceptId,
          'extensible' := Extensible,
          'name' := Name,
          'submissionValue' := SubmissionValue,
          'definition' := Definition,
          'preferredTerm' := PreferredTerm,
          'synonyms' := Synonyms,
          '_links' := Links,
          'terms' := Terms
        }) ->
    #{ 'conceptId' => ConceptId,
       'extensible' => Extensible,
       'name' => Name,
       'submissionValue' => SubmissionValue,
       'definition' => Definition,
       'preferredTerm' => PreferredTerm,
       'synonyms' => Synonyms,
       '_links' => Links,
       'terms' => Terms
     }.

-module(openapi_ct_codelist_terms).

-export([encode/1]).

-export_type([openapi_ct_codelist_terms/0]).

-type openapi_ct_codelist_terms() ::
    #{ 'conceptId' => binary(),
       'extensible' => binary(),
       'name' => binary(),
       'submissionValue' => binary(),
       'definition' => binary(),
       'preferredTerm' => binary(),
       'synonyms' => list(),
       '_links' => openapi_ct_codelist_terms_links:openapi_ct_codelist_terms_links()
     }.

encode(#{ 'conceptId' := ConceptId,
          'extensible' := Extensible,
          'name' := Name,
          'submissionValue' := SubmissionValue,
          'definition' := Definition,
          'preferredTerm' := PreferredTerm,
          'synonyms' := Synonyms,
          '_links' := Links
        }) ->
    #{ 'conceptId' => ConceptId,
       'extensible' => Extensible,
       'name' => Name,
       'submissionValue' => SubmissionValue,
       'definition' => Definition,
       'preferredTerm' => PreferredTerm,
       'synonyms' => Synonyms,
       '_links' => Links
     }.

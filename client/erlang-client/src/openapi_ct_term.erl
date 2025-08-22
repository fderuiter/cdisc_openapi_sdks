-module(openapi_ct_term).

-export([encode/1]).

-export_type([openapi_ct_term/0]).

-type openapi_ct_term() ::
    #{ 'conceptId' => binary(),
       'submissionValue' => binary(),
       'definition' => binary(),
       'preferredTerm' => binary(),
       'synonyms' => list(),
       '_links' => openapi_ct_term_links:openapi_ct_term_links()
     }.

encode(#{ 'conceptId' := ConceptId,
          'submissionValue' := SubmissionValue,
          'definition' := Definition,
          'preferredTerm' := PreferredTerm,
          'synonyms' := Synonyms,
          '_links' := Links
        }) ->
    #{ 'conceptId' => ConceptId,
       'submissionValue' => SubmissionValue,
       'definition' => Definition,
       'preferredTerm' => PreferredTerm,
       'synonyms' => Synonyms,
       '_links' => Links
     }.

-module(openapi_ct_package_term).

-export([encode/1]).

-export_type([openapi_ct_package_term/0]).

-type openapi_ct_package_term() ::
    #{ 'conceptId' => binary(),
       'submissionValue' => binary(),
       'definition' => binary(),
       'preferredTerm' => binary(),
       'synonyms' => list()
     }.

encode(#{ 'conceptId' := ConceptId,
          'submissionValue' := SubmissionValue,
          'definition' := Definition,
          'preferredTerm' := PreferredTerm,
          'synonyms' := Synonyms
        }) ->
    #{ 'conceptId' => ConceptId,
       'submissionValue' => SubmissionValue,
       'definition' => Definition,
       'preferredTerm' => PreferredTerm,
       'synonyms' => Synonyms
     }.

-module(openapi_default_error_response).

-export([encode/1]).

-export_type([openapi_default_error_response/0]).

-type openapi_default_error_response() ::
    #{ 'statusCode' => binary(),
       'reasonPhrase' => binary(),
       'userMessage' => binary(),
       'adminMessage' => binary()
     }.

encode(#{ 'statusCode' := StatusCode,
          'reasonPhrase' := ReasonPhrase,
          'userMessage' := UserMessage,
          'adminMessage' := AdminMessage
        }) ->
    #{ 'statusCode' => StatusCode,
       'reasonPhrase' => ReasonPhrase,
       'userMessage' => UserMessage,
       'adminMessage' => AdminMessage
     }.

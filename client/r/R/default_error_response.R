#' Create a new DefaultErrorResponse
#'
#' @description
#' DefaultErrorResponse Class
#'
#' @docType class
#' @title DefaultErrorResponse
#' @description DefaultErrorResponse Class
#' @format An \code{R6Class} generator object
#' @field statusCode HTTP Status Code character [optional]
#' @field reasonPhrase HTTP Reason Phrase character [optional]
#' @field userMessage User Error Message character [optional]
#' @field adminMessage Admin Error Message character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DefaultErrorResponse <- R6::R6Class(
  "DefaultErrorResponse",
  public = list(
    `statusCode` = NULL,
    `reasonPhrase` = NULL,
    `userMessage` = NULL,
    `adminMessage` = NULL,

    #' @description
    #' Initialize a new DefaultErrorResponse class.
    #'
    #' @param statusCode HTTP Status Code
    #' @param reasonPhrase HTTP Reason Phrase
    #' @param userMessage User Error Message
    #' @param adminMessage Admin Error Message
    #' @param ... Other optional arguments.
    initialize = function(`statusCode` = NULL, `reasonPhrase` = NULL, `userMessage` = NULL, `adminMessage` = NULL, ...) {
      if (!is.null(`statusCode`)) {
        if (!(is.character(`statusCode`) && length(`statusCode`) == 1)) {
          stop(paste("Error! Invalid data for `statusCode`. Must be a string:", `statusCode`))
        }
        self$`statusCode` <- `statusCode`
      }
      if (!is.null(`reasonPhrase`)) {
        if (!(is.character(`reasonPhrase`) && length(`reasonPhrase`) == 1)) {
          stop(paste("Error! Invalid data for `reasonPhrase`. Must be a string:", `reasonPhrase`))
        }
        self$`reasonPhrase` <- `reasonPhrase`
      }
      if (!is.null(`userMessage`)) {
        if (!(is.character(`userMessage`) && length(`userMessage`) == 1)) {
          stop(paste("Error! Invalid data for `userMessage`. Must be a string:", `userMessage`))
        }
        self$`userMessage` <- `userMessage`
      }
      if (!is.null(`adminMessage`)) {
        if (!(is.character(`adminMessage`) && length(`adminMessage`) == 1)) {
          stop(paste("Error! Invalid data for `adminMessage`. Must be a string:", `adminMessage`))
        }
        self$`adminMessage` <- `adminMessage`
      }
    },

    #' @description
    #' Convert to an R object. This method is deprecated. Use `toSimpleType()` instead.
    toJSON = function() {
      .Deprecated(new = "toSimpleType", msg = "Use the '$toSimpleType()' method instead since that is more clearly named. Use '$toJSONString()' to get a JSON string")
      return(self$toSimpleType())
    },

    #' @description
    #' Convert to a List
    #'
    #' Convert the R6 object to a list to work more easily with other tooling.
    #'
    #' @return DefaultErrorResponse as a base R list.
    #' @examples
    #' # convert array of DefaultErrorResponse (x) to a data frame
    #' \dontrun{
    #' library(purrr)
    #' library(tibble)
    #' df <- x |> map(\(y)y$toList()) |> map(as_tibble) |> list_rbind()
    #' df
    #' }
    toList = function() {
      return(self$toSimpleType())
    },

    #' @description
    #' Convert DefaultErrorResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      DefaultErrorResponseObject <- list()
      if (!is.null(self$`statusCode`)) {
        DefaultErrorResponseObject[["statusCode"]] <-
          self$`statusCode`
      }
      if (!is.null(self$`reasonPhrase`)) {
        DefaultErrorResponseObject[["reasonPhrase"]] <-
          self$`reasonPhrase`
      }
      if (!is.null(self$`userMessage`)) {
        DefaultErrorResponseObject[["userMessage"]] <-
          self$`userMessage`
      }
      if (!is.null(self$`adminMessage`)) {
        DefaultErrorResponseObject[["adminMessage"]] <-
          self$`adminMessage`
      }
      return(DefaultErrorResponseObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of DefaultErrorResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of DefaultErrorResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`statusCode`)) {
        self$`statusCode` <- this_object$`statusCode`
      }
      if (!is.null(this_object$`reasonPhrase`)) {
        self$`reasonPhrase` <- this_object$`reasonPhrase`
      }
      if (!is.null(this_object$`userMessage`)) {
        self$`userMessage` <- this_object$`userMessage`
      }
      if (!is.null(this_object$`adminMessage`)) {
        self$`adminMessage` <- this_object$`adminMessage`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return DefaultErrorResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of DefaultErrorResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of DefaultErrorResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`statusCode` <- this_object$`statusCode`
      self$`reasonPhrase` <- this_object$`reasonPhrase`
      self$`userMessage` <- this_object$`userMessage`
      self$`adminMessage` <- this_object$`adminMessage`
      self
    },

    #' @description
    #' Validate JSON input with respect to DefaultErrorResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of DefaultErrorResponse
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      TRUE
    },

    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    getInvalidFields = function() {
      invalid_fields <- list()
      invalid_fields
    },

    #' @description
    #' Print the object
    print = function() {
      print(jsonlite::prettify(self$toJSONString()))
      invisible(self)
    }
  ),
  # Lock the class to prevent modifications to the method or field
  lock_class = TRUE
)
## Uncomment below to unlock the class to allow modifications of the method or field
# DefaultErrorResponse$unlock()
#
## Below is an example to define the print function
# DefaultErrorResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# DefaultErrorResponse$lock()


#' Create a new CtPackageTerm
#'
#' @description
#' CtPackageTerm Class
#'
#' @docType class
#' @title CtPackageTerm
#' @description CtPackageTerm Class
#' @format An \code{R6Class} generator object
#' @field conceptId  character [optional]
#' @field submissionValue  character [optional]
#' @field definition  character [optional]
#' @field preferredTerm  character [optional]
#' @field synonyms  list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CtPackageTerm <- R6::R6Class(
  "CtPackageTerm",
  public = list(
    `conceptId` = NULL,
    `submissionValue` = NULL,
    `definition` = NULL,
    `preferredTerm` = NULL,
    `synonyms` = NULL,

    #' @description
    #' Initialize a new CtPackageTerm class.
    #'
    #' @param conceptId conceptId
    #' @param submissionValue submissionValue
    #' @param definition definition
    #' @param preferredTerm preferredTerm
    #' @param synonyms synonyms
    #' @param ... Other optional arguments.
    initialize = function(`conceptId` = NULL, `submissionValue` = NULL, `definition` = NULL, `preferredTerm` = NULL, `synonyms` = NULL, ...) {
      if (!is.null(`conceptId`)) {
        if (!(is.character(`conceptId`) && length(`conceptId`) == 1)) {
          stop(paste("Error! Invalid data for `conceptId`. Must be a string:", `conceptId`))
        }
        self$`conceptId` <- `conceptId`
      }
      if (!is.null(`submissionValue`)) {
        if (!(is.character(`submissionValue`) && length(`submissionValue`) == 1)) {
          stop(paste("Error! Invalid data for `submissionValue`. Must be a string:", `submissionValue`))
        }
        self$`submissionValue` <- `submissionValue`
      }
      if (!is.null(`definition`)) {
        if (!(is.character(`definition`) && length(`definition`) == 1)) {
          stop(paste("Error! Invalid data for `definition`. Must be a string:", `definition`))
        }
        self$`definition` <- `definition`
      }
      if (!is.null(`preferredTerm`)) {
        if (!(is.character(`preferredTerm`) && length(`preferredTerm`) == 1)) {
          stop(paste("Error! Invalid data for `preferredTerm`. Must be a string:", `preferredTerm`))
        }
        self$`preferredTerm` <- `preferredTerm`
      }
      if (!is.null(`synonyms`)) {
        stopifnot(is.vector(`synonyms`), length(`synonyms`) != 0)
        sapply(`synonyms`, function(x) stopifnot(is.character(x)))
        self$`synonyms` <- `synonyms`
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
    #' @return CtPackageTerm as a base R list.
    #' @examples
    #' # convert array of CtPackageTerm (x) to a data frame
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
    #' Convert CtPackageTerm to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CtPackageTermObject <- list()
      if (!is.null(self$`conceptId`)) {
        CtPackageTermObject[["conceptId"]] <-
          self$`conceptId`
      }
      if (!is.null(self$`submissionValue`)) {
        CtPackageTermObject[["submissionValue"]] <-
          self$`submissionValue`
      }
      if (!is.null(self$`definition`)) {
        CtPackageTermObject[["definition"]] <-
          self$`definition`
      }
      if (!is.null(self$`preferredTerm`)) {
        CtPackageTermObject[["preferredTerm"]] <-
          self$`preferredTerm`
      }
      if (!is.null(self$`synonyms`)) {
        CtPackageTermObject[["synonyms"]] <-
          self$`synonyms`
      }
      return(CtPackageTermObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of CtPackageTerm
    #'
    #' @param input_json the JSON input
    #' @return the instance of CtPackageTerm
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`conceptId`)) {
        self$`conceptId` <- this_object$`conceptId`
      }
      if (!is.null(this_object$`submissionValue`)) {
        self$`submissionValue` <- this_object$`submissionValue`
      }
      if (!is.null(this_object$`definition`)) {
        self$`definition` <- this_object$`definition`
      }
      if (!is.null(this_object$`preferredTerm`)) {
        self$`preferredTerm` <- this_object$`preferredTerm`
      }
      if (!is.null(this_object$`synonyms`)) {
        self$`synonyms` <- ApiClient$new()$deserializeObj(this_object$`synonyms`, "array[character]", loadNamespace("openapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CtPackageTerm in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CtPackageTerm
    #'
    #' @param input_json the JSON input
    #' @return the instance of CtPackageTerm
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`conceptId` <- this_object$`conceptId`
      self$`submissionValue` <- this_object$`submissionValue`
      self$`definition` <- this_object$`definition`
      self$`preferredTerm` <- this_object$`preferredTerm`
      self$`synonyms` <- ApiClient$new()$deserializeObj(this_object$`synonyms`, "array[character]", loadNamespace("openapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to CtPackageTerm and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CtPackageTerm
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
# CtPackageTerm$unlock()
#
## Below is an example to define the print function
# CtPackageTerm$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CtPackageTerm$lock()


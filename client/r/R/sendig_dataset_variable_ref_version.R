#' Create a new SendigDatasetVariableRefVersion
#'
#' @description
#' SendigDatasetVariableRefVersion Class
#'
#' @docType class
#' @title SendigDatasetVariableRefVersion
#' @description SendigDatasetVariableRefVersion Class
#' @format An \code{R6Class} generator object
#' @field href  character [optional]
#' @field title  character [optional]
#' @field type  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SendigDatasetVariableRefVersion <- R6::R6Class(
  "SendigDatasetVariableRefVersion",
  public = list(
    `href` = NULL,
    `title` = NULL,
    `type` = NULL,

    #' @description
    #' Initialize a new SendigDatasetVariableRefVersion class.
    #'
    #' @param href href
    #' @param title title
    #' @param type type
    #' @param ... Other optional arguments.
    initialize = function(`href` = NULL, `title` = NULL, `type` = NULL, ...) {
      if (!is.null(`href`)) {
        if (!(is.character(`href`) && length(`href`) == 1)) {
          stop(paste("Error! Invalid data for `href`. Must be a string:", `href`))
        }
        self$`href` <- `href`
      }
      if (!is.null(`title`)) {
        if (!(is.character(`title`) && length(`title`) == 1)) {
          stop(paste("Error! Invalid data for `title`. Must be a string:", `title`))
        }
        self$`title` <- `title`
      }
      if (!is.null(`type`)) {
        if (!(is.character(`type`) && length(`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", `type`))
        }
        self$`type` <- `type`
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
    #' @return SendigDatasetVariableRefVersion as a base R list.
    #' @examples
    #' # convert array of SendigDatasetVariableRefVersion (x) to a data frame
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
    #' Convert SendigDatasetVariableRefVersion to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      SendigDatasetVariableRefVersionObject <- list()
      if (!is.null(self$`href`)) {
        SendigDatasetVariableRefVersionObject[["href"]] <-
          self$`href`
      }
      if (!is.null(self$`title`)) {
        SendigDatasetVariableRefVersionObject[["title"]] <-
          self$`title`
      }
      if (!is.null(self$`type`)) {
        SendigDatasetVariableRefVersionObject[["type"]] <-
          self$`type`
      }
      return(SendigDatasetVariableRefVersionObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of SendigDatasetVariableRefVersion
    #'
    #' @param input_json the JSON input
    #' @return the instance of SendigDatasetVariableRefVersion
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`href`)) {
        self$`href` <- this_object$`href`
      }
      if (!is.null(this_object$`title`)) {
        self$`title` <- this_object$`title`
      }
      if (!is.null(this_object$`type`)) {
        self$`type` <- this_object$`type`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return SendigDatasetVariableRefVersion in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of SendigDatasetVariableRefVersion
    #'
    #' @param input_json the JSON input
    #' @return the instance of SendigDatasetVariableRefVersion
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`href` <- this_object$`href`
      self$`title` <- this_object$`title`
      self$`type` <- this_object$`type`
      self
    },

    #' @description
    #' Validate JSON input with respect to SendigDatasetVariableRefVersion and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of SendigDatasetVariableRefVersion
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
# SendigDatasetVariableRefVersion$unlock()
#
## Below is an example to define the print function
# SendigDatasetVariableRefVersion$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SendigDatasetVariableRefVersion$lock()


#' Create a new QrsResponsegroup
#'
#' @description
#' QrsResponsegroup Class
#'
#' @docType class
#' @title QrsResponsegroup
#' @description QrsResponsegroup Class
#' @format An \code{R6Class} generator object
#' @field label  character [optional]
#' @field _links  \link{QrsResponsegroupLinks} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
QrsResponsegroup <- R6::R6Class(
  "QrsResponsegroup",
  public = list(
    `label` = NULL,
    `_links` = NULL,

    #' @description
    #' Initialize a new QrsResponsegroup class.
    #'
    #' @param label label
    #' @param _links _links
    #' @param ... Other optional arguments.
    initialize = function(`label` = NULL, `_links` = NULL, ...) {
      if (!is.null(`label`)) {
        if (!(is.character(`label`) && length(`label`) == 1)) {
          stop(paste("Error! Invalid data for `label`. Must be a string:", `label`))
        }
        self$`label` <- `label`
      }
      if (!is.null(`_links`)) {
        stopifnot(R6::is.R6(`_links`))
        self$`_links` <- `_links`
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
    #' @return QrsResponsegroup as a base R list.
    #' @examples
    #' # convert array of QrsResponsegroup (x) to a data frame
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
    #' Convert QrsResponsegroup to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      QrsResponsegroupObject <- list()
      if (!is.null(self$`label`)) {
        QrsResponsegroupObject[["label"]] <-
          self$`label`
      }
      if (!is.null(self$`_links`)) {
        QrsResponsegroupObject[["_links"]] <-
          self$`_links`$toSimpleType()
      }
      return(QrsResponsegroupObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of QrsResponsegroup
    #'
    #' @param input_json the JSON input
    #' @return the instance of QrsResponsegroup
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`label`)) {
        self$`label` <- this_object$`label`
      }
      if (!is.null(this_object$`_links`)) {
        `_links_object` <- QrsResponsegroupLinks$new()
        `_links_object`$fromJSON(jsonlite::toJSON(this_object$`_links`, auto_unbox = TRUE, digits = NA))
        self$`_links` <- `_links_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return QrsResponsegroup in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of QrsResponsegroup
    #'
    #' @param input_json the JSON input
    #' @return the instance of QrsResponsegroup
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`label` <- this_object$`label`
      self$`_links` <- QrsResponsegroupLinks$new()$fromJSON(jsonlite::toJSON(this_object$`_links`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to QrsResponsegroup and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of QrsResponsegroup
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
# QrsResponsegroup$unlock()
#
## Below is an example to define the print function
# QrsResponsegroup$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# QrsResponsegroup$lock()


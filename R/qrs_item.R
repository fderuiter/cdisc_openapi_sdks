#' Create a new QrsItem
#'
#' @description
#' QrsItem Class
#'
#' @docType class
#' @title QrsItem
#' @description QrsItem Class
#' @format An \code{R6Class} generator object
#' @field ordinal  character [optional]
#' @field label  character [optional]
#' @field questionText  character [optional]
#' @field _links  \link{QrsItemLinks} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
QrsItem <- R6::R6Class(
  "QrsItem",
  public = list(
    `ordinal` = NULL,
    `label` = NULL,
    `questionText` = NULL,
    `_links` = NULL,

    #' @description
    #' Initialize a new QrsItem class.
    #'
    #' @param ordinal ordinal
    #' @param label label
    #' @param questionText questionText
    #' @param _links _links
    #' @param ... Other optional arguments.
    initialize = function(`ordinal` = NULL, `label` = NULL, `questionText` = NULL, `_links` = NULL, ...) {
      if (!is.null(`ordinal`)) {
        if (!(is.character(`ordinal`) && length(`ordinal`) == 1)) {
          stop(paste("Error! Invalid data for `ordinal`. Must be a string:", `ordinal`))
        }
        self$`ordinal` <- `ordinal`
      }
      if (!is.null(`label`)) {
        if (!(is.character(`label`) && length(`label`) == 1)) {
          stop(paste("Error! Invalid data for `label`. Must be a string:", `label`))
        }
        self$`label` <- `label`
      }
      if (!is.null(`questionText`)) {
        if (!(is.character(`questionText`) && length(`questionText`) == 1)) {
          stop(paste("Error! Invalid data for `questionText`. Must be a string:", `questionText`))
        }
        self$`questionText` <- `questionText`
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
    #' @return QrsItem as a base R list.
    #' @examples
    #' # convert array of QrsItem (x) to a data frame
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
    #' Convert QrsItem to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      QrsItemObject <- list()
      if (!is.null(self$`ordinal`)) {
        QrsItemObject[["ordinal"]] <-
          self$`ordinal`
      }
      if (!is.null(self$`label`)) {
        QrsItemObject[["label"]] <-
          self$`label`
      }
      if (!is.null(self$`questionText`)) {
        QrsItemObject[["questionText"]] <-
          self$`questionText`
      }
      if (!is.null(self$`_links`)) {
        QrsItemObject[["_links"]] <-
          self$`_links`$toSimpleType()
      }
      return(QrsItemObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of QrsItem
    #'
    #' @param input_json the JSON input
    #' @return the instance of QrsItem
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`ordinal`)) {
        self$`ordinal` <- this_object$`ordinal`
      }
      if (!is.null(this_object$`label`)) {
        self$`label` <- this_object$`label`
      }
      if (!is.null(this_object$`questionText`)) {
        self$`questionText` <- this_object$`questionText`
      }
      if (!is.null(this_object$`_links`)) {
        `_links_object` <- QrsItemLinks$new()
        `_links_object`$fromJSON(jsonlite::toJSON(this_object$`_links`, auto_unbox = TRUE, digits = NA))
        self$`_links` <- `_links_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return QrsItem in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of QrsItem
    #'
    #' @param input_json the JSON input
    #' @return the instance of QrsItem
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`ordinal` <- this_object$`ordinal`
      self$`label` <- this_object$`label`
      self$`questionText` <- this_object$`questionText`
      self$`_links` <- QrsItemLinks$new()$fromJSON(jsonlite::toJSON(this_object$`_links`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to QrsItem and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of QrsItem
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
# QrsItem$unlock()
#
## Below is an example to define the print function
# QrsItem$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# QrsItem$lock()


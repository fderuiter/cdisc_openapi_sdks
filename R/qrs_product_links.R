#' Create a new QrsProductLinks
#'
#' @description
#' QrsProductLinks Class
#'
#' @docType class
#' @title QrsProductLinks
#' @description QrsProductLinks Class
#' @format An \code{R6Class} generator object
#' @field item_self  \link{QrsProductRef} [optional]
#' @field priorVersion  \link{QrsProductRef} [optional]
#' @field qrsTermCAT  \link{RootCtTermRef} [optional]
#' @field qrsItems  \link{QrsItemsRef} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
QrsProductLinks <- R6::R6Class(
  "QrsProductLinks",
  public = list(
    `item_self` = NULL,
    `priorVersion` = NULL,
    `qrsTermCAT` = NULL,
    `qrsItems` = NULL,

    #' @description
    #' Initialize a new QrsProductLinks class.
    #'
    #' @param item_self item_self
    #' @param priorVersion priorVersion
    #' @param qrsTermCAT qrsTermCAT
    #' @param qrsItems qrsItems
    #' @param ... Other optional arguments.
    initialize = function(`item_self` = NULL, `priorVersion` = NULL, `qrsTermCAT` = NULL, `qrsItems` = NULL, ...) {
      if (!is.null(`item_self`)) {
        stopifnot(R6::is.R6(`item_self`))
        self$`item_self` <- `item_self`
      }
      if (!is.null(`priorVersion`)) {
        stopifnot(R6::is.R6(`priorVersion`))
        self$`priorVersion` <- `priorVersion`
      }
      if (!is.null(`qrsTermCAT`)) {
        stopifnot(R6::is.R6(`qrsTermCAT`))
        self$`qrsTermCAT` <- `qrsTermCAT`
      }
      if (!is.null(`qrsItems`)) {
        stopifnot(R6::is.R6(`qrsItems`))
        self$`qrsItems` <- `qrsItems`
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
    #' @return QrsProductLinks as a base R list.
    #' @examples
    #' # convert array of QrsProductLinks (x) to a data frame
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
    #' Convert QrsProductLinks to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      QrsProductLinksObject <- list()
      if (!is.null(self$`item_self`)) {
        QrsProductLinksObject[["self"]] <-
          self$`item_self`$toSimpleType()
      }
      if (!is.null(self$`priorVersion`)) {
        QrsProductLinksObject[["priorVersion"]] <-
          self$`priorVersion`$toSimpleType()
      }
      if (!is.null(self$`qrsTermCAT`)) {
        QrsProductLinksObject[["qrsTermCAT"]] <-
          self$`qrsTermCAT`$toSimpleType()
      }
      if (!is.null(self$`qrsItems`)) {
        QrsProductLinksObject[["qrsItems"]] <-
          self$`qrsItems`$toSimpleType()
      }
      return(QrsProductLinksObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of QrsProductLinks
    #'
    #' @param input_json the JSON input
    #' @return the instance of QrsProductLinks
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`self`)) {
        `item_self_object` <- QrsProductRef$new()
        `item_self_object`$fromJSON(jsonlite::toJSON(this_object$`self`, auto_unbox = TRUE, digits = NA))
        self$`item_self` <- `item_self_object`
      }
      if (!is.null(this_object$`priorVersion`)) {
        `priorversion_object` <- QrsProductRef$new()
        `priorversion_object`$fromJSON(jsonlite::toJSON(this_object$`priorVersion`, auto_unbox = TRUE, digits = NA))
        self$`priorVersion` <- `priorversion_object`
      }
      if (!is.null(this_object$`qrsTermCAT`)) {
        `qrstermcat_object` <- RootCtTermRef$new()
        `qrstermcat_object`$fromJSON(jsonlite::toJSON(this_object$`qrsTermCAT`, auto_unbox = TRUE, digits = NA))
        self$`qrsTermCAT` <- `qrstermcat_object`
      }
      if (!is.null(this_object$`qrsItems`)) {
        `qrsitems_object` <- QrsItemsRef$new()
        `qrsitems_object`$fromJSON(jsonlite::toJSON(this_object$`qrsItems`, auto_unbox = TRUE, digits = NA))
        self$`qrsItems` <- `qrsitems_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return QrsProductLinks in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of QrsProductLinks
    #'
    #' @param input_json the JSON input
    #' @return the instance of QrsProductLinks
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`item_self` <- QrsProductRef$new()$fromJSON(jsonlite::toJSON(this_object$`item_self`, auto_unbox = TRUE, digits = NA))
      self$`priorVersion` <- QrsProductRef$new()$fromJSON(jsonlite::toJSON(this_object$`priorVersion`, auto_unbox = TRUE, digits = NA))
      self$`qrsTermCAT` <- RootCtTermRef$new()$fromJSON(jsonlite::toJSON(this_object$`qrsTermCAT`, auto_unbox = TRUE, digits = NA))
      self$`qrsItems` <- QrsItemsRef$new()$fromJSON(jsonlite::toJSON(this_object$`qrsItems`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to QrsProductLinks and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of QrsProductLinks
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
# QrsProductLinks$unlock()
#
## Below is an example to define the print function
# QrsProductLinks$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# QrsProductLinks$lock()


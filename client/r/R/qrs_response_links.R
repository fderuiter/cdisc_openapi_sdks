#' Create a new QrsResponseLinks
#'
#' @description
#' QrsResponseLinks Class
#'
#' @docType class
#' @title QrsResponseLinks
#' @description QrsResponseLinks Class
#' @format An \code{R6Class} generator object
#' @field qrsResponseORRES  \link{RootCtTermRef} [optional]
#' @field qrsResponseORRESU  \link{RootCtTermRef} [optional]
#' @field qrsResponseSTRESC  \link{RootCtTermRef} [optional]
#' @field qrsResponseSTRESCU  \link{RootCtTermRef} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
QrsResponseLinks <- R6::R6Class(
  "QrsResponseLinks",
  public = list(
    `qrsResponseORRES` = NULL,
    `qrsResponseORRESU` = NULL,
    `qrsResponseSTRESC` = NULL,
    `qrsResponseSTRESCU` = NULL,

    #' @description
    #' Initialize a new QrsResponseLinks class.
    #'
    #' @param qrsResponseORRES qrsResponseORRES
    #' @param qrsResponseORRESU qrsResponseORRESU
    #' @param qrsResponseSTRESC qrsResponseSTRESC
    #' @param qrsResponseSTRESCU qrsResponseSTRESCU
    #' @param ... Other optional arguments.
    initialize = function(`qrsResponseORRES` = NULL, `qrsResponseORRESU` = NULL, `qrsResponseSTRESC` = NULL, `qrsResponseSTRESCU` = NULL, ...) {
      if (!is.null(`qrsResponseORRES`)) {
        stopifnot(R6::is.R6(`qrsResponseORRES`))
        self$`qrsResponseORRES` <- `qrsResponseORRES`
      }
      if (!is.null(`qrsResponseORRESU`)) {
        stopifnot(R6::is.R6(`qrsResponseORRESU`))
        self$`qrsResponseORRESU` <- `qrsResponseORRESU`
      }
      if (!is.null(`qrsResponseSTRESC`)) {
        stopifnot(R6::is.R6(`qrsResponseSTRESC`))
        self$`qrsResponseSTRESC` <- `qrsResponseSTRESC`
      }
      if (!is.null(`qrsResponseSTRESCU`)) {
        stopifnot(R6::is.R6(`qrsResponseSTRESCU`))
        self$`qrsResponseSTRESCU` <- `qrsResponseSTRESCU`
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
    #' @return QrsResponseLinks as a base R list.
    #' @examples
    #' # convert array of QrsResponseLinks (x) to a data frame
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
    #' Convert QrsResponseLinks to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      QrsResponseLinksObject <- list()
      if (!is.null(self$`qrsResponseORRES`)) {
        QrsResponseLinksObject[["qrsResponseORRES"]] <-
          self$`qrsResponseORRES`$toSimpleType()
      }
      if (!is.null(self$`qrsResponseORRESU`)) {
        QrsResponseLinksObject[["qrsResponseORRESU"]] <-
          self$`qrsResponseORRESU`$toSimpleType()
      }
      if (!is.null(self$`qrsResponseSTRESC`)) {
        QrsResponseLinksObject[["qrsResponseSTRESC"]] <-
          self$`qrsResponseSTRESC`$toSimpleType()
      }
      if (!is.null(self$`qrsResponseSTRESCU`)) {
        QrsResponseLinksObject[["qrsResponseSTRESCU"]] <-
          self$`qrsResponseSTRESCU`$toSimpleType()
      }
      return(QrsResponseLinksObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of QrsResponseLinks
    #'
    #' @param input_json the JSON input
    #' @return the instance of QrsResponseLinks
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`qrsResponseORRES`)) {
        `qrsresponseorres_object` <- RootCtTermRef$new()
        `qrsresponseorres_object`$fromJSON(jsonlite::toJSON(this_object$`qrsResponseORRES`, auto_unbox = TRUE, digits = NA))
        self$`qrsResponseORRES` <- `qrsresponseorres_object`
      }
      if (!is.null(this_object$`qrsResponseORRESU`)) {
        `qrsresponseorresu_object` <- RootCtTermRef$new()
        `qrsresponseorresu_object`$fromJSON(jsonlite::toJSON(this_object$`qrsResponseORRESU`, auto_unbox = TRUE, digits = NA))
        self$`qrsResponseORRESU` <- `qrsresponseorresu_object`
      }
      if (!is.null(this_object$`qrsResponseSTRESC`)) {
        `qrsresponsestresc_object` <- RootCtTermRef$new()
        `qrsresponsestresc_object`$fromJSON(jsonlite::toJSON(this_object$`qrsResponseSTRESC`, auto_unbox = TRUE, digits = NA))
        self$`qrsResponseSTRESC` <- `qrsresponsestresc_object`
      }
      if (!is.null(this_object$`qrsResponseSTRESCU`)) {
        `qrsresponsestrescu_object` <- RootCtTermRef$new()
        `qrsresponsestrescu_object`$fromJSON(jsonlite::toJSON(this_object$`qrsResponseSTRESCU`, auto_unbox = TRUE, digits = NA))
        self$`qrsResponseSTRESCU` <- `qrsresponsestrescu_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return QrsResponseLinks in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of QrsResponseLinks
    #'
    #' @param input_json the JSON input
    #' @return the instance of QrsResponseLinks
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`qrsResponseORRES` <- RootCtTermRef$new()$fromJSON(jsonlite::toJSON(this_object$`qrsResponseORRES`, auto_unbox = TRUE, digits = NA))
      self$`qrsResponseORRESU` <- RootCtTermRef$new()$fromJSON(jsonlite::toJSON(this_object$`qrsResponseORRESU`, auto_unbox = TRUE, digits = NA))
      self$`qrsResponseSTRESC` <- RootCtTermRef$new()$fromJSON(jsonlite::toJSON(this_object$`qrsResponseSTRESC`, auto_unbox = TRUE, digits = NA))
      self$`qrsResponseSTRESCU` <- RootCtTermRef$new()$fromJSON(jsonlite::toJSON(this_object$`qrsResponseSTRESCU`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to QrsResponseLinks and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of QrsResponseLinks
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
# QrsResponseLinks$unlock()
#
## Below is an example to define the print function
# QrsResponseLinks$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# QrsResponseLinks$lock()


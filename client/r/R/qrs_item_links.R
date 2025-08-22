#' Create a new QrsItemLinks
#'
#' @description
#' QrsItemLinks Class
#'
#' @docType class
#' @title QrsItemLinks
#' @description QrsItemLinks Class
#' @format An \code{R6Class} generator object
#' @field qrsItemTEST  \link{RootCtTermRef} [optional]
#' @field qrsItemTESTCD  \link{RootCtTermRef} [optional]
#' @field qrsItemEVAL  \link{RootCtTermRef} [optional]
#' @field qrsItemSCAT  \link{RootCtTermRef} [optional]
#' @field responsegroup  \link{QrsResponsegroup} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
QrsItemLinks <- R6::R6Class(
  "QrsItemLinks",
  public = list(
    `qrsItemTEST` = NULL,
    `qrsItemTESTCD` = NULL,
    `qrsItemEVAL` = NULL,
    `qrsItemSCAT` = NULL,
    `responsegroup` = NULL,

    #' @description
    #' Initialize a new QrsItemLinks class.
    #'
    #' @param qrsItemTEST qrsItemTEST
    #' @param qrsItemTESTCD qrsItemTESTCD
    #' @param qrsItemEVAL qrsItemEVAL
    #' @param qrsItemSCAT qrsItemSCAT
    #' @param responsegroup responsegroup
    #' @param ... Other optional arguments.
    initialize = function(`qrsItemTEST` = NULL, `qrsItemTESTCD` = NULL, `qrsItemEVAL` = NULL, `qrsItemSCAT` = NULL, `responsegroup` = NULL, ...) {
      if (!is.null(`qrsItemTEST`)) {
        stopifnot(R6::is.R6(`qrsItemTEST`))
        self$`qrsItemTEST` <- `qrsItemTEST`
      }
      if (!is.null(`qrsItemTESTCD`)) {
        stopifnot(R6::is.R6(`qrsItemTESTCD`))
        self$`qrsItemTESTCD` <- `qrsItemTESTCD`
      }
      if (!is.null(`qrsItemEVAL`)) {
        stopifnot(R6::is.R6(`qrsItemEVAL`))
        self$`qrsItemEVAL` <- `qrsItemEVAL`
      }
      if (!is.null(`qrsItemSCAT`)) {
        stopifnot(R6::is.R6(`qrsItemSCAT`))
        self$`qrsItemSCAT` <- `qrsItemSCAT`
      }
      if (!is.null(`responsegroup`)) {
        stopifnot(R6::is.R6(`responsegroup`))
        self$`responsegroup` <- `responsegroup`
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
    #' @return QrsItemLinks as a base R list.
    #' @examples
    #' # convert array of QrsItemLinks (x) to a data frame
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
    #' Convert QrsItemLinks to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      QrsItemLinksObject <- list()
      if (!is.null(self$`qrsItemTEST`)) {
        QrsItemLinksObject[["qrsItemTEST"]] <-
          self$`qrsItemTEST`$toSimpleType()
      }
      if (!is.null(self$`qrsItemTESTCD`)) {
        QrsItemLinksObject[["qrsItemTESTCD"]] <-
          self$`qrsItemTESTCD`$toSimpleType()
      }
      if (!is.null(self$`qrsItemEVAL`)) {
        QrsItemLinksObject[["qrsItemEVAL"]] <-
          self$`qrsItemEVAL`$toSimpleType()
      }
      if (!is.null(self$`qrsItemSCAT`)) {
        QrsItemLinksObject[["qrsItemSCAT"]] <-
          self$`qrsItemSCAT`$toSimpleType()
      }
      if (!is.null(self$`responsegroup`)) {
        QrsItemLinksObject[["responsegroup"]] <-
          self$`responsegroup`$toSimpleType()
      }
      return(QrsItemLinksObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of QrsItemLinks
    #'
    #' @param input_json the JSON input
    #' @return the instance of QrsItemLinks
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`qrsItemTEST`)) {
        `qrsitemtest_object` <- RootCtTermRef$new()
        `qrsitemtest_object`$fromJSON(jsonlite::toJSON(this_object$`qrsItemTEST`, auto_unbox = TRUE, digits = NA))
        self$`qrsItemTEST` <- `qrsitemtest_object`
      }
      if (!is.null(this_object$`qrsItemTESTCD`)) {
        `qrsitemtestcd_object` <- RootCtTermRef$new()
        `qrsitemtestcd_object`$fromJSON(jsonlite::toJSON(this_object$`qrsItemTESTCD`, auto_unbox = TRUE, digits = NA))
        self$`qrsItemTESTCD` <- `qrsitemtestcd_object`
      }
      if (!is.null(this_object$`qrsItemEVAL`)) {
        `qrsitemeval_object` <- RootCtTermRef$new()
        `qrsitemeval_object`$fromJSON(jsonlite::toJSON(this_object$`qrsItemEVAL`, auto_unbox = TRUE, digits = NA))
        self$`qrsItemEVAL` <- `qrsitemeval_object`
      }
      if (!is.null(this_object$`qrsItemSCAT`)) {
        `qrsitemscat_object` <- RootCtTermRef$new()
        `qrsitemscat_object`$fromJSON(jsonlite::toJSON(this_object$`qrsItemSCAT`, auto_unbox = TRUE, digits = NA))
        self$`qrsItemSCAT` <- `qrsitemscat_object`
      }
      if (!is.null(this_object$`responsegroup`)) {
        `responsegroup_object` <- QrsResponsegroup$new()
        `responsegroup_object`$fromJSON(jsonlite::toJSON(this_object$`responsegroup`, auto_unbox = TRUE, digits = NA))
        self$`responsegroup` <- `responsegroup_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return QrsItemLinks in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of QrsItemLinks
    #'
    #' @param input_json the JSON input
    #' @return the instance of QrsItemLinks
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`qrsItemTEST` <- RootCtTermRef$new()$fromJSON(jsonlite::toJSON(this_object$`qrsItemTEST`, auto_unbox = TRUE, digits = NA))
      self$`qrsItemTESTCD` <- RootCtTermRef$new()$fromJSON(jsonlite::toJSON(this_object$`qrsItemTESTCD`, auto_unbox = TRUE, digits = NA))
      self$`qrsItemEVAL` <- RootCtTermRef$new()$fromJSON(jsonlite::toJSON(this_object$`qrsItemEVAL`, auto_unbox = TRUE, digits = NA))
      self$`qrsItemSCAT` <- RootCtTermRef$new()$fromJSON(jsonlite::toJSON(this_object$`qrsItemSCAT`, auto_unbox = TRUE, digits = NA))
      self$`responsegroup` <- QrsResponsegroup$new()$fromJSON(jsonlite::toJSON(this_object$`responsegroup`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to QrsItemLinks and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of QrsItemLinks
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
# QrsItemLinks$unlock()
#
## Below is an example to define the print function
# QrsItemLinks$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# QrsItemLinks$lock()


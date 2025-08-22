#' Create a new Lastupdated
#'
#' @description
#' Lastupdated Class
#'
#' @docType class
#' @title Lastupdated
#' @description Lastupdated Class
#' @format An \code{R6Class} generator object
#' @field _links  \link{LastupdatedLinks} [optional]
#' @field overall  character [optional]
#' @field data-analysis  character [optional]
#' @field data-collection  character [optional]
#' @field data-tabulation  character [optional]
#' @field measure  character [optional]
#' @field terminology  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Lastupdated <- R6::R6Class(
  "Lastupdated",
  public = list(
    `_links` = NULL,
    `overall` = NULL,
    `data-analysis` = NULL,
    `data-collection` = NULL,
    `data-tabulation` = NULL,
    `measure` = NULL,
    `terminology` = NULL,

    #' @description
    #' Initialize a new Lastupdated class.
    #'
    #' @param _links _links
    #' @param overall overall
    #' @param data-analysis data-analysis
    #' @param data-collection data-collection
    #' @param data-tabulation data-tabulation
    #' @param measure measure
    #' @param terminology terminology
    #' @param ... Other optional arguments.
    initialize = function(`_links` = NULL, `overall` = NULL, `data-analysis` = NULL, `data-collection` = NULL, `data-tabulation` = NULL, `measure` = NULL, `terminology` = NULL, ...) {
      if (!is.null(`_links`)) {
        stopifnot(R6::is.R6(`_links`))
        self$`_links` <- `_links`
      }
      if (!is.null(`overall`)) {
        if (!(is.character(`overall`) && length(`overall`) == 1)) {
          stop(paste("Error! Invalid data for `overall`. Must be a string:", `overall`))
        }
        self$`overall` <- `overall`
      }
      if (!is.null(`data-analysis`)) {
        if (!(is.character(`data-analysis`) && length(`data-analysis`) == 1)) {
          stop(paste("Error! Invalid data for `data-analysis`. Must be a string:", `data-analysis`))
        }
        self$`data-analysis` <- `data-analysis`
      }
      if (!is.null(`data-collection`)) {
        if (!(is.character(`data-collection`) && length(`data-collection`) == 1)) {
          stop(paste("Error! Invalid data for `data-collection`. Must be a string:", `data-collection`))
        }
        self$`data-collection` <- `data-collection`
      }
      if (!is.null(`data-tabulation`)) {
        if (!(is.character(`data-tabulation`) && length(`data-tabulation`) == 1)) {
          stop(paste("Error! Invalid data for `data-tabulation`. Must be a string:", `data-tabulation`))
        }
        self$`data-tabulation` <- `data-tabulation`
      }
      if (!is.null(`measure`)) {
        if (!(is.character(`measure`) && length(`measure`) == 1)) {
          stop(paste("Error! Invalid data for `measure`. Must be a string:", `measure`))
        }
        self$`measure` <- `measure`
      }
      if (!is.null(`terminology`)) {
        if (!(is.character(`terminology`) && length(`terminology`) == 1)) {
          stop(paste("Error! Invalid data for `terminology`. Must be a string:", `terminology`))
        }
        self$`terminology` <- `terminology`
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
    #' @return Lastupdated as a base R list.
    #' @examples
    #' # convert array of Lastupdated (x) to a data frame
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
    #' Convert Lastupdated to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      LastupdatedObject <- list()
      if (!is.null(self$`_links`)) {
        LastupdatedObject[["_links"]] <-
          self$`_links`$toSimpleType()
      }
      if (!is.null(self$`overall`)) {
        LastupdatedObject[["overall"]] <-
          self$`overall`
      }
      if (!is.null(self$`data-analysis`)) {
        LastupdatedObject[["data-analysis"]] <-
          self$`data-analysis`
      }
      if (!is.null(self$`data-collection`)) {
        LastupdatedObject[["data-collection"]] <-
          self$`data-collection`
      }
      if (!is.null(self$`data-tabulation`)) {
        LastupdatedObject[["data-tabulation"]] <-
          self$`data-tabulation`
      }
      if (!is.null(self$`measure`)) {
        LastupdatedObject[["measure"]] <-
          self$`measure`
      }
      if (!is.null(self$`terminology`)) {
        LastupdatedObject[["terminology"]] <-
          self$`terminology`
      }
      return(LastupdatedObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of Lastupdated
    #'
    #' @param input_json the JSON input
    #' @return the instance of Lastupdated
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`_links`)) {
        `_links_object` <- LastupdatedLinks$new()
        `_links_object`$fromJSON(jsonlite::toJSON(this_object$`_links`, auto_unbox = TRUE, digits = NA))
        self$`_links` <- `_links_object`
      }
      if (!is.null(this_object$`overall`)) {
        self$`overall` <- this_object$`overall`
      }
      if (!is.null(this_object$`data-analysis`)) {
        self$`data-analysis` <- this_object$`data-analysis`
      }
      if (!is.null(this_object$`data-collection`)) {
        self$`data-collection` <- this_object$`data-collection`
      }
      if (!is.null(this_object$`data-tabulation`)) {
        self$`data-tabulation` <- this_object$`data-tabulation`
      }
      if (!is.null(this_object$`measure`)) {
        self$`measure` <- this_object$`measure`
      }
      if (!is.null(this_object$`terminology`)) {
        self$`terminology` <- this_object$`terminology`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Lastupdated in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Lastupdated
    #'
    #' @param input_json the JSON input
    #' @return the instance of Lastupdated
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`_links` <- LastupdatedLinks$new()$fromJSON(jsonlite::toJSON(this_object$`_links`, auto_unbox = TRUE, digits = NA))
      self$`overall` <- this_object$`overall`
      self$`data-analysis` <- this_object$`data-analysis`
      self$`data-collection` <- this_object$`data-collection`
      self$`data-tabulation` <- this_object$`data-tabulation`
      self$`measure` <- this_object$`measure`
      self$`terminology` <- this_object$`terminology`
      self
    },

    #' @description
    #' Validate JSON input with respect to Lastupdated and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Lastupdated
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
# Lastupdated$unlock()
#
## Below is an example to define the print function
# Lastupdated$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Lastupdated$lock()


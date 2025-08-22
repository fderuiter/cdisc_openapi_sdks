#' Create a new SdtmClassDatasets
#'
#' @description
#' SdtmClassDatasets Class
#'
#' @docType class
#' @title SdtmClassDatasets
#' @description SdtmClassDatasets Class
#' @format An \code{R6Class} generator object
#' @field ordinal  character [optional]
#' @field name  character [optional]
#' @field label  character [optional]
#' @field description  character [optional]
#' @field _links  \link{SdtmClassDatasetsLinks} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SdtmClassDatasets <- R6::R6Class(
  "SdtmClassDatasets",
  public = list(
    `ordinal` = NULL,
    `name` = NULL,
    `label` = NULL,
    `description` = NULL,
    `_links` = NULL,

    #' @description
    #' Initialize a new SdtmClassDatasets class.
    #'
    #' @param ordinal ordinal
    #' @param name name
    #' @param label label
    #' @param description description
    #' @param _links _links
    #' @param ... Other optional arguments.
    initialize = function(`ordinal` = NULL, `name` = NULL, `label` = NULL, `description` = NULL, `_links` = NULL, ...) {
      if (!is.null(`ordinal`)) {
        if (!(is.character(`ordinal`) && length(`ordinal`) == 1)) {
          stop(paste("Error! Invalid data for `ordinal`. Must be a string:", `ordinal`))
        }
        self$`ordinal` <- `ordinal`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`label`)) {
        if (!(is.character(`label`) && length(`label`) == 1)) {
          stop(paste("Error! Invalid data for `label`. Must be a string:", `label`))
        }
        self$`label` <- `label`
      }
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
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
    #' @return SdtmClassDatasets as a base R list.
    #' @examples
    #' # convert array of SdtmClassDatasets (x) to a data frame
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
    #' Convert SdtmClassDatasets to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      SdtmClassDatasetsObject <- list()
      if (!is.null(self$`ordinal`)) {
        SdtmClassDatasetsObject[["ordinal"]] <-
          self$`ordinal`
      }
      if (!is.null(self$`name`)) {
        SdtmClassDatasetsObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`label`)) {
        SdtmClassDatasetsObject[["label"]] <-
          self$`label`
      }
      if (!is.null(self$`description`)) {
        SdtmClassDatasetsObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`_links`)) {
        SdtmClassDatasetsObject[["_links"]] <-
          self$`_links`$toSimpleType()
      }
      return(SdtmClassDatasetsObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of SdtmClassDatasets
    #'
    #' @param input_json the JSON input
    #' @return the instance of SdtmClassDatasets
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`ordinal`)) {
        self$`ordinal` <- this_object$`ordinal`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`label`)) {
        self$`label` <- this_object$`label`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`_links`)) {
        `_links_object` <- SdtmClassDatasetsLinks$new()
        `_links_object`$fromJSON(jsonlite::toJSON(this_object$`_links`, auto_unbox = TRUE, digits = NA))
        self$`_links` <- `_links_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return SdtmClassDatasets in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of SdtmClassDatasets
    #'
    #' @param input_json the JSON input
    #' @return the instance of SdtmClassDatasets
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`ordinal` <- this_object$`ordinal`
      self$`name` <- this_object$`name`
      self$`label` <- this_object$`label`
      self$`description` <- this_object$`description`
      self$`_links` <- SdtmClassDatasetsLinks$new()$fromJSON(jsonlite::toJSON(this_object$`_links`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to SdtmClassDatasets and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of SdtmClassDatasets
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
# SdtmClassDatasets$unlock()
#
## Below is an example to define the print function
# SdtmClassDatasets$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SdtmClassDatasets$lock()


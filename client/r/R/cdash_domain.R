#' Create a new CdashDomain
#'
#' @description
#' CdashDomain Class
#'
#' @docType class
#' @title CdashDomain
#' @description CdashDomain Class
#' @format An \code{R6Class} generator object
#' @field ordinal  character [optional]
#' @field name  character [optional]
#' @field label  character [optional]
#' @field _links  \link{CdashDomainLinks} [optional]
#' @field fields  list(\link{CdashDomainField}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CdashDomain <- R6::R6Class(
  "CdashDomain",
  public = list(
    `ordinal` = NULL,
    `name` = NULL,
    `label` = NULL,
    `_links` = NULL,
    `fields` = NULL,

    #' @description
    #' Initialize a new CdashDomain class.
    #'
    #' @param ordinal ordinal
    #' @param name name
    #' @param label label
    #' @param _links _links
    #' @param fields fields
    #' @param ... Other optional arguments.
    initialize = function(`ordinal` = NULL, `name` = NULL, `label` = NULL, `_links` = NULL, `fields` = NULL, ...) {
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
      if (!is.null(`_links`)) {
        stopifnot(R6::is.R6(`_links`))
        self$`_links` <- `_links`
      }
      if (!is.null(`fields`)) {
        stopifnot(is.vector(`fields`), length(`fields`) != 0)
        sapply(`fields`, function(x) stopifnot(R6::is.R6(x)))
        self$`fields` <- `fields`
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
    #' @return CdashDomain as a base R list.
    #' @examples
    #' # convert array of CdashDomain (x) to a data frame
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
    #' Convert CdashDomain to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CdashDomainObject <- list()
      if (!is.null(self$`ordinal`)) {
        CdashDomainObject[["ordinal"]] <-
          self$`ordinal`
      }
      if (!is.null(self$`name`)) {
        CdashDomainObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`label`)) {
        CdashDomainObject[["label"]] <-
          self$`label`
      }
      if (!is.null(self$`_links`)) {
        CdashDomainObject[["_links"]] <-
          self$`_links`$toSimpleType()
      }
      if (!is.null(self$`fields`)) {
        CdashDomainObject[["fields"]] <-
          lapply(self$`fields`, function(x) x$toSimpleType())
      }
      return(CdashDomainObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of CdashDomain
    #'
    #' @param input_json the JSON input
    #' @return the instance of CdashDomain
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
      if (!is.null(this_object$`_links`)) {
        `_links_object` <- CdashDomainLinks$new()
        `_links_object`$fromJSON(jsonlite::toJSON(this_object$`_links`, auto_unbox = TRUE, digits = NA))
        self$`_links` <- `_links_object`
      }
      if (!is.null(this_object$`fields`)) {
        self$`fields` <- ApiClient$new()$deserializeObj(this_object$`fields`, "array[CdashDomainField]", loadNamespace("openapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CdashDomain in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CdashDomain
    #'
    #' @param input_json the JSON input
    #' @return the instance of CdashDomain
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`ordinal` <- this_object$`ordinal`
      self$`name` <- this_object$`name`
      self$`label` <- this_object$`label`
      self$`_links` <- CdashDomainLinks$new()$fromJSON(jsonlite::toJSON(this_object$`_links`, auto_unbox = TRUE, digits = NA))
      self$`fields` <- ApiClient$new()$deserializeObj(this_object$`fields`, "array[CdashDomainField]", loadNamespace("openapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to CdashDomain and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CdashDomain
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
# CdashDomain$unlock()
#
## Below is an example to define the print function
# CdashDomain$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CdashDomain$lock()


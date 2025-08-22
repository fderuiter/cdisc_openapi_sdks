#' Create a new CdashigClass
#'
#' @description
#' CdashigClass Class
#'
#' @docType class
#' @title CdashigClass
#' @description CdashigClass Class
#' @format An \code{R6Class} generator object
#' @field ordinal  character [optional]
#' @field name  character [optional]
#' @field label  character [optional]
#' @field description  character [optional]
#' @field _links  \link{CdashigClassLinks} [optional]
#' @field domains  list(\link{CdashigDomain}) [optional]
#' @field scenarios  list(\link{CdashigScenario}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CdashigClass <- R6::R6Class(
  "CdashigClass",
  public = list(
    `ordinal` = NULL,
    `name` = NULL,
    `label` = NULL,
    `description` = NULL,
    `_links` = NULL,
    `domains` = NULL,
    `scenarios` = NULL,

    #' @description
    #' Initialize a new CdashigClass class.
    #'
    #' @param ordinal ordinal
    #' @param name name
    #' @param label label
    #' @param description description
    #' @param _links _links
    #' @param domains domains
    #' @param scenarios scenarios
    #' @param ... Other optional arguments.
    initialize = function(`ordinal` = NULL, `name` = NULL, `label` = NULL, `description` = NULL, `_links` = NULL, `domains` = NULL, `scenarios` = NULL, ...) {
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
      if (!is.null(`domains`)) {
        stopifnot(is.vector(`domains`), length(`domains`) != 0)
        sapply(`domains`, function(x) stopifnot(R6::is.R6(x)))
        self$`domains` <- `domains`
      }
      if (!is.null(`scenarios`)) {
        stopifnot(is.vector(`scenarios`), length(`scenarios`) != 0)
        sapply(`scenarios`, function(x) stopifnot(R6::is.R6(x)))
        self$`scenarios` <- `scenarios`
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
    #' @return CdashigClass as a base R list.
    #' @examples
    #' # convert array of CdashigClass (x) to a data frame
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
    #' Convert CdashigClass to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CdashigClassObject <- list()
      if (!is.null(self$`ordinal`)) {
        CdashigClassObject[["ordinal"]] <-
          self$`ordinal`
      }
      if (!is.null(self$`name`)) {
        CdashigClassObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`label`)) {
        CdashigClassObject[["label"]] <-
          self$`label`
      }
      if (!is.null(self$`description`)) {
        CdashigClassObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`_links`)) {
        CdashigClassObject[["_links"]] <-
          self$`_links`$toSimpleType()
      }
      if (!is.null(self$`domains`)) {
        CdashigClassObject[["domains"]] <-
          lapply(self$`domains`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`scenarios`)) {
        CdashigClassObject[["scenarios"]] <-
          lapply(self$`scenarios`, function(x) x$toSimpleType())
      }
      return(CdashigClassObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of CdashigClass
    #'
    #' @param input_json the JSON input
    #' @return the instance of CdashigClass
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
        `_links_object` <- CdashigClassLinks$new()
        `_links_object`$fromJSON(jsonlite::toJSON(this_object$`_links`, auto_unbox = TRUE, digits = NA))
        self$`_links` <- `_links_object`
      }
      if (!is.null(this_object$`domains`)) {
        self$`domains` <- ApiClient$new()$deserializeObj(this_object$`domains`, "array[CdashigDomain]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`scenarios`)) {
        self$`scenarios` <- ApiClient$new()$deserializeObj(this_object$`scenarios`, "array[CdashigScenario]", loadNamespace("openapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CdashigClass in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CdashigClass
    #'
    #' @param input_json the JSON input
    #' @return the instance of CdashigClass
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`ordinal` <- this_object$`ordinal`
      self$`name` <- this_object$`name`
      self$`label` <- this_object$`label`
      self$`description` <- this_object$`description`
      self$`_links` <- CdashigClassLinks$new()$fromJSON(jsonlite::toJSON(this_object$`_links`, auto_unbox = TRUE, digits = NA))
      self$`domains` <- ApiClient$new()$deserializeObj(this_object$`domains`, "array[CdashigDomain]", loadNamespace("openapi"))
      self$`scenarios` <- ApiClient$new()$deserializeObj(this_object$`scenarios`, "array[CdashigScenario]", loadNamespace("openapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to CdashigClass and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CdashigClass
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
# CdashigClass$unlock()
#
## Below is an example to define the print function
# CdashigClass$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CdashigClass$lock()


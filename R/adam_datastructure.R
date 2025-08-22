#' Create a new AdamDatastructure
#'
#' @description
#' AdamDatastructure Class
#'
#' @docType class
#' @title AdamDatastructure
#' @description AdamDatastructure Class
#' @format An \code{R6Class} generator object
#' @field ordinal  character [optional]
#' @field name  character [optional]
#' @field label  character [optional]
#' @field description  character [optional]
#' @field class  character [optional]
#' @field _links  \link{AdamDatastructureLinks} [optional]
#' @field analysisVariableSets  list(\link{AdamVarset}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AdamDatastructure <- R6::R6Class(
  "AdamDatastructure",
  public = list(
    `ordinal` = NULL,
    `name` = NULL,
    `label` = NULL,
    `description` = NULL,
    `class` = NULL,
    `_links` = NULL,
    `analysisVariableSets` = NULL,

    #' @description
    #' Initialize a new AdamDatastructure class.
    #'
    #' @param ordinal ordinal
    #' @param name name
    #' @param label label
    #' @param description description
    #' @param class class
    #' @param _links _links
    #' @param analysisVariableSets analysisVariableSets
    #' @param ... Other optional arguments.
    initialize = function(`ordinal` = NULL, `name` = NULL, `label` = NULL, `description` = NULL, `class` = NULL, `_links` = NULL, `analysisVariableSets` = NULL, ...) {
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
      if (!is.null(`class`)) {
        if (!(is.character(`class`) && length(`class`) == 1)) {
          stop(paste("Error! Invalid data for `class`. Must be a string:", `class`))
        }
        self$`class` <- `class`
      }
      if (!is.null(`_links`)) {
        stopifnot(R6::is.R6(`_links`))
        self$`_links` <- `_links`
      }
      if (!is.null(`analysisVariableSets`)) {
        stopifnot(is.vector(`analysisVariableSets`), length(`analysisVariableSets`) != 0)
        sapply(`analysisVariableSets`, function(x) stopifnot(R6::is.R6(x)))
        self$`analysisVariableSets` <- `analysisVariableSets`
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
    #' @return AdamDatastructure as a base R list.
    #' @examples
    #' # convert array of AdamDatastructure (x) to a data frame
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
    #' Convert AdamDatastructure to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AdamDatastructureObject <- list()
      if (!is.null(self$`ordinal`)) {
        AdamDatastructureObject[["ordinal"]] <-
          self$`ordinal`
      }
      if (!is.null(self$`name`)) {
        AdamDatastructureObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`label`)) {
        AdamDatastructureObject[["label"]] <-
          self$`label`
      }
      if (!is.null(self$`description`)) {
        AdamDatastructureObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`class`)) {
        AdamDatastructureObject[["class"]] <-
          self$`class`
      }
      if (!is.null(self$`_links`)) {
        AdamDatastructureObject[["_links"]] <-
          self$`_links`$toSimpleType()
      }
      if (!is.null(self$`analysisVariableSets`)) {
        AdamDatastructureObject[["analysisVariableSets"]] <-
          lapply(self$`analysisVariableSets`, function(x) x$toSimpleType())
      }
      return(AdamDatastructureObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of AdamDatastructure
    #'
    #' @param input_json the JSON input
    #' @return the instance of AdamDatastructure
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
      if (!is.null(this_object$`class`)) {
        self$`class` <- this_object$`class`
      }
      if (!is.null(this_object$`_links`)) {
        `_links_object` <- AdamDatastructureLinks$new()
        `_links_object`$fromJSON(jsonlite::toJSON(this_object$`_links`, auto_unbox = TRUE, digits = NA))
        self$`_links` <- `_links_object`
      }
      if (!is.null(this_object$`analysisVariableSets`)) {
        self$`analysisVariableSets` <- ApiClient$new()$deserializeObj(this_object$`analysisVariableSets`, "array[AdamVarset]", loadNamespace("openapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AdamDatastructure in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AdamDatastructure
    #'
    #' @param input_json the JSON input
    #' @return the instance of AdamDatastructure
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`ordinal` <- this_object$`ordinal`
      self$`name` <- this_object$`name`
      self$`label` <- this_object$`label`
      self$`description` <- this_object$`description`
      self$`class` <- this_object$`class`
      self$`_links` <- AdamDatastructureLinks$new()$fromJSON(jsonlite::toJSON(this_object$`_links`, auto_unbox = TRUE, digits = NA))
      self$`analysisVariableSets` <- ApiClient$new()$deserializeObj(this_object$`analysisVariableSets`, "array[AdamVarset]", loadNamespace("openapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to AdamDatastructure and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AdamDatastructure
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
# AdamDatastructure$unlock()
#
## Below is an example to define the print function
# AdamDatastructure$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AdamDatastructure$lock()


#' Create a new CtCodelist
#'
#' @description
#' CtCodelist Class
#'
#' @docType class
#' @title CtCodelist
#' @description CtCodelist Class
#' @format An \code{R6Class} generator object
#' @field conceptId  character [optional]
#' @field extensible  character [optional]
#' @field name  character [optional]
#' @field submissionValue  character [optional]
#' @field definition  character [optional]
#' @field preferredTerm  character [optional]
#' @field synonyms  list(character) [optional]
#' @field _links  \link{CtCodelistLinks} [optional]
#' @field terms  list(\link{CtPackageTerm}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CtCodelist <- R6::R6Class(
  "CtCodelist",
  public = list(
    `conceptId` = NULL,
    `extensible` = NULL,
    `name` = NULL,
    `submissionValue` = NULL,
    `definition` = NULL,
    `preferredTerm` = NULL,
    `synonyms` = NULL,
    `_links` = NULL,
    `terms` = NULL,

    #' @description
    #' Initialize a new CtCodelist class.
    #'
    #' @param conceptId conceptId
    #' @param extensible extensible
    #' @param name name
    #' @param submissionValue submissionValue
    #' @param definition definition
    #' @param preferredTerm preferredTerm
    #' @param synonyms synonyms
    #' @param _links _links
    #' @param terms terms
    #' @param ... Other optional arguments.
    initialize = function(`conceptId` = NULL, `extensible` = NULL, `name` = NULL, `submissionValue` = NULL, `definition` = NULL, `preferredTerm` = NULL, `synonyms` = NULL, `_links` = NULL, `terms` = NULL, ...) {
      if (!is.null(`conceptId`)) {
        if (!(is.character(`conceptId`) && length(`conceptId`) == 1)) {
          stop(paste("Error! Invalid data for `conceptId`. Must be a string:", `conceptId`))
        }
        self$`conceptId` <- `conceptId`
      }
      if (!is.null(`extensible`)) {
        if (!(is.character(`extensible`) && length(`extensible`) == 1)) {
          stop(paste("Error! Invalid data for `extensible`. Must be a string:", `extensible`))
        }
        self$`extensible` <- `extensible`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`submissionValue`)) {
        if (!(is.character(`submissionValue`) && length(`submissionValue`) == 1)) {
          stop(paste("Error! Invalid data for `submissionValue`. Must be a string:", `submissionValue`))
        }
        self$`submissionValue` <- `submissionValue`
      }
      if (!is.null(`definition`)) {
        if (!(is.character(`definition`) && length(`definition`) == 1)) {
          stop(paste("Error! Invalid data for `definition`. Must be a string:", `definition`))
        }
        self$`definition` <- `definition`
      }
      if (!is.null(`preferredTerm`)) {
        if (!(is.character(`preferredTerm`) && length(`preferredTerm`) == 1)) {
          stop(paste("Error! Invalid data for `preferredTerm`. Must be a string:", `preferredTerm`))
        }
        self$`preferredTerm` <- `preferredTerm`
      }
      if (!is.null(`synonyms`)) {
        stopifnot(is.vector(`synonyms`), length(`synonyms`) != 0)
        sapply(`synonyms`, function(x) stopifnot(is.character(x)))
        self$`synonyms` <- `synonyms`
      }
      if (!is.null(`_links`)) {
        stopifnot(R6::is.R6(`_links`))
        self$`_links` <- `_links`
      }
      if (!is.null(`terms`)) {
        stopifnot(is.vector(`terms`), length(`terms`) != 0)
        sapply(`terms`, function(x) stopifnot(R6::is.R6(x)))
        self$`terms` <- `terms`
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
    #' @return CtCodelist as a base R list.
    #' @examples
    #' # convert array of CtCodelist (x) to a data frame
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
    #' Convert CtCodelist to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CtCodelistObject <- list()
      if (!is.null(self$`conceptId`)) {
        CtCodelistObject[["conceptId"]] <-
          self$`conceptId`
      }
      if (!is.null(self$`extensible`)) {
        CtCodelistObject[["extensible"]] <-
          self$`extensible`
      }
      if (!is.null(self$`name`)) {
        CtCodelistObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`submissionValue`)) {
        CtCodelistObject[["submissionValue"]] <-
          self$`submissionValue`
      }
      if (!is.null(self$`definition`)) {
        CtCodelistObject[["definition"]] <-
          self$`definition`
      }
      if (!is.null(self$`preferredTerm`)) {
        CtCodelistObject[["preferredTerm"]] <-
          self$`preferredTerm`
      }
      if (!is.null(self$`synonyms`)) {
        CtCodelistObject[["synonyms"]] <-
          self$`synonyms`
      }
      if (!is.null(self$`_links`)) {
        CtCodelistObject[["_links"]] <-
          self$`_links`$toSimpleType()
      }
      if (!is.null(self$`terms`)) {
        CtCodelistObject[["terms"]] <-
          lapply(self$`terms`, function(x) x$toSimpleType())
      }
      return(CtCodelistObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of CtCodelist
    #'
    #' @param input_json the JSON input
    #' @return the instance of CtCodelist
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`conceptId`)) {
        self$`conceptId` <- this_object$`conceptId`
      }
      if (!is.null(this_object$`extensible`)) {
        self$`extensible` <- this_object$`extensible`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`submissionValue`)) {
        self$`submissionValue` <- this_object$`submissionValue`
      }
      if (!is.null(this_object$`definition`)) {
        self$`definition` <- this_object$`definition`
      }
      if (!is.null(this_object$`preferredTerm`)) {
        self$`preferredTerm` <- this_object$`preferredTerm`
      }
      if (!is.null(this_object$`synonyms`)) {
        self$`synonyms` <- ApiClient$new()$deserializeObj(this_object$`synonyms`, "array[character]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`_links`)) {
        `_links_object` <- CtCodelistLinks$new()
        `_links_object`$fromJSON(jsonlite::toJSON(this_object$`_links`, auto_unbox = TRUE, digits = NA))
        self$`_links` <- `_links_object`
      }
      if (!is.null(this_object$`terms`)) {
        self$`terms` <- ApiClient$new()$deserializeObj(this_object$`terms`, "array[CtPackageTerm]", loadNamespace("openapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CtCodelist in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CtCodelist
    #'
    #' @param input_json the JSON input
    #' @return the instance of CtCodelist
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`conceptId` <- this_object$`conceptId`
      self$`extensible` <- this_object$`extensible`
      self$`name` <- this_object$`name`
      self$`submissionValue` <- this_object$`submissionValue`
      self$`definition` <- this_object$`definition`
      self$`preferredTerm` <- this_object$`preferredTerm`
      self$`synonyms` <- ApiClient$new()$deserializeObj(this_object$`synonyms`, "array[character]", loadNamespace("openapi"))
      self$`_links` <- CtCodelistLinks$new()$fromJSON(jsonlite::toJSON(this_object$`_links`, auto_unbox = TRUE, digits = NA))
      self$`terms` <- ApiClient$new()$deserializeObj(this_object$`terms`, "array[CtPackageTerm]", loadNamespace("openapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to CtCodelist and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CtCodelist
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
# CtCodelist$unlock()
#
## Below is an example to define the print function
# CtCodelist$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CtCodelist$lock()


#' Create a new DefaultSearchResponseHitsInner
#'
#' @description
#' DefaultSearchResponseHitsInner Class
#'
#' @docType class
#' @title DefaultSearchResponseHitsInner
#' @description DefaultSearchResponseHitsInner Class
#' @format An \code{R6Class} generator object
#' @field href  character
#' @field type  character
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DefaultSearchResponseHitsInner <- R6::R6Class(
  "DefaultSearchResponseHitsInner",
  inherit = character,
  public = list(
    `href` = NULL,
    `type` = NULL,
    `_field_list` = c("href", "type"),
    `additional_properties` = list(),

    #' @description
    #' Initialize a new DefaultSearchResponseHitsInner class.
    #'
    #' @param href href
    #' @param type type
    #' @param additional_properties additional properties (optional)
    #' @param ... Other optional arguments.
    initialize = function(`href`, `type`, additional_properties = NULL, ...) {
      if (!missing(`href`)) {
        if (!(is.character(`href`) && length(`href`) == 1)) {
          stop(paste("Error! Invalid data for `href`. Must be a string:", `href`))
        }
        self$`href` <- `href`
      }
      if (!missing(`type`)) {
        if (!(is.character(`type`) && length(`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", `type`))
        }
        self$`type` <- `type`
      }
      if (!is.null(additional_properties)) {
        for (key in names(additional_properties)) {
          self$additional_properties[[key]] <- additional_properties[[key]]
        }
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
    #' @return DefaultSearchResponseHitsInner as a base R list.
    #' @examples
    #' # convert array of DefaultSearchResponseHitsInner (x) to a data frame
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
    #' Convert DefaultSearchResponseHitsInner to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      DefaultSearchResponseHitsInnerObject <- list()
      if (!is.null(self$`href`)) {
        DefaultSearchResponseHitsInnerObject[["href"]] <-
          self$`href`
      }
      if (!is.null(self$`type`)) {
        DefaultSearchResponseHitsInnerObject[["type"]] <-
          self$`type`
      }
      for (key in names(self$additional_properties)) {
        DefaultSearchResponseHitsInnerObject[[key]] <- self$additional_properties[[key]]
      }

      return(DefaultSearchResponseHitsInnerObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of DefaultSearchResponseHitsInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of DefaultSearchResponseHitsInner
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`href`)) {
        self$`href` <- this_object$`href`
      }
      if (!is.null(this_object$`type`)) {
        self$`type` <- this_object$`type`
      }
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) { # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return DefaultSearchResponseHitsInner in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      for (key in names(self$additional_properties)) {
        simple[[key]] <- self$additional_properties[[key]]
      }
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of DefaultSearchResponseHitsInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of DefaultSearchResponseHitsInner
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`href` <- this_object$`href`
      self$`type` <- this_object$`type`
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) { # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },

    #' @description
    #' Validate JSON input with respect to DefaultSearchResponseHitsInner and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `href`
      if (!is.null(input_json$`href`)) {
        if (!(is.character(input_json$`href`) && length(input_json$`href`) == 1)) {
          stop(paste("Error! Invalid data for `href`. Must be a string:", input_json$`href`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DefaultSearchResponseHitsInner: the required field `href` is missing."))
      }
      # check the required field `type`
      if (!is.null(input_json$`type`)) {
        if (!(is.character(input_json$`type`) && length(input_json$`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", input_json$`type`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DefaultSearchResponseHitsInner: the required field `type` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of DefaultSearchResponseHitsInner
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `href` is null
      if (is.null(self$`href`)) {
        return(FALSE)
      }

      # check if the required `type` is null
      if (is.null(self$`type`)) {
        return(FALSE)
      }

      TRUE
    },

    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    getInvalidFields = function() {
      invalid_fields <- list()
      # check if the required `href` is null
      if (is.null(self$`href`)) {
        invalid_fields["href"] <- "Non-nullable required field `href` cannot be null."
      }

      # check if the required `type` is null
      if (is.null(self$`type`)) {
        invalid_fields["type"] <- "Non-nullable required field `type` cannot be null."
      }

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
# DefaultSearchResponseHitsInner$unlock()
#
## Below is an example to define the print function
# DefaultSearchResponseHitsInner$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# DefaultSearchResponseHitsInner$lock()


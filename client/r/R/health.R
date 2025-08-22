#' Create a new Health
#'
#' @description
#' Health Class
#'
#' @docType class
#' @title Health
#' @description Health Class
#' @format An \code{R6Class} generator object
#' @field healthy  character [optional]
#' @field ldapAuthenticationHealthy  character [optional]
#' @field ldapAuthorizationHealthy  character [optional]
#' @field databaseHealthy  character [optional]
#' @field esHealthy  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Health <- R6::R6Class(
  "Health",
  public = list(
    `healthy` = NULL,
    `ldapAuthenticationHealthy` = NULL,
    `ldapAuthorizationHealthy` = NULL,
    `databaseHealthy` = NULL,
    `esHealthy` = NULL,

    #' @description
    #' Initialize a new Health class.
    #'
    #' @param healthy healthy
    #' @param ldapAuthenticationHealthy ldapAuthenticationHealthy
    #' @param ldapAuthorizationHealthy ldapAuthorizationHealthy
    #' @param databaseHealthy databaseHealthy
    #' @param esHealthy esHealthy
    #' @param ... Other optional arguments.
    initialize = function(`healthy` = NULL, `ldapAuthenticationHealthy` = NULL, `ldapAuthorizationHealthy` = NULL, `databaseHealthy` = NULL, `esHealthy` = NULL, ...) {
      if (!is.null(`healthy`)) {
        if (!(is.logical(`healthy`) && length(`healthy`) == 1)) {
          stop(paste("Error! Invalid data for `healthy`. Must be a boolean:", `healthy`))
        }
        self$`healthy` <- `healthy`
      }
      if (!is.null(`ldapAuthenticationHealthy`)) {
        if (!(is.logical(`ldapAuthenticationHealthy`) && length(`ldapAuthenticationHealthy`) == 1)) {
          stop(paste("Error! Invalid data for `ldapAuthenticationHealthy`. Must be a boolean:", `ldapAuthenticationHealthy`))
        }
        self$`ldapAuthenticationHealthy` <- `ldapAuthenticationHealthy`
      }
      if (!is.null(`ldapAuthorizationHealthy`)) {
        if (!(is.logical(`ldapAuthorizationHealthy`) && length(`ldapAuthorizationHealthy`) == 1)) {
          stop(paste("Error! Invalid data for `ldapAuthorizationHealthy`. Must be a boolean:", `ldapAuthorizationHealthy`))
        }
        self$`ldapAuthorizationHealthy` <- `ldapAuthorizationHealthy`
      }
      if (!is.null(`databaseHealthy`)) {
        if (!(is.logical(`databaseHealthy`) && length(`databaseHealthy`) == 1)) {
          stop(paste("Error! Invalid data for `databaseHealthy`. Must be a boolean:", `databaseHealthy`))
        }
        self$`databaseHealthy` <- `databaseHealthy`
      }
      if (!is.null(`esHealthy`)) {
        if (!(is.logical(`esHealthy`) && length(`esHealthy`) == 1)) {
          stop(paste("Error! Invalid data for `esHealthy`. Must be a boolean:", `esHealthy`))
        }
        self$`esHealthy` <- `esHealthy`
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
    #' @return Health as a base R list.
    #' @examples
    #' # convert array of Health (x) to a data frame
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
    #' Convert Health to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      HealthObject <- list()
      if (!is.null(self$`healthy`)) {
        HealthObject[["healthy"]] <-
          self$`healthy`
      }
      if (!is.null(self$`ldapAuthenticationHealthy`)) {
        HealthObject[["ldapAuthenticationHealthy"]] <-
          self$`ldapAuthenticationHealthy`
      }
      if (!is.null(self$`ldapAuthorizationHealthy`)) {
        HealthObject[["ldapAuthorizationHealthy"]] <-
          self$`ldapAuthorizationHealthy`
      }
      if (!is.null(self$`databaseHealthy`)) {
        HealthObject[["databaseHealthy"]] <-
          self$`databaseHealthy`
      }
      if (!is.null(self$`esHealthy`)) {
        HealthObject[["esHealthy"]] <-
          self$`esHealthy`
      }
      return(HealthObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of Health
    #'
    #' @param input_json the JSON input
    #' @return the instance of Health
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`healthy`)) {
        self$`healthy` <- this_object$`healthy`
      }
      if (!is.null(this_object$`ldapAuthenticationHealthy`)) {
        self$`ldapAuthenticationHealthy` <- this_object$`ldapAuthenticationHealthy`
      }
      if (!is.null(this_object$`ldapAuthorizationHealthy`)) {
        self$`ldapAuthorizationHealthy` <- this_object$`ldapAuthorizationHealthy`
      }
      if (!is.null(this_object$`databaseHealthy`)) {
        self$`databaseHealthy` <- this_object$`databaseHealthy`
      }
      if (!is.null(this_object$`esHealthy`)) {
        self$`esHealthy` <- this_object$`esHealthy`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Health in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Health
    #'
    #' @param input_json the JSON input
    #' @return the instance of Health
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`healthy` <- this_object$`healthy`
      self$`ldapAuthenticationHealthy` <- this_object$`ldapAuthenticationHealthy`
      self$`ldapAuthorizationHealthy` <- this_object$`ldapAuthorizationHealthy`
      self$`databaseHealthy` <- this_object$`databaseHealthy`
      self$`esHealthy` <- this_object$`esHealthy`
      self
    },

    #' @description
    #' Validate JSON input with respect to Health and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Health
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
# Health$unlock()
#
## Below is an example to define the print function
# Health$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Health$lock()


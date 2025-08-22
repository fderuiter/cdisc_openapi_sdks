#' Create a new SdtmProduct
#'
#' @description
#' SdtmProduct Class
#'
#' @docType class
#' @title SdtmProduct
#' @description SdtmProduct Class
#' @format An \code{R6Class} generator object
#' @field name  character [optional]
#' @field label  character [optional]
#' @field description  character [optional]
#' @field source  character [optional]
#' @field effectiveDate  character [optional]
#' @field registrationStatus  character [optional]
#' @field version  character [optional]
#' @field _links  \link{SdtmProductLinks} [optional]
#' @field classes  list(\link{SdtmClass}) [optional]
#' @field datasets  list(\link{SdtmDataset}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SdtmProduct <- R6::R6Class(
  "SdtmProduct",
  public = list(
    `name` = NULL,
    `label` = NULL,
    `description` = NULL,
    `source` = NULL,
    `effectiveDate` = NULL,
    `registrationStatus` = NULL,
    `version` = NULL,
    `_links` = NULL,
    `classes` = NULL,
    `datasets` = NULL,

    #' @description
    #' Initialize a new SdtmProduct class.
    #'
    #' @param name name
    #' @param label label
    #' @param description description
    #' @param source source
    #' @param effectiveDate effectiveDate
    #' @param registrationStatus registrationStatus
    #' @param version version
    #' @param _links _links
    #' @param classes classes
    #' @param datasets datasets
    #' @param ... Other optional arguments.
    initialize = function(`name` = NULL, `label` = NULL, `description` = NULL, `source` = NULL, `effectiveDate` = NULL, `registrationStatus` = NULL, `version` = NULL, `_links` = NULL, `classes` = NULL, `datasets` = NULL, ...) {
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
      if (!is.null(`source`)) {
        if (!(is.character(`source`) && length(`source`) == 1)) {
          stop(paste("Error! Invalid data for `source`. Must be a string:", `source`))
        }
        self$`source` <- `source`
      }
      if (!is.null(`effectiveDate`)) {
        if (!(is.character(`effectiveDate`) && length(`effectiveDate`) == 1)) {
          stop(paste("Error! Invalid data for `effectiveDate`. Must be a string:", `effectiveDate`))
        }
        self$`effectiveDate` <- `effectiveDate`
      }
      if (!is.null(`registrationStatus`)) {
        if (!(is.character(`registrationStatus`) && length(`registrationStatus`) == 1)) {
          stop(paste("Error! Invalid data for `registrationStatus`. Must be a string:", `registrationStatus`))
        }
        self$`registrationStatus` <- `registrationStatus`
      }
      if (!is.null(`version`)) {
        if (!(is.character(`version`) && length(`version`) == 1)) {
          stop(paste("Error! Invalid data for `version`. Must be a string:", `version`))
        }
        self$`version` <- `version`
      }
      if (!is.null(`_links`)) {
        stopifnot(R6::is.R6(`_links`))
        self$`_links` <- `_links`
      }
      if (!is.null(`classes`)) {
        stopifnot(is.vector(`classes`), length(`classes`) != 0)
        sapply(`classes`, function(x) stopifnot(R6::is.R6(x)))
        self$`classes` <- `classes`
      }
      if (!is.null(`datasets`)) {
        stopifnot(is.vector(`datasets`), length(`datasets`) != 0)
        sapply(`datasets`, function(x) stopifnot(R6::is.R6(x)))
        self$`datasets` <- `datasets`
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
    #' @return SdtmProduct as a base R list.
    #' @examples
    #' # convert array of SdtmProduct (x) to a data frame
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
    #' Convert SdtmProduct to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      SdtmProductObject <- list()
      if (!is.null(self$`name`)) {
        SdtmProductObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`label`)) {
        SdtmProductObject[["label"]] <-
          self$`label`
      }
      if (!is.null(self$`description`)) {
        SdtmProductObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`source`)) {
        SdtmProductObject[["source"]] <-
          self$`source`
      }
      if (!is.null(self$`effectiveDate`)) {
        SdtmProductObject[["effectiveDate"]] <-
          self$`effectiveDate`
      }
      if (!is.null(self$`registrationStatus`)) {
        SdtmProductObject[["registrationStatus"]] <-
          self$`registrationStatus`
      }
      if (!is.null(self$`version`)) {
        SdtmProductObject[["version"]] <-
          self$`version`
      }
      if (!is.null(self$`_links`)) {
        SdtmProductObject[["_links"]] <-
          self$`_links`$toSimpleType()
      }
      if (!is.null(self$`classes`)) {
        SdtmProductObject[["classes"]] <-
          lapply(self$`classes`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`datasets`)) {
        SdtmProductObject[["datasets"]] <-
          lapply(self$`datasets`, function(x) x$toSimpleType())
      }
      return(SdtmProductObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of SdtmProduct
    #'
    #' @param input_json the JSON input
    #' @return the instance of SdtmProduct
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`label`)) {
        self$`label` <- this_object$`label`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`source`)) {
        self$`source` <- this_object$`source`
      }
      if (!is.null(this_object$`effectiveDate`)) {
        self$`effectiveDate` <- this_object$`effectiveDate`
      }
      if (!is.null(this_object$`registrationStatus`)) {
        self$`registrationStatus` <- this_object$`registrationStatus`
      }
      if (!is.null(this_object$`version`)) {
        self$`version` <- this_object$`version`
      }
      if (!is.null(this_object$`_links`)) {
        `_links_object` <- SdtmProductLinks$new()
        `_links_object`$fromJSON(jsonlite::toJSON(this_object$`_links`, auto_unbox = TRUE, digits = NA))
        self$`_links` <- `_links_object`
      }
      if (!is.null(this_object$`classes`)) {
        self$`classes` <- ApiClient$new()$deserializeObj(this_object$`classes`, "array[SdtmClass]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`datasets`)) {
        self$`datasets` <- ApiClient$new()$deserializeObj(this_object$`datasets`, "array[SdtmDataset]", loadNamespace("openapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return SdtmProduct in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of SdtmProduct
    #'
    #' @param input_json the JSON input
    #' @return the instance of SdtmProduct
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`name` <- this_object$`name`
      self$`label` <- this_object$`label`
      self$`description` <- this_object$`description`
      self$`source` <- this_object$`source`
      self$`effectiveDate` <- this_object$`effectiveDate`
      self$`registrationStatus` <- this_object$`registrationStatus`
      self$`version` <- this_object$`version`
      self$`_links` <- SdtmProductLinks$new()$fromJSON(jsonlite::toJSON(this_object$`_links`, auto_unbox = TRUE, digits = NA))
      self$`classes` <- ApiClient$new()$deserializeObj(this_object$`classes`, "array[SdtmClass]", loadNamespace("openapi"))
      self$`datasets` <- ApiClient$new()$deserializeObj(this_object$`datasets`, "array[SdtmDataset]", loadNamespace("openapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to SdtmProduct and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of SdtmProduct
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
# SdtmProduct$unlock()
#
## Below is an example to define the print function
# SdtmProduct$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SdtmProduct$lock()


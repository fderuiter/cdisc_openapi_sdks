(ns cdisc-library-api.specs.sendig-dataset-variable
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.sendig-dataset-variable-links :refer :all]
            )
  (:import (java.io File)))


(def sendig-dataset-variable-data
  {
   (ds/opt :ordinal) string?
   (ds/opt :name) string?
   (ds/opt :label) string?
   (ds/opt :description) string?
   (ds/opt :role) string?
   (ds/opt :simpleDatatype) string?
   (ds/opt :core) string?
   (ds/opt :describedValueDomain) string?
   (ds/opt :valueList) (s/coll-of string?)
   (ds/opt :_links) sendig-dataset-variable-links-spec
   })

(def sendig-dataset-variable-spec
  (ds/spec
    {:name ::sendig-dataset-variable
     :spec sendig-dataset-variable-data}))

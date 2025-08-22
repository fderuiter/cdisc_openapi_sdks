(ns cdisc-library-api.specs.adam-variable
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.adam-variable-links :refer :all]
            )
  (:import (java.io File)))


(def adam-variable-data
  {
   (ds/opt :ordinal) string?
   (ds/opt :name) string?
   (ds/opt :label) string?
   (ds/opt :description) string?
   (ds/opt :core) string?
   (ds/opt :simpleDatatype) string?
   (ds/opt :describedValueDomain) string?
   (ds/opt :valueList) (s/coll-of string?)
   (ds/opt :_links) adam-variable-links-spec
   })

(def adam-variable-spec
  (ds/spec
    {:name ::adam-variable
     :spec adam-variable-data}))

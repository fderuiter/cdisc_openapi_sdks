(ns cdisc-library-api.specs.sdtmig-dataset-variable
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.sdtmig-dataset-variable-links :refer :all]
            )
  (:import (java.io File)))


(def sdtmig-dataset-variable-data
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
   (ds/opt :_links) sdtmig-dataset-variable-links-spec
   })

(def sdtmig-dataset-variable-spec
  (ds/spec
    {:name ::sdtmig-dataset-variable
     :spec sdtmig-dataset-variable-data}))

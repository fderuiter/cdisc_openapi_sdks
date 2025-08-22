(ns cdisc-library-api.specs.sdtm-dataset-variable
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.sdtm-dataset-variable-links :refer :all]
            )
  (:import (java.io File)))


(def sdtm-dataset-variable-data
  {
   (ds/opt :ordinal) string?
   (ds/opt :name) string?
   (ds/opt :label) string?
   (ds/opt :description) string?
   (ds/opt :role) string?
   (ds/opt :roleDescription) string?
   (ds/opt :simpleDatatype) string?
   (ds/opt :describedValueDomain) string?
   (ds/opt :_links) sdtm-dataset-variable-links-spec
   })

(def sdtm-dataset-variable-spec
  (ds/spec
    {:name ::sdtm-dataset-variable
     :spec sdtm-dataset-variable-data}))

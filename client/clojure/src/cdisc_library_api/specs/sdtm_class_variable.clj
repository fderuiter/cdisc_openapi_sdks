(ns cdisc-library-api.specs.sdtm-class-variable
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.sdtm-class-variable-links :refer :all]
            )
  (:import (java.io File)))


(def sdtm-class-variable-data
  {
   (ds/opt :ordinal) string?
   (ds/opt :name) string?
   (ds/opt :label) string?
   (ds/opt :description) string?
   (ds/opt :role) string?
   (ds/opt :roleDescription) string?
   (ds/opt :simpleDatatype) string?
   (ds/opt :describedValueDomain) string?
   (ds/opt :_links) sdtm-class-variable-links-spec
   })

(def sdtm-class-variable-spec
  (ds/spec
    {:name ::sdtm-class-variable
     :spec sdtm-class-variable-data}))

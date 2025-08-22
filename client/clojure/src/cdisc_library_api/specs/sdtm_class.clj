(ns cdisc-library-api.specs.sdtm-class
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.sdtm-class-links :refer :all]
            [cdisc-library-api.specs.sdtm-class-variable :refer :all]
            [cdisc-library-api.specs.sdtm-dataset :refer :all]
            )
  (:import (java.io File)))


(def sdtm-class-data
  {
   (ds/opt :ordinal) string?
   (ds/opt :name) string?
   (ds/opt :label) string?
   (ds/opt :description) string?
   (ds/opt :_links) sdtm-class-links-spec
   (ds/opt :classVariables) (s/coll-of sdtm-class-variable-spec)
   (ds/opt :datasets) (s/coll-of sdtm-dataset-spec)
   })

(def sdtm-class-spec
  (ds/spec
    {:name ::sdtm-class
     :spec sdtm-class-data}))

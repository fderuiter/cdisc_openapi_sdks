(ns cdisc-library-api.specs.sdtm-dataset
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.sdtm-dataset-links :refer :all]
            [cdisc-library-api.specs.sdtm-dataset-variable :refer :all]
            )
  (:import (java.io File)))


(def sdtm-dataset-data
  {
   (ds/opt :ordinal) string?
   (ds/opt :name) string?
   (ds/opt :label) string?
   (ds/opt :description) string?
   (ds/opt :datasetStructure) string?
   (ds/opt :_links) sdtm-dataset-links-spec
   (ds/opt :datasetVariables) (s/coll-of sdtm-dataset-variable-spec)
   })

(def sdtm-dataset-spec
  (ds/spec
    {:name ::sdtm-dataset
     :spec sdtm-dataset-data}))

(ns cdisc-library-api.specs.sdtmig-dataset
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.sdtmig-dataset-links :refer :all]
            [cdisc-library-api.specs.sdtmig-dataset-variable :refer :all]
            )
  (:import (java.io File)))


(def sdtmig-dataset-data
  {
   (ds/opt :ordinal) string?
   (ds/opt :name) string?
   (ds/opt :label) string?
   (ds/opt :description) string?
   (ds/opt :datasetStructure) string?
   (ds/opt :_links) sdtmig-dataset-links-spec
   (ds/opt :datasetVariables) (s/coll-of sdtmig-dataset-variable-spec)
   })

(def sdtmig-dataset-spec
  (ds/spec
    {:name ::sdtmig-dataset
     :spec sdtmig-dataset-data}))

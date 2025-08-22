(ns cdisc-library-api.specs.sendig-dataset
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.sendig-dataset-links :refer :all]
            [cdisc-library-api.specs.sendig-dataset-variable :refer :all]
            )
  (:import (java.io File)))


(def sendig-dataset-data
  {
   (ds/opt :ordinal) string?
   (ds/opt :name) string?
   (ds/opt :label) string?
   (ds/opt :description) string?
   (ds/opt :datasetStructure) string?
   (ds/opt :_links) sendig-dataset-links-spec
   (ds/opt :datasetVariables) (s/coll-of sendig-dataset-variable-spec)
   })

(def sendig-dataset-spec
  (ds/spec
    {:name ::sendig-dataset
     :spec sendig-dataset-data}))

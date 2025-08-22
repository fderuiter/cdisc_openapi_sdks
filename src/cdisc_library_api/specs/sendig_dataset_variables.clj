(ns cdisc-library-api.specs.sendig-dataset-variables
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.sendig-dataset-variables-links :refer :all]
            )
  (:import (java.io File)))


(def sendig-dataset-variables-data
  {
   (ds/opt :ordinal) string?
   (ds/opt :name) string?
   (ds/opt :label) string?
   (ds/opt :description) string?
   (ds/opt :datasetStructure) string?
   (ds/opt :_links) sendig-dataset-variables-links-spec
   })

(def sendig-dataset-variables-spec
  (ds/spec
    {:name ::sendig-dataset-variables
     :spec sendig-dataset-variables-data}))

(ns cdisc-library-api.specs.sdtm-dataset-variables
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.sdtm-dataset-variables-links :refer :all]
            )
  (:import (java.io File)))


(def sdtm-dataset-variables-data
  {
   (ds/opt :ordinal) string?
   (ds/opt :name) string?
   (ds/opt :label) string?
   (ds/opt :description) string?
   (ds/opt :datasetStructure) string?
   (ds/opt :_links) sdtm-dataset-variables-links-spec
   })

(def sdtm-dataset-variables-spec
  (ds/spec
    {:name ::sdtm-dataset-variables
     :spec sdtm-dataset-variables-data}))

(ns cdisc-library-api.specs.sdtmig-dataset-variables
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.sdtmig-dataset-variables-links :refer :all]
            )
  (:import (java.io File)))


(def sdtmig-dataset-variables-data
  {
   (ds/opt :ordinal) string?
   (ds/opt :name) string?
   (ds/opt :label) string?
   (ds/opt :description) string?
   (ds/opt :datasetStructure) string?
   (ds/opt :_links) sdtmig-dataset-variables-links-spec
   })

(def sdtmig-dataset-variables-spec
  (ds/spec
    {:name ::sdtmig-dataset-variables
     :spec sdtmig-dataset-variables-data}))

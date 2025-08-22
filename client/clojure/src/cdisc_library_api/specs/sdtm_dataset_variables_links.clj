(ns cdisc-library-api.specs.sdtm-dataset-variables-links
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.sdtm-dataset-variables-ref :refer :all]
            [cdisc-library-api.specs.sdtm-product-ref :refer :all]
            [cdisc-library-api.specs.sdtm-class-ref :refer :all]
            [cdisc-library-api.specs.sdtm-dataset-variables-ref :refer :all]
            [cdisc-library-api.specs.sdtm-dataset-variable-ref-element :refer :all]
            )
  (:import (java.io File)))


(def sdtm-dataset-variables-links-data
  {
   (ds/opt :self) sdtm-dataset-variables-ref-spec
   (ds/opt :parentProduct) sdtm-product-ref-spec
   (ds/opt :parentClass) sdtm-class-ref-spec
   (ds/opt :priorVersion) sdtm-dataset-variables-ref-spec
   (ds/opt :datasetVariables) (s/coll-of sdtm-dataset-variable-ref-element-spec)
   })

(def sdtm-dataset-variables-links-spec
  (ds/spec
    {:name ::sdtm-dataset-variables-links
     :spec sdtm-dataset-variables-links-data}))

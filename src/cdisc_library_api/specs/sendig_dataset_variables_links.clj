(ns cdisc-library-api.specs.sendig-dataset-variables-links
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.sendig-dataset-variables-ref :refer :all]
            [cdisc-library-api.specs.sdtm-dataset-ref :refer :all]
            [cdisc-library-api.specs.sendig-product-ref :refer :all]
            [cdisc-library-api.specs.sendig-class-ref :refer :all]
            [cdisc-library-api.specs.sendig-dataset-variables-ref :refer :all]
            [cdisc-library-api.specs.sendig-dataset-variable-ref-element :refer :all]
            )
  (:import (java.io File)))


(def sendig-dataset-variables-links-data
  {
   (ds/opt :self) sendig-dataset-variables-ref-spec
   (ds/opt :modelDataset) sdtm-dataset-ref-spec
   (ds/opt :parentProduct) sendig-product-ref-spec
   (ds/opt :parentClass) sendig-class-ref-spec
   (ds/opt :priorVersion) sendig-dataset-variables-ref-spec
   (ds/opt :datasetVariables) (s/coll-of sendig-dataset-variable-ref-element-spec)
   })

(def sendig-dataset-variables-links-spec
  (ds/spec
    {:name ::sendig-dataset-variables-links
     :spec sendig-dataset-variables-links-data}))

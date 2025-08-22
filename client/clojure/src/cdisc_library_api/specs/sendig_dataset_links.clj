(ns cdisc-library-api.specs.sendig-dataset-links
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.sendig-dataset-ref :refer :all]
            [cdisc-library-api.specs.sdtm-dataset-ref :refer :all]
            [cdisc-library-api.specs.sendig-product-ref :refer :all]
            [cdisc-library-api.specs.sendig-class-ref :refer :all]
            [cdisc-library-api.specs.sendig-dataset-ref :refer :all]
            )
  (:import (java.io File)))


(def sendig-dataset-links-data
  {
   (ds/opt :self) sendig-dataset-ref-spec
   (ds/opt :modelDataset) sdtm-dataset-ref-spec
   (ds/opt :parentProduct) sendig-product-ref-spec
   (ds/opt :parentClass) sendig-class-ref-spec
   (ds/opt :priorVersion) sendig-dataset-ref-spec
   })

(def sendig-dataset-links-spec
  (ds/spec
    {:name ::sendig-dataset-links
     :spec sendig-dataset-links-data}))

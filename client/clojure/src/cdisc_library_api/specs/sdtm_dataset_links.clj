(ns cdisc-library-api.specs.sdtm-dataset-links
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.sdtm-dataset-ref :refer :all]
            [cdisc-library-api.specs.sdtm-product-ref :refer :all]
            [cdisc-library-api.specs.sdtm-class-ref :refer :all]
            [cdisc-library-api.specs.sdtm-dataset-ref :refer :all]
            )
  (:import (java.io File)))


(def sdtm-dataset-links-data
  {
   (ds/opt :self) sdtm-dataset-ref-spec
   (ds/opt :parentProduct) sdtm-product-ref-spec
   (ds/opt :parentClass) sdtm-class-ref-spec
   (ds/opt :priorVersion) sdtm-dataset-ref-spec
   })

(def sdtm-dataset-links-spec
  (ds/spec
    {:name ::sdtm-dataset-links
     :spec sdtm-dataset-links-data}))

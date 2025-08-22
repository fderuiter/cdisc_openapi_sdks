(ns cdisc-library-api.specs.sdtm-class-datasets-links
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.sdtm-class-datasets-ref :refer :all]
            [cdisc-library-api.specs.sdtm-product-ref :refer :all]
            [cdisc-library-api.specs.sdtm-class-datasets-ref :refer :all]
            [cdisc-library-api.specs.sdtm-dataset-ref-element :refer :all]
            )
  (:import (java.io File)))


(def sdtm-class-datasets-links-data
  {
   (ds/opt :self) sdtm-class-datasets-ref-spec
   (ds/opt :parentProduct) sdtm-product-ref-spec
   (ds/opt :priorVersion) sdtm-class-datasets-ref-spec
   (ds/opt :datasets) (s/coll-of sdtm-dataset-ref-element-spec)
   })

(def sdtm-class-datasets-links-spec
  (ds/spec
    {:name ::sdtm-class-datasets-links
     :spec sdtm-class-datasets-links-data}))

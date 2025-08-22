(ns cdisc-library-api.specs.sdtm-datasets-links
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.sdtm-datasets-ref :refer :all]
            [cdisc-library-api.specs.sdtm-product-ref :refer :all]
            [cdisc-library-api.specs.sdtm-datasets-ref :refer :all]
            [cdisc-library-api.specs.sdtm-dataset-ref-element :refer :all]
            )
  (:import (java.io File)))


(def sdtm-datasets-links-data
  {
   (ds/opt :self) sdtm-datasets-ref-spec
   (ds/opt :parentProduct) sdtm-product-ref-spec
   (ds/opt :priorVersion) sdtm-datasets-ref-spec
   (ds/opt :datasets) (s/coll-of sdtm-dataset-ref-element-spec)
   })

(def sdtm-datasets-links-spec
  (ds/spec
    {:name ::sdtm-datasets-links
     :spec sdtm-datasets-links-data}))

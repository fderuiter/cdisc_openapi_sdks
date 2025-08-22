(ns cdisc-library-api.specs.sdtm-product-links
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.sdtm-product-ref :refer :all]
            [cdisc-library-api.specs.sdtm-product-ref :refer :all]
            )
  (:import (java.io File)))


(def sdtm-product-links-data
  {
   (ds/opt :self) sdtm-product-ref-spec
   (ds/opt :priorVersion) sdtm-product-ref-spec
   })

(def sdtm-product-links-spec
  (ds/spec
    {:name ::sdtm-product-links
     :spec sdtm-product-links-data}))

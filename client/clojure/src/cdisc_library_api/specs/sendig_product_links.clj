(ns cdisc-library-api.specs.sendig-product-links
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.sendig-product-ref :refer :all]
            [cdisc-library-api.specs.sdtm-product-ref :refer :all]
            [cdisc-library-api.specs.sendig-product-ref :refer :all]
            )
  (:import (java.io File)))


(def sendig-product-links-data
  {
   (ds/opt :self) sendig-product-ref-spec
   (ds/opt :model) sdtm-product-ref-spec
   (ds/opt :priorVersion) sendig-product-ref-spec
   })

(def sendig-product-links-spec
  (ds/spec
    {:name ::sendig-product-links
     :spec sendig-product-links-data}))

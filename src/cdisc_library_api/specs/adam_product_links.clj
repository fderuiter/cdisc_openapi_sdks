(ns cdisc-library-api.specs.adam-product-links
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.adam-product-ref :refer :all]
            [cdisc-library-api.specs.adam-product-ref :refer :all]
            [cdisc-library-api.specs.adam-product-ref :refer :all]
            )
  (:import (java.io File)))


(def adam-product-links-data
  {
   (ds/opt :self) adam-product-ref-spec
   (ds/opt :model) adam-product-ref-spec
   (ds/opt :priorVersion) adam-product-ref-spec
   })

(def adam-product-links-spec
  (ds/spec
    {:name ::adam-product-links
     :spec adam-product-links-data}))

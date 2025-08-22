(ns cdisc-library-api.specs.cdash-product-links
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.cdash-product-ref :refer :all]
            [cdisc-library-api.specs.cdash-product-ref :refer :all]
            )
  (:import (java.io File)))


(def cdash-product-links-data
  {
   (ds/opt :self) cdash-product-ref-spec
   (ds/opt :priorVersion) cdash-product-ref-spec
   })

(def cdash-product-links-spec
  (ds/spec
    {:name ::cdash-product-links
     :spec cdash-product-links-data}))

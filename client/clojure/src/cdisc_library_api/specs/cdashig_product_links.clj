(ns cdisc-library-api.specs.cdashig-product-links
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.cdashig-product-ref :refer :all]
            [cdisc-library-api.specs.cdash-product-ref :refer :all]
            [cdisc-library-api.specs.cdashig-product-ref :refer :all]
            )
  (:import (java.io File)))


(def cdashig-product-links-data
  {
   (ds/opt :self) cdashig-product-ref-spec
   (ds/opt :model) cdash-product-ref-spec
   (ds/opt :priorVersion) cdashig-product-ref-spec
   })

(def cdashig-product-links-spec
  (ds/spec
    {:name ::cdashig-product-links
     :spec cdashig-product-links-data}))

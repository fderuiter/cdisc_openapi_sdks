(ns cdisc-library-api.specs.adam-product-datastructures-links
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.adam-product-datastructures-ref :refer :all]
            [cdisc-library-api.specs.adam-product-datastructures-ref :refer :all]
            [cdisc-library-api.specs.adam-datastructure-ref-element :refer :all]
            )
  (:import (java.io File)))


(def adam-product-datastructures-links-data
  {
   (ds/opt :self) adam-product-datastructures-ref-spec
   (ds/opt :priorVersion) adam-product-datastructures-ref-spec
   (ds/opt :dataStructures) (s/coll-of adam-datastructure-ref-element-spec)
   })

(def adam-product-datastructures-links-spec
  (ds/spec
    {:name ::adam-product-datastructures-links
     :spec adam-product-datastructures-links-data}))

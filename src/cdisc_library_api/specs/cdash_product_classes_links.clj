(ns cdisc-library-api.specs.cdash-product-classes-links
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.cdash-product-classes-ref :refer :all]
            [cdisc-library-api.specs.cdash-product-ref :refer :all]
            [cdisc-library-api.specs.cdash-class-ref-element :refer :all]
            )
  (:import (java.io File)))


(def cdash-product-classes-links-data
  {
   (ds/opt :self) cdash-product-classes-ref-spec
   (ds/opt :parentProduct) cdash-product-ref-spec
   (ds/opt :classes) (s/coll-of cdash-class-ref-element-spec)
   })

(def cdash-product-classes-links-spec
  (ds/spec
    {:name ::cdash-product-classes-links
     :spec cdash-product-classes-links-data}))

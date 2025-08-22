(ns cdisc-library-api.specs.cdashig-product-classes-links
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.cdashig-product-classes-ref :refer :all]
            [cdisc-library-api.specs.cdashig-product-ref :refer :all]
            [cdisc-library-api.specs.cdashig-class-ref-element :refer :all]
            )
  (:import (java.io File)))


(def cdashig-product-classes-links-data
  {
   (ds/opt :self) cdashig-product-classes-ref-spec
   (ds/opt :parentProduct) cdashig-product-ref-spec
   (ds/opt :classes) (s/coll-of cdashig-class-ref-element-spec)
   })

(def cdashig-product-classes-links-spec
  (ds/spec
    {:name ::cdashig-product-classes-links
     :spec cdashig-product-classes-links-data}))

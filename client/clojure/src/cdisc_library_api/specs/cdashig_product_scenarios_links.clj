(ns cdisc-library-api.specs.cdashig-product-scenarios-links
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.cdashig-product-scenarios-ref :refer :all]
            [cdisc-library-api.specs.cdashig-product-ref :refer :all]
            [cdisc-library-api.specs.cdashig-scenario-ref-element :refer :all]
            )
  (:import (java.io File)))


(def cdashig-product-scenarios-links-data
  {
   (ds/opt :self) cdashig-product-scenarios-ref-spec
   (ds/opt :parentProduct) cdashig-product-ref-spec
   (ds/opt :scenarios) (s/coll-of cdashig-scenario-ref-element-spec)
   })

(def cdashig-product-scenarios-links-spec
  (ds/spec
    {:name ::cdashig-product-scenarios-links
     :spec cdashig-product-scenarios-links-data}))

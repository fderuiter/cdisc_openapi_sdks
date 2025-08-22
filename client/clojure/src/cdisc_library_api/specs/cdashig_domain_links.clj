(ns cdisc-library-api.specs.cdashig-domain-links
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.cdashig-domain-ref :refer :all]
            [cdisc-library-api.specs.cdashig-product-ref :refer :all]
            [cdisc-library-api.specs.cdashig-class-ref :refer :all]
            [cdisc-library-api.specs.cdashig-domain-ref :refer :all]
            [cdisc-library-api.specs.cdashig-scenario-ref-element :refer :all]
            )
  (:import (java.io File)))


(def cdashig-domain-links-data
  {
   (ds/opt :self) cdashig-domain-ref-spec
   (ds/opt :parentProduct) cdashig-product-ref-spec
   (ds/opt :parentClass) cdashig-class-ref-spec
   (ds/opt :priorVersion) cdashig-domain-ref-spec
   (ds/opt :scenarios) (s/coll-of cdashig-scenario-ref-element-spec)
   })

(def cdashig-domain-links-spec
  (ds/spec
    {:name ::cdashig-domain-links
     :spec cdashig-domain-links-data}))

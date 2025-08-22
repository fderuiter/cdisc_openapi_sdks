(ns cdisc-library-api.specs.cdashig-scenario-fields-links
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.cdashig-scenario-fields-ref :refer :all]
            [cdisc-library-api.specs.cdashig-product-ref :refer :all]
            [cdisc-library-api.specs.cdashig-class-ref :refer :all]
            [cdisc-library-api.specs.cdashig-domain-ref :refer :all]
            [cdisc-library-api.specs.cdashig-scenario-field-ref-element :refer :all]
            )
  (:import (java.io File)))


(def cdashig-scenario-fields-links-data
  {
   (ds/opt :self) cdashig-scenario-fields-ref-spec
   (ds/opt :parentProduct) cdashig-product-ref-spec
   (ds/opt :parentClass) cdashig-class-ref-spec
   (ds/opt :parentDomain) cdashig-domain-ref-spec
   (ds/opt :fields) (s/coll-of cdashig-scenario-field-ref-element-spec)
   })

(def cdashig-scenario-fields-links-spec
  (ds/spec
    {:name ::cdashig-scenario-fields-links
     :spec cdashig-scenario-fields-links-data}))

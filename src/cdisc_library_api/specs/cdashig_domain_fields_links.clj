(ns cdisc-library-api.specs.cdashig-domain-fields-links
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.cdashig-domain-fields-ref :refer :all]
            [cdisc-library-api.specs.cdashig-product-ref :refer :all]
            [cdisc-library-api.specs.cdashig-class-ref :refer :all]
            [cdisc-library-api.specs.cdashig-domain-field-ref-element :refer :all]
            )
  (:import (java.io File)))


(def cdashig-domain-fields-links-data
  {
   (ds/opt :self) cdashig-domain-fields-ref-spec
   (ds/opt :parentProduct) cdashig-product-ref-spec
   (ds/opt :parentClass) cdashig-class-ref-spec
   (ds/opt :fields) (s/coll-of cdashig-domain-field-ref-element-spec)
   })

(def cdashig-domain-fields-links-spec
  (ds/spec
    {:name ::cdashig-domain-fields-links
     :spec cdashig-domain-fields-links-data}))

(ns cdisc-library-api.specs.cdash-domain-fields-links
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.cdash-domain-fields-ref :refer :all]
            [cdisc-library-api.specs.cdash-product-ref :refer :all]
            [cdisc-library-api.specs.cdash-class-ref :refer :all]
            [cdisc-library-api.specs.cdash-domain-field-ref-element :refer :all]
            )
  (:import (java.io File)))


(def cdash-domain-fields-links-data
  {
   (ds/opt :self) cdash-domain-fields-ref-spec
   (ds/opt :parentProduct) cdash-product-ref-spec
   (ds/opt :parentClass) cdash-class-ref-spec
   (ds/opt :fields) (s/coll-of cdash-domain-field-ref-element-spec)
   })

(def cdash-domain-fields-links-spec
  (ds/spec
    {:name ::cdash-domain-fields-links
     :spec cdash-domain-fields-links-data}))

(ns cdisc-library-api.specs.cdash-product-domains-links
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.cdash-product-domains-ref :refer :all]
            [cdisc-library-api.specs.cdash-product-ref :refer :all]
            [cdisc-library-api.specs.cdash-domain-ref-element :refer :all]
            )
  (:import (java.io File)))


(def cdash-product-domains-links-data
  {
   (ds/opt :self) cdash-product-domains-ref-spec
   (ds/opt :parentProduct) cdash-product-ref-spec
   (ds/opt :domains) (s/coll-of cdash-domain-ref-element-spec)
   })

(def cdash-product-domains-links-spec
  (ds/spec
    {:name ::cdash-product-domains-links
     :spec cdash-product-domains-links-data}))

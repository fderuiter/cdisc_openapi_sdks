(ns cdisc-library-api.specs.cdashig-product-domains-links
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.cdashig-product-domains-ref :refer :all]
            [cdisc-library-api.specs.cdashig-product-ref :refer :all]
            [cdisc-library-api.specs.cdashig-domain-ref-element :refer :all]
            )
  (:import (java.io File)))


(def cdashig-product-domains-links-data
  {
   (ds/opt :self) cdashig-product-domains-ref-spec
   (ds/opt :parentProduct) cdashig-product-ref-spec
   (ds/opt :domains) (s/coll-of cdashig-domain-ref-element-spec)
   })

(def cdashig-product-domains-links-spec
  (ds/spec
    {:name ::cdashig-product-domains-links
     :spec cdashig-product-domains-links-data}))

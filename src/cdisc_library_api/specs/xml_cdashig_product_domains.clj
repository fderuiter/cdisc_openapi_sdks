(ns cdisc-library-api.specs.xml-cdashig-product-domains
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.cdashig-product-domains :refer :all]
            )
  (:import (java.io File)))


(def xml-cdashig-product-domains-data
  {
   (ds/opt :self) cdashig-product-domains-spec
   })

(def xml-cdashig-product-domains-spec
  (ds/spec
    {:name ::xml-cdashig-product-domains
     :spec xml-cdashig-product-domains-data}))

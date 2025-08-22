(ns cdisc-library-api.specs.xml-cdash-product-domains
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.cdash-product-domains :refer :all]
            )
  (:import (java.io File)))


(def xml-cdash-product-domains-data
  {
   (ds/opt :self) cdash-product-domains-spec
   })

(def xml-cdash-product-domains-spec
  (ds/spec
    {:name ::xml-cdash-product-domains
     :spec xml-cdash-product-domains-data}))

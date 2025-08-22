(ns cdisc-library-api.specs.xml-cdash-product
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.cdash-product :refer :all]
            )
  (:import (java.io File)))


(def xml-cdash-product-data
  {
   (ds/opt :self) cdash-product-spec
   })

(def xml-cdash-product-spec
  (ds/spec
    {:name ::xml-cdash-product
     :spec xml-cdash-product-data}))

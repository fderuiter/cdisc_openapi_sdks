(ns cdisc-library-api.specs.xml-cdash-product-classes
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.cdash-product-classes :refer :all]
            )
  (:import (java.io File)))


(def xml-cdash-product-classes-data
  {
   (ds/opt :self) cdash-product-classes-spec
   })

(def xml-cdash-product-classes-spec
  (ds/spec
    {:name ::xml-cdash-product-classes
     :spec xml-cdash-product-classes-data}))

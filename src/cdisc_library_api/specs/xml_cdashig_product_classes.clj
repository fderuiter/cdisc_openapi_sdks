(ns cdisc-library-api.specs.xml-cdashig-product-classes
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.cdashig-product-classes :refer :all]
            )
  (:import (java.io File)))


(def xml-cdashig-product-classes-data
  {
   (ds/opt :self) cdashig-product-classes-spec
   })

(def xml-cdashig-product-classes-spec
  (ds/spec
    {:name ::xml-cdashig-product-classes
     :spec xml-cdashig-product-classes-data}))

(ns cdisc-library-api.specs.xml-cdashig-product
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.cdashig-product :refer :all]
            )
  (:import (java.io File)))


(def xml-cdashig-product-data
  {
   (ds/opt :self) cdashig-product-spec
   })

(def xml-cdashig-product-spec
  (ds/spec
    {:name ::xml-cdashig-product
     :spec xml-cdashig-product-data}))

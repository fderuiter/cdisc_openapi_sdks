(ns cdisc-library-api.specs.xml-cdashig-product-scenarios
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.cdashig-product-scenarios :refer :all]
            )
  (:import (java.io File)))


(def xml-cdashig-product-scenarios-data
  {
   (ds/opt :self) cdashig-product-scenarios-spec
   })

(def xml-cdashig-product-scenarios-spec
  (ds/spec
    {:name ::xml-cdashig-product-scenarios
     :spec xml-cdashig-product-scenarios-data}))

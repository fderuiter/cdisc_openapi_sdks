(ns cdisc-library-api.specs.xml-adam-product
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.adam-product :refer :all]
            )
  (:import (java.io File)))


(def xml-adam-product-data
  {
   (ds/opt :self) adam-product-spec
   })

(def xml-adam-product-spec
  (ds/spec
    {:name ::xml-adam-product
     :spec xml-adam-product-data}))

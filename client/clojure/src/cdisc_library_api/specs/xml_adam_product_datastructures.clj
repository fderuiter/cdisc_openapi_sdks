(ns cdisc-library-api.specs.xml-adam-product-datastructures
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.adam-product-datastructures :refer :all]
            )
  (:import (java.io File)))


(def xml-adam-product-datastructures-data
  {
   (ds/opt :self) adam-product-datastructures-spec
   })

(def xml-adam-product-datastructures-spec
  (ds/spec
    {:name ::xml-adam-product-datastructures
     :spec xml-adam-product-datastructures-data}))

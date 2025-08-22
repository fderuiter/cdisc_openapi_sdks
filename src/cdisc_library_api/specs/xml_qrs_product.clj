(ns cdisc-library-api.specs.xml-qrs-product
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.qrs-product :refer :all]
            )
  (:import (java.io File)))


(def xml-qrs-product-data
  {
   (ds/opt :self) qrs-product-spec
   })

(def xml-qrs-product-spec
  (ds/spec
    {:name ::xml-qrs-product
     :spec xml-qrs-product-data}))

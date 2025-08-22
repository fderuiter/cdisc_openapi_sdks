(ns cdisc-library-api.specs.xml-products
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.products :refer :all]
            )
  (:import (java.io File)))


(def xml-products-data
  {
   (ds/opt :self) products-spec
   })

(def xml-products-spec
  (ds/spec
    {:name ::xml-products
     :spec xml-products-data}))

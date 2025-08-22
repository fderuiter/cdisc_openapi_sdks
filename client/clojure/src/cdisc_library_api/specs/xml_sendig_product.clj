(ns cdisc-library-api.specs.xml-sendig-product
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.sendig-product :refer :all]
            )
  (:import (java.io File)))


(def xml-sendig-product-data
  {
   (ds/opt :self) sendig-product-spec
   })

(def xml-sendig-product-spec
  (ds/spec
    {:name ::xml-sendig-product
     :spec xml-sendig-product-data}))

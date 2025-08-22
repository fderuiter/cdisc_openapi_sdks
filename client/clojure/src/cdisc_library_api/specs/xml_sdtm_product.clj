(ns cdisc-library-api.specs.xml-sdtm-product
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.sdtm-product :refer :all]
            )
  (:import (java.io File)))


(def xml-sdtm-product-data
  {
   (ds/opt :self) sdtm-product-spec
   })

(def xml-sdtm-product-spec
  (ds/spec
    {:name ::xml-sdtm-product
     :spec xml-sdtm-product-data}))

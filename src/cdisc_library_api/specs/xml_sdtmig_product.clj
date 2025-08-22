(ns cdisc-library-api.specs.xml-sdtmig-product
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.sdtmig-product :refer :all]
            )
  (:import (java.io File)))


(def xml-sdtmig-product-data
  {
   (ds/opt :self) sdtmig-product-spec
   })

(def xml-sdtmig-product-spec
  (ds/spec
    {:name ::xml-sdtmig-product
     :spec xml-sdtmig-product-data}))

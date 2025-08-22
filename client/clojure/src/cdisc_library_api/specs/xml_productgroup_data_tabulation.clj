(ns cdisc-library-api.specs.xml-productgroup-data-tabulation
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.productgroup-data-tabulation :refer :all]
            )
  (:import (java.io File)))


(def xml-productgroup-data-tabulation-data
  {
   (ds/opt :self) productgroup-data-tabulation-spec
   })

(def xml-productgroup-data-tabulation-spec
  (ds/spec
    {:name ::xml-productgroup-data-tabulation
     :spec xml-productgroup-data-tabulation-data}))

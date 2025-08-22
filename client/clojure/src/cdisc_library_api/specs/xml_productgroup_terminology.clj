(ns cdisc-library-api.specs.xml-productgroup-terminology
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.productgroup-terminology :refer :all]
            )
  (:import (java.io File)))


(def xml-productgroup-terminology-data
  {
   (ds/opt :self) productgroup-terminology-spec
   })

(def xml-productgroup-terminology-spec
  (ds/spec
    {:name ::xml-productgroup-terminology
     :spec xml-productgroup-terminology-data}))

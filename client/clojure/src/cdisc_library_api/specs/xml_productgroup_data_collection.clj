(ns cdisc-library-api.specs.xml-productgroup-data-collection
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.productgroup-data-collection :refer :all]
            )
  (:import (java.io File)))


(def xml-productgroup-data-collection-data
  {
   (ds/opt :self) productgroup-data-collection-spec
   })

(def xml-productgroup-data-collection-spec
  (ds/spec
    {:name ::xml-productgroup-data-collection
     :spec xml-productgroup-data-collection-data}))

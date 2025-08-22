(ns cdisc-library-api.specs.xml-productgroup-data-analysis
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.productgroup-data-analysis :refer :all]
            )
  (:import (java.io File)))


(def xml-productgroup-data-analysis-data
  {
   (ds/opt :self) productgroup-data-analysis-spec
   })

(def xml-productgroup-data-analysis-spec
  (ds/spec
    {:name ::xml-productgroup-data-analysis
     :spec xml-productgroup-data-analysis-data}))

(ns cdisc-library-api.specs.xml-adam-varset
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.adam-varset :refer :all]
            )
  (:import (java.io File)))


(def xml-adam-varset-data
  {
   (ds/opt :self) adam-varset-spec
   })

(def xml-adam-varset-spec
  (ds/spec
    {:name ::xml-adam-varset
     :spec xml-adam-varset-data}))

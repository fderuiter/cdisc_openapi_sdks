(ns cdisc-library-api.specs.xml-adam-datastructure-varsets
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.adam-datastructure-varsets :refer :all]
            )
  (:import (java.io File)))


(def xml-adam-datastructure-varsets-data
  {
   (ds/opt :self) adam-datastructure-varsets-spec
   })

(def xml-adam-datastructure-varsets-spec
  (ds/spec
    {:name ::xml-adam-datastructure-varsets
     :spec xml-adam-datastructure-varsets-data}))

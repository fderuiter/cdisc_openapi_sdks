(ns cdisc-library-api.specs.xml-adam-datastructure
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.adam-datastructure :refer :all]
            )
  (:import (java.io File)))


(def xml-adam-datastructure-data
  {
   (ds/opt :self) adam-datastructure-spec
   })

(def xml-adam-datastructure-spec
  (ds/spec
    {:name ::xml-adam-datastructure
     :spec xml-adam-datastructure-data}))

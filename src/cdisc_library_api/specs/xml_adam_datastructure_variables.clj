(ns cdisc-library-api.specs.xml-adam-datastructure-variables
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.adam-datastructure-variables :refer :all]
            )
  (:import (java.io File)))


(def xml-adam-datastructure-variables-data
  {
   (ds/opt :self) adam-datastructure-variables-spec
   })

(def xml-adam-datastructure-variables-spec
  (ds/spec
    {:name ::xml-adam-datastructure-variables
     :spec xml-adam-datastructure-variables-data}))

(ns cdisc-library-api.specs.xml-adam-variable
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.adam-variable :refer :all]
            )
  (:import (java.io File)))


(def xml-adam-variable-data
  {
   (ds/opt :self) adam-variable-spec
   })

(def xml-adam-variable-spec
  (ds/spec
    {:name ::xml-adam-variable
     :spec xml-adam-variable-data}))

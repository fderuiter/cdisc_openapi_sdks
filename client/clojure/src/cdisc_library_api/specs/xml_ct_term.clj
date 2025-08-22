(ns cdisc-library-api.specs.xml-ct-term
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.ct-term :refer :all]
            )
  (:import (java.io File)))


(def xml-ct-term-data
  {
   (ds/opt :self) ct-term-spec
   })

(def xml-ct-term-spec
  (ds/spec
    {:name ::xml-ct-term
     :spec xml-ct-term-data}))

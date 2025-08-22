(ns cdisc-library-api.specs.xml-root-ct-term
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.root-ct-term :refer :all]
            )
  (:import (java.io File)))


(def xml-root-ct-term-data
  {
   (ds/opt :self) root-ct-term-spec
   })

(def xml-root-ct-term-spec
  (ds/spec
    {:name ::xml-root-ct-term
     :spec xml-root-ct-term-data}))

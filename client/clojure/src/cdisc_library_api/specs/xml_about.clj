(ns cdisc-library-api.specs.xml-about
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.about :refer :all]
            )
  (:import (java.io File)))


(def xml-about-data
  {
   (ds/opt :self) about-spec
   })

(def xml-about-spec
  (ds/spec
    {:name ::xml-about
     :spec xml-about-data}))

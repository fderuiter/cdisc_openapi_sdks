(ns cdisc-library-api.specs.xml-cdash-class
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.cdash-class :refer :all]
            )
  (:import (java.io File)))


(def xml-cdash-class-data
  {
   (ds/opt :self) cdash-class-spec
   })

(def xml-cdash-class-spec
  (ds/spec
    {:name ::xml-cdash-class
     :spec xml-cdash-class-data}))

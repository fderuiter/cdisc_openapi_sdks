(ns cdisc-library-api.specs.xml-cdash-class-field
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.cdash-class-field :refer :all]
            )
  (:import (java.io File)))


(def xml-cdash-class-field-data
  {
   (ds/opt :self) cdash-class-field-spec
   })

(def xml-cdash-class-field-spec
  (ds/spec
    {:name ::xml-cdash-class-field
     :spec xml-cdash-class-field-data}))

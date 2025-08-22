(ns cdisc-library-api.specs.xml-root-cdash-class-field
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.root-cdash-class-field :refer :all]
            )
  (:import (java.io File)))


(def xml-root-cdash-class-field-data
  {
   (ds/opt :self) root-cdash-class-field-spec
   })

(def xml-root-cdash-class-field-spec
  (ds/spec
    {:name ::xml-root-cdash-class-field
     :spec xml-root-cdash-class-field-data}))

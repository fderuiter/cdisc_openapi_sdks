(ns cdisc-library-api.specs.root-cdash-class-field-links
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.root-cdash-class-field-ref :refer :all]
            [cdisc-library-api.specs.cdash-class-field-ref-version :refer :all]
            )
  (:import (java.io File)))


(def root-cdash-class-field-links-data
  {
   (ds/opt :self) root-cdash-class-field-ref-spec
   (ds/opt :versions) (s/coll-of cdash-class-field-ref-version-spec)
   })

(def root-cdash-class-field-links-spec
  (ds/spec
    {:name ::root-cdash-class-field-links
     :spec root-cdash-class-field-links-data}))

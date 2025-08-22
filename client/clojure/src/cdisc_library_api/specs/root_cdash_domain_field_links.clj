(ns cdisc-library-api.specs.root-cdash-domain-field-links
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.root-cdash-domain-field-ref :refer :all]
            [cdisc-library-api.specs.cdash-domain-field-ref-version :refer :all]
            )
  (:import (java.io File)))


(def root-cdash-domain-field-links-data
  {
   (ds/opt :self) root-cdash-domain-field-ref-spec
   (ds/opt :versions) (s/coll-of cdash-domain-field-ref-version-spec)
   })

(def root-cdash-domain-field-links-spec
  (ds/spec
    {:name ::root-cdash-domain-field-links
     :spec root-cdash-domain-field-links-data}))

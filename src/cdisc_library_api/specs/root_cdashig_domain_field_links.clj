(ns cdisc-library-api.specs.root-cdashig-domain-field-links
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.root-cdashig-domain-field-ref :refer :all]
            [cdisc-library-api.specs.cdashig-domain-field-ref-version :refer :all]
            )
  (:import (java.io File)))


(def root-cdashig-domain-field-links-data
  {
   (ds/opt :self) root-cdashig-domain-field-ref-spec
   (ds/opt :versions) (s/coll-of cdashig-domain-field-ref-version-spec)
   })

(def root-cdashig-domain-field-links-spec
  (ds/spec
    {:name ::root-cdashig-domain-field-links
     :spec root-cdashig-domain-field-links-data}))

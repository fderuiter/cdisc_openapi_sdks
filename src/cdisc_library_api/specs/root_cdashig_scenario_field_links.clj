(ns cdisc-library-api.specs.root-cdashig-scenario-field-links
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.root-cdashig-scenario-field-ref :refer :all]
            [cdisc-library-api.specs.cdashig-scenario-field-ref-version :refer :all]
            )
  (:import (java.io File)))


(def root-cdashig-scenario-field-links-data
  {
   (ds/opt :self) root-cdashig-scenario-field-ref-spec
   (ds/opt :versions) (s/coll-of cdashig-scenario-field-ref-version-spec)
   })

(def root-cdashig-scenario-field-links-spec
  (ds/spec
    {:name ::root-cdashig-scenario-field-links
     :spec root-cdashig-scenario-field-links-data}))

(ns cdisc-library-api.specs.export-cdashig-table
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.export-cdashig-domain-variables-row :refer :all]
            [cdisc-library-api.specs.export-cdashig-scenario-variables-row :refer :all]
            )
  (:import (java.io File)))


(def export-cdashig-table-data
  {
   (ds/opt :domain-variables) (s/coll-of export-cdashig-domain-variables-row-spec)
   (ds/opt :scenario-variables) (s/coll-of export-cdashig-scenario-variables-row-spec)
   })

(def export-cdashig-table-spec
  (ds/spec
    {:name ::export-cdashig-table
     :spec export-cdashig-table-data}))

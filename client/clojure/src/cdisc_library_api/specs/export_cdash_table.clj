(ns cdisc-library-api.specs.export-cdash-table
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.export-cdash-class-variables-row :refer :all]
            [cdisc-library-api.specs.export-cdash-domain-variables-row :refer :all]
            )
  (:import (java.io File)))


(def export-cdash-table-data
  {
   (ds/opt :class-variables) (s/coll-of export-cdash-class-variables-row-spec)
   (ds/opt :domain-variables) (s/coll-of export-cdash-domain-variables-row-spec)
   })

(def export-cdash-table-spec
  (ds/spec
    {:name ::export-cdash-table
     :spec export-cdash-table-data}))

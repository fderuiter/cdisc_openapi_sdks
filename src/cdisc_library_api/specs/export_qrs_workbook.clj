(ns cdisc-library-api.specs.export-qrs-workbook
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.export-qrs-general :refer :all]
            [cdisc-library-api.specs.export-qrs-workbook-items-row :refer :all]
            [cdisc-library-api.specs.export-qrs-responses :refer :all]
            )
  (:import (java.io File)))


(def export-qrs-workbook-data
  {
   (ds/opt :self) export-qrs-general-spec
   (ds/opt :items) (s/coll-of export-qrs-workbook-items-row-spec)
   (ds/opt :responses) (s/coll-of export-qrs-responses-spec)
   })

(def export-qrs-workbook-spec
  (ds/spec
    {:name ::export-qrs-workbook
     :spec export-qrs-workbook-data}))

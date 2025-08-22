(ns cdisc-library-api.specs.export-sdtmig-workbook
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.export-sdtmig-variables-row :refer :all]
            [cdisc-library-api.specs.export-sdtmig-datasets-row :refer :all]
            )
  (:import (java.io File)))


(def export-sdtmig-workbook-data
  {
   (ds/opt :variables) (s/coll-of export-sdtmig-variables-row-spec)
   (ds/opt :datasets) (s/coll-of export-sdtmig-datasets-row-spec)
   })

(def export-sdtmig-workbook-spec
  (ds/spec
    {:name ::export-sdtmig-workbook
     :spec export-sdtmig-workbook-data}))

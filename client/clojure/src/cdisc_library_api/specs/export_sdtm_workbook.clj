(ns cdisc-library-api.specs.export-sdtm-workbook
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.export-sdtm-class-variables-row :refer :all]
            [cdisc-library-api.specs.export-sdtm-dataset-variables-row :refer :all]
            [cdisc-library-api.specs.export-sdtm-datasets-row :refer :all]
            )
  (:import (java.io File)))


(def export-sdtm-workbook-data
  {
   (ds/opt :class-variables) (s/coll-of export-sdtm-class-variables-row-spec)
   (ds/opt :dataset-variables) (s/coll-of export-sdtm-dataset-variables-row-spec)
   (ds/opt :datasets) (s/coll-of export-sdtm-datasets-row-spec)
   })

(def export-sdtm-workbook-spec
  (ds/spec
    {:name ::export-sdtm-workbook
     :spec export-sdtm-workbook-data}))

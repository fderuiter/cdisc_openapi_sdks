(ns cdisc-library-api.specs.export-sdtmig-datasets-table
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.export-sdtmig-datasets-row :refer :all]
            )
  (:import (java.io File)))


(def export-sdtmig-datasets-table-data
  {
   (ds/opt :datasets) (s/coll-of export-sdtmig-datasets-row-spec)
   })

(def export-sdtmig-datasets-table-spec
  (ds/spec
    {:name ::export-sdtmig-datasets-table
     :spec export-sdtmig-datasets-table-data}))

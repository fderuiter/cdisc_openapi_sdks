(ns cdisc-library-api.specs.export-sendig-workbook
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.export-sendig-variables-row :refer :all]
            [cdisc-library-api.specs.export-sendig-datasets-row :refer :all]
            )
  (:import (java.io File)))


(def export-sendig-workbook-data
  {
   (ds/opt :variables) (s/coll-of export-sendig-variables-row-spec)
   (ds/opt :datasets) (s/coll-of export-sendig-datasets-row-spec)
   })

(def export-sendig-workbook-spec
  (ds/spec
    {:name ::export-sendig-workbook
     :spec export-sendig-workbook-data}))

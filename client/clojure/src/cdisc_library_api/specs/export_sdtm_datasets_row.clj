(ns cdisc-library-api.specs.export-sdtm-datasets-row
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def export-sdtm-datasets-row-data
  {
   (ds/opt :Version) string?
   (ds/opt :Class) string?
   (ds/opt :DatasetName) string?
   (ds/opt :DatasetLabel) string?
   (ds/opt :Structure) string?
   })

(def export-sdtm-datasets-row-spec
  (ds/spec
    {:name ::export-sdtm-datasets-row
     :spec export-sdtm-datasets-row-data}))

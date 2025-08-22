(ns cdisc-library-api.specs.export-sdtmig-datasets-row
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def export-sdtmig-datasets-row-data
  {
   (ds/opt :Version) string?
   (ds/opt :Class) string?
   (ds/opt :DatasetName) string?
   (ds/opt :DatasetLabel) string?
   (ds/opt :Structure) string?
   })

(def export-sdtmig-datasets-row-spec
  (ds/spec
    {:name ::export-sdtmig-datasets-row
     :spec export-sdtmig-datasets-row-data}))

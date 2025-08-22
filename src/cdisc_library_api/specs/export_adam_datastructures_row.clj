(ns cdisc-library-api.specs.export-adam-datastructures-row
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def export-adam-datastructures-row-data
  {
   (ds/opt :Version) string?
   (ds/opt :DataStructureName) string?
   (ds/opt :DatasetName) string?
   (ds/opt :DatasetLabel) string?
   (ds/opt :DatasetDescription) string?
   (ds/opt :Class) string?
   })

(def export-adam-datastructures-row-spec
  (ds/spec
    {:name ::export-adam-datastructures-row
     :spec export-adam-datastructures-row-data}))

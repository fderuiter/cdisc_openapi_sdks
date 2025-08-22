(ns cdisc-library-api.specs.export-sendig-datasets-row
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def export-sendig-datasets-row-data
  {
   (ds/opt :Version) string?
   (ds/opt :Class) string?
   (ds/opt :DatasetName) string?
   (ds/opt :DatasetLabel) string?
   (ds/opt :Structure) string?
   })

(def export-sendig-datasets-row-spec
  (ds/spec
    {:name ::export-sendig-datasets-row
     :spec export-sendig-datasets-row-data}))

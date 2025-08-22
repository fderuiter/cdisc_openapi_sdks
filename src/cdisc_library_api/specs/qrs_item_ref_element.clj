(ns cdisc-library-api.specs.qrs-item-ref-element
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def qrs-item-ref-element-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def qrs-item-ref-element-spec
  (ds/spec
    {:name ::qrs-item-ref-element
     :spec qrs-item-ref-element-data}))

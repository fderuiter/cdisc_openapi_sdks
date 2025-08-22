(ns cdisc-library-api.specs.qrs-ref-element
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def qrs-ref-element-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def qrs-ref-element-spec
  (ds/spec
    {:name ::qrs-ref-element
     :spec qrs-ref-element-data}))

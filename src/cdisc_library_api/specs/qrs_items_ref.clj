(ns cdisc-library-api.specs.qrs-items-ref
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def qrs-items-ref-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def qrs-items-ref-spec
  (ds/spec
    {:name ::qrs-items-ref
     :spec qrs-items-ref-data}))

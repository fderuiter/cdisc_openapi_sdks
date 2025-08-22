(ns cdisc-library-api.specs.qrs-responsegroups-ref
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def qrs-responsegroups-ref-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def qrs-responsegroups-ref-spec
  (ds/spec
    {:name ::qrs-responsegroups-ref
     :spec qrs-responsegroups-ref-data}))

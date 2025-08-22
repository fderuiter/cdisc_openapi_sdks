(ns cdisc-library-api.specs.qrs-responsegroup-ref
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def qrs-responsegroup-ref-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def qrs-responsegroup-ref-spec
  (ds/spec
    {:name ::qrs-responsegroup-ref
     :spec qrs-responsegroup-ref-data}))

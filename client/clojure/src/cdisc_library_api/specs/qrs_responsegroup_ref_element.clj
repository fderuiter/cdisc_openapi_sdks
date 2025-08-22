(ns cdisc-library-api.specs.qrs-responsegroup-ref-element
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def qrs-responsegroup-ref-element-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def qrs-responsegroup-ref-element-spec
  (ds/spec
    {:name ::qrs-responsegroup-ref-element
     :spec qrs-responsegroup-ref-element-data}))

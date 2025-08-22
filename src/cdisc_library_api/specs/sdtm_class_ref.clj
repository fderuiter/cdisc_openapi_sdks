(ns cdisc-library-api.specs.sdtm-class-ref
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def sdtm-class-ref-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def sdtm-class-ref-spec
  (ds/spec
    {:name ::sdtm-class-ref
     :spec sdtm-class-ref-data}))

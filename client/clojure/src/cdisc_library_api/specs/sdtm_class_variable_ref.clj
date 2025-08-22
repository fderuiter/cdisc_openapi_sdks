(ns cdisc-library-api.specs.sdtm-class-variable-ref
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def sdtm-class-variable-ref-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def sdtm-class-variable-ref-spec
  (ds/spec
    {:name ::sdtm-class-variable-ref
     :spec sdtm-class-variable-ref-data}))

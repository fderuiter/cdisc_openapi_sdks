(ns cdisc-library-api.specs.sdtm-class-ref-subclass
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def sdtm-class-ref-subclass-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def sdtm-class-ref-subclass-spec
  (ds/spec
    {:name ::sdtm-class-ref-subclass
     :spec sdtm-class-ref-subclass-data}))

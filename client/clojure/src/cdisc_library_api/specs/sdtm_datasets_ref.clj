(ns cdisc-library-api.specs.sdtm-datasets-ref
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def sdtm-datasets-ref-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def sdtm-datasets-ref-spec
  (ds/spec
    {:name ::sdtm-datasets-ref
     :spec sdtm-datasets-ref-data}))

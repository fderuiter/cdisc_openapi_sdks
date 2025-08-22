(ns cdisc-library-api.specs.lastupdated-ref
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def lastupdated-ref-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def lastupdated-ref-spec
  (ds/spec
    {:name ::lastupdated-ref
     :spec lastupdated-ref-data}))

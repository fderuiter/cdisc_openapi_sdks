(ns cdisc-library-api.specs.sdtmig-datasets-ref
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def sdtmig-datasets-ref-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def sdtmig-datasets-ref-spec
  (ds/spec
    {:name ::sdtmig-datasets-ref
     :spec sdtmig-datasets-ref-data}))

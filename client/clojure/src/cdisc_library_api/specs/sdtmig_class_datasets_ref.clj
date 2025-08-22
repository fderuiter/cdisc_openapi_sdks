(ns cdisc-library-api.specs.sdtmig-class-datasets-ref
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def sdtmig-class-datasets-ref-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def sdtmig-class-datasets-ref-spec
  (ds/spec
    {:name ::sdtmig-class-datasets-ref
     :spec sdtmig-class-datasets-ref-data}))

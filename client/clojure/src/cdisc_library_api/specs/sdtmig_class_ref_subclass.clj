(ns cdisc-library-api.specs.sdtmig-class-ref-subclass
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def sdtmig-class-ref-subclass-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def sdtmig-class-ref-subclass-spec
  (ds/spec
    {:name ::sdtmig-class-ref-subclass
     :spec sdtmig-class-ref-subclass-data}))

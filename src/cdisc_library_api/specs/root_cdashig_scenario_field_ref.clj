(ns cdisc-library-api.specs.root-cdashig-scenario-field-ref
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def root-cdashig-scenario-field-ref-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def root-cdashig-scenario-field-ref-spec
  (ds/spec
    {:name ::root-cdashig-scenario-field-ref
     :spec root-cdashig-scenario-field-ref-data}))

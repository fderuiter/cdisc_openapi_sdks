(ns cdisc-library-api.specs.root-ct-codelist-ref-element
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def root-ct-codelist-ref-element-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def root-ct-codelist-ref-element-spec
  (ds/spec
    {:name ::root-ct-codelist-ref-element
     :spec root-ct-codelist-ref-element-data}))

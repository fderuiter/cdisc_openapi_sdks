(ns cdisc-library-api.specs.ct-codelist-ref-version
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def ct-codelist-ref-version-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def ct-codelist-ref-version-spec
  (ds/spec
    {:name ::ct-codelist-ref-version
     :spec ct-codelist-ref-version-data}))

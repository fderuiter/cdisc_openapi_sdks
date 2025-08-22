(ns cdisc-library-api.specs.ct-codelist-terms-ref
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def ct-codelist-terms-ref-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def ct-codelist-terms-ref-spec
  (ds/spec
    {:name ::ct-codelist-terms-ref
     :spec ct-codelist-terms-ref-data}))

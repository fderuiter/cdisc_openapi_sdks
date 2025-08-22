(ns cdisc-library-api.specs.-mdr-search-scopes-get-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.default-search-scopes :refer :all]
            )
  (:import (java.io File)))


(def -mdr-search-scopes-get-200-response-data
  {
   (ds/opt :scopes) (s/coll-of default-search-scopes-spec)
   })

(def -mdr-search-scopes-get-200-response-spec
  (ds/spec
    {:name ::-mdr-search-scopes-get-200-response
     :spec -mdr-search-scopes-get-200-response-data}))

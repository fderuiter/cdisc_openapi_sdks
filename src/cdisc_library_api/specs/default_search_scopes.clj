(ns cdisc-library-api.specs.default-search-scopes
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def default-search-scopes-data
  {
   })

(def default-search-scopes-spec
  (ds/spec
    {:name ::default-search-scopes
     :spec default-search-scopes-data}))

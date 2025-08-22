(ns cdisc-library-api.specs.default-search-response-hits-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def default-search-response-hits-inner-data
  {
   (ds/req :href) string?
   (ds/req :type) string?
   })

(def default-search-response-hits-inner-spec
  (ds/spec
    {:name ::default-search-response-hits-inner
     :spec default-search-response-hits-inner-data}))

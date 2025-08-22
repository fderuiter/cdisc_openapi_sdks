(ns cdisc-library-api.specs.cdashig-scenario
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.cdashig-scenario-links :refer :all]
            [cdisc-library-api.specs.cdashig-scenario-field :refer :all]
            )
  (:import (java.io File)))


(def cdashig-scenario-data
  {
   (ds/opt :ordinal) string?
   (ds/opt :domain) string?
   (ds/opt :scenario) string?
   (ds/opt :_links) cdashig-scenario-links-spec
   (ds/opt :fields) (s/coll-of cdashig-scenario-field-spec)
   })

(def cdashig-scenario-spec
  (ds/spec
    {:name ::cdashig-scenario
     :spec cdashig-scenario-data}))

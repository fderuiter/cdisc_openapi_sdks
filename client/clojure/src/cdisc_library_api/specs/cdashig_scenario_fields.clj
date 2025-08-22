(ns cdisc-library-api.specs.cdashig-scenario-fields
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.cdashig-scenario-fields-links :refer :all]
            )
  (:import (java.io File)))


(def cdashig-scenario-fields-data
  {
   (ds/opt :ordinal) string?
   (ds/opt :domain) string?
   (ds/opt :scenario) string?
   (ds/opt :_links) cdashig-scenario-fields-links-spec
   })

(def cdashig-scenario-fields-spec
  (ds/spec
    {:name ::cdashig-scenario-fields
     :spec cdashig-scenario-fields-data}))

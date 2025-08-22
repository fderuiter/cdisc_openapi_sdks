(ns cdisc-library-api.specs.root-cdashig-scenario-field
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.root-cdashig-scenario-field-links :refer :all]
            )
  (:import (java.io File)))


(def root-cdashig-scenario-field-data
  {
   (ds/opt :_links) root-cdashig-scenario-field-links-spec
   })

(def root-cdashig-scenario-field-spec
  (ds/spec
    {:name ::root-cdashig-scenario-field
     :spec root-cdashig-scenario-field-data}))

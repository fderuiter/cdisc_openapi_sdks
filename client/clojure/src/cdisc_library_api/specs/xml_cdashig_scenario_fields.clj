(ns cdisc-library-api.specs.xml-cdashig-scenario-fields
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.cdashig-scenario-fields :refer :all]
            )
  (:import (java.io File)))


(def xml-cdashig-scenario-fields-data
  {
   (ds/opt :self) cdashig-scenario-fields-spec
   })

(def xml-cdashig-scenario-fields-spec
  (ds/spec
    {:name ::xml-cdashig-scenario-fields
     :spec xml-cdashig-scenario-fields-data}))

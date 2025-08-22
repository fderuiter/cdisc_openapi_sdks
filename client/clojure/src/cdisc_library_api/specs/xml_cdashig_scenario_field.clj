(ns cdisc-library-api.specs.xml-cdashig-scenario-field
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.cdashig-scenario-field :refer :all]
            )
  (:import (java.io File)))


(def xml-cdashig-scenario-field-data
  {
   (ds/opt :self) cdashig-scenario-field-spec
   })

(def xml-cdashig-scenario-field-spec
  (ds/spec
    {:name ::xml-cdashig-scenario-field
     :spec xml-cdashig-scenario-field-data}))

(ns cdisc-library-api.specs.xml-cdashig-class
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.cdashig-class :refer :all]
            )
  (:import (java.io File)))


(def xml-cdashig-class-data
  {
   (ds/opt :self) cdashig-class-spec
   })

(def xml-cdashig-class-spec
  (ds/spec
    {:name ::xml-cdashig-class
     :spec xml-cdashig-class-data}))

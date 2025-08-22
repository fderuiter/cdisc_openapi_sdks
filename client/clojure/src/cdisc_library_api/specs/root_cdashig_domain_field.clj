(ns cdisc-library-api.specs.root-cdashig-domain-field
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.root-cdashig-domain-field-links :refer :all]
            )
  (:import (java.io File)))


(def root-cdashig-domain-field-data
  {
   (ds/opt :_links) root-cdashig-domain-field-links-spec
   })

(def root-cdashig-domain-field-spec
  (ds/spec
    {:name ::root-cdashig-domain-field
     :spec root-cdashig-domain-field-data}))

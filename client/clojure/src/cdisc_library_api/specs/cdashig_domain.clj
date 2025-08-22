(ns cdisc-library-api.specs.cdashig-domain
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.cdashig-domain-links :refer :all]
            [cdisc-library-api.specs.cdashig-domain-field :refer :all]
            )
  (:import (java.io File)))


(def cdashig-domain-data
  {
   (ds/opt :ordinal) string?
   (ds/opt :name) string?
   (ds/opt :label) string?
   (ds/opt :_links) cdashig-domain-links-spec
   (ds/opt :fields) (s/coll-of cdashig-domain-field-spec)
   })

(def cdashig-domain-spec
  (ds/spec
    {:name ::cdashig-domain
     :spec cdashig-domain-data}))

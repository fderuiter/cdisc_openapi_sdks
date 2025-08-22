(ns cdisc-library-api.specs.cdashig-class-domains
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.cdashig-class-domains-links :refer :all]
            )
  (:import (java.io File)))


(def cdashig-class-domains-data
  {
   (ds/opt :ordinal) string?
   (ds/opt :name) string?
   (ds/opt :label) string?
   (ds/opt :description) string?
   (ds/opt :_links) cdashig-class-domains-links-spec
   })

(def cdashig-class-domains-spec
  (ds/spec
    {:name ::cdashig-class-domains
     :spec cdashig-class-domains-data}))

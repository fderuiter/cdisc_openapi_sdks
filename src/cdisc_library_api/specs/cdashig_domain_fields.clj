(ns cdisc-library-api.specs.cdashig-domain-fields
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.cdashig-domain-fields-links :refer :all]
            )
  (:import (java.io File)))


(def cdashig-domain-fields-data
  {
   (ds/opt :ordinal) string?
   (ds/opt :name) string?
   (ds/opt :label) string?
   (ds/opt :_links) cdashig-domain-fields-links-spec
   })

(def cdashig-domain-fields-spec
  (ds/spec
    {:name ::cdashig-domain-fields
     :spec cdashig-domain-fields-data}))

(ns cdisc-library-api.specs.cdashig-domain-field
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.cdashig-domain-field-links :refer :all]
            )
  (:import (java.io File)))


(def cdashig-domain-field-data
  {
   (ds/opt :ordinal) string?
   (ds/opt :name) string?
   (ds/opt :label) string?
   (ds/opt :definition) string?
   (ds/opt :questionText) string?
   (ds/opt :prompt) string?
   (ds/opt :completionInstructions) string?
   (ds/opt :implementationNotes) string?
   (ds/opt :simpleDatatype) string?
   (ds/opt :mappingInstructions) string?
   (ds/opt :core) string?
   (ds/opt :_links) cdashig-domain-field-links-spec
   })

(def cdashig-domain-field-spec
  (ds/spec
    {:name ::cdashig-domain-field
     :spec cdashig-domain-field-data}))

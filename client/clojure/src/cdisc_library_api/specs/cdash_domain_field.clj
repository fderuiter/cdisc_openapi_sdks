(ns cdisc-library-api.specs.cdash-domain-field
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.cdash-domain-field-links :refer :all]
            )
  (:import (java.io File)))


(def cdash-domain-field-data
  {
   (ds/opt :ordinal) string?
   (ds/opt :name) string?
   (ds/opt :label) string?
   (ds/opt :definition) string?
   (ds/opt :domainSpecific) string?
   (ds/opt :questionText) string?
   (ds/opt :prompt) string?
   (ds/opt :simpleDatatype) string?
   (ds/opt :implementationNotes) string?
   (ds/opt :mappingInstructions) string?
   (ds/opt :_links) cdash-domain-field-links-spec
   })

(def cdash-domain-field-spec
  (ds/spec
    {:name ::cdash-domain-field
     :spec cdash-domain-field-data}))

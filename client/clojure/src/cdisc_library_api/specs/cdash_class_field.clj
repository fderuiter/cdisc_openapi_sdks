(ns cdisc-library-api.specs.cdash-class-field
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.cdash-class-field-links :refer :all]
            )
  (:import (java.io File)))


(def cdash-class-field-data
  {
   (ds/opt :ordinal) string?
   (ds/opt :name) string?
   (ds/opt :label) string?
   (ds/opt :definition) string?
   (ds/opt :questionText) string?
   (ds/opt :prompt) string?
   (ds/opt :simpleDatatype) string?
   (ds/opt :implementationNotes) string?
   (ds/opt :mappingInstructions) string?
   (ds/opt :_links) cdash-class-field-links-spec
   })

(def cdash-class-field-spec
  (ds/spec
    {:name ::cdash-class-field
     :spec cdash-class-field-data}))

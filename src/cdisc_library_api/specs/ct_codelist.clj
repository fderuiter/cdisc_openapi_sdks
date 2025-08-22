(ns cdisc-library-api.specs.ct-codelist
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.ct-codelist-links :refer :all]
            [cdisc-library-api.specs.ct-package-term :refer :all]
            )
  (:import (java.io File)))


(def ct-codelist-data
  {
   (ds/opt :conceptId) string?
   (ds/opt :extensible) string?
   (ds/opt :name) string?
   (ds/opt :submissionValue) string?
   (ds/opt :definition) string?
   (ds/opt :preferredTerm) string?
   (ds/opt :synonyms) (s/coll-of string?)
   (ds/opt :_links) ct-codelist-links-spec
   (ds/opt :terms) (s/coll-of ct-package-term-spec)
   })

(def ct-codelist-spec
  (ds/spec
    {:name ::ct-codelist
     :spec ct-codelist-data}))

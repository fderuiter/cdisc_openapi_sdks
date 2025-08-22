(ns cdisc-library-api.specs.ct-codelist-terms
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.ct-codelist-terms-links :refer :all]
            )
  (:import (java.io File)))


(def ct-codelist-terms-data
  {
   (ds/opt :conceptId) string?
   (ds/opt :extensible) string?
   (ds/opt :name) string?
   (ds/opt :submissionValue) string?
   (ds/opt :definition) string?
   (ds/opt :preferredTerm) string?
   (ds/opt :synonyms) (s/coll-of string?)
   (ds/opt :_links) ct-codelist-terms-links-spec
   })

(def ct-codelist-terms-spec
  (ds/spec
    {:name ::ct-codelist-terms
     :spec ct-codelist-terms-data}))

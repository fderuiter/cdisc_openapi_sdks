(ns cdisc-library-api.specs.ct-term
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.ct-term-links :refer :all]
            )
  (:import (java.io File)))


(def ct-term-data
  {
   (ds/opt :conceptId) string?
   (ds/opt :submissionValue) string?
   (ds/opt :definition) string?
   (ds/opt :preferredTerm) string?
   (ds/opt :synonyms) (s/coll-of string?)
   (ds/opt :_links) ct-term-links-spec
   })

(def ct-term-spec
  (ds/spec
    {:name ::ct-term
     :spec ct-term-data}))

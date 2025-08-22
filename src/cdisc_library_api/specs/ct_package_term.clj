(ns cdisc-library-api.specs.ct-package-term
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def ct-package-term-data
  {
   (ds/opt :conceptId) string?
   (ds/opt :submissionValue) string?
   (ds/opt :definition) string?
   (ds/opt :preferredTerm) string?
   (ds/opt :synonyms) (s/coll-of string?)
   })

(def ct-package-term-spec
  (ds/spec
    {:name ::ct-package-term
     :spec ct-package-term-data}))

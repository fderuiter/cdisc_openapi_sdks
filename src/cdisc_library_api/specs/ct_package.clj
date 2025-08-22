(ns cdisc-library-api.specs.ct-package
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.ct-package-links :refer :all]
            [cdisc-library-api.specs.ct-package-codelists :refer :all]
            )
  (:import (java.io File)))


(def ct-package-data
  {
   (ds/opt :name) string?
   (ds/opt :label) string?
   (ds/opt :description) string?
   (ds/opt :source) string?
   (ds/opt :effectiveDate) string?
   (ds/opt :registrationStatus) string?
   (ds/opt :version) string?
   (ds/opt :_links) ct-package-links-spec
   (ds/opt :codelists) (s/coll-of ct-package-codelists-spec)
   })

(def ct-package-spec
  (ds/spec
    {:name ::ct-package
     :spec ct-package-data}))

(ns cdisc-library-api.specs.ct-package-codelists
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.ct-package-codelists-links :refer :all]
            )
  (:import (java.io File)))


(def ct-package-codelists-data
  {
   (ds/opt :name) string?
   (ds/opt :label) string?
   (ds/opt :description) string?
   (ds/opt :source) string?
   (ds/opt :effectiveDate) string?
   (ds/opt :registrationStatus) string?
   (ds/opt :version) string?
   (ds/opt :_links) ct-package-codelists-links-spec
   })

(def ct-package-codelists-spec
  (ds/spec
    {:name ::ct-package-codelists
     :spec ct-package-codelists-data}))

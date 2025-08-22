/*
 * SdtmigClassDatasetsLinks.h
 *
 * 
 */

#ifndef _SdtmigClassDatasetsLinks_H_
#define _SdtmigClassDatasetsLinks_H_


#include <string>
#include "SdtmigClassDatasetsRef.h"
#include "SdtmigDatasetRefElement.h"
#include "SdtmigProductRef.h"
#include <list>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class SdtmigClassDatasetsLinks : public Object {
public:
	/*! \brief Constructor.
	 */
	SdtmigClassDatasetsLinks();
	SdtmigClassDatasetsLinks(char* str);

	/*! \brief Destructor.
	 */
	virtual ~SdtmigClassDatasetsLinks();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	SdtmigClassDatasetsRef getSelf();

	/*! \brief Set 
	 */
	void setSelf(SdtmigClassDatasetsRef  self);
	/*! \brief Get 
	 */
	SdtmigProductRef getParentProduct();

	/*! \brief Set 
	 */
	void setParentProduct(SdtmigProductRef  parentProduct);
	/*! \brief Get 
	 */
	SdtmigClassDatasetsRef getPriorVersion();

	/*! \brief Set 
	 */
	void setPriorVersion(SdtmigClassDatasetsRef  priorVersion);
	/*! \brief Get 
	 */
	std::list<SdtmigDatasetRefElement> getDatasets();

	/*! \brief Set 
	 */
	void setDatasets(std::list <SdtmigDatasetRefElement> datasets);

private:
	SdtmigClassDatasetsRef self;
	SdtmigProductRef parentProduct;
	SdtmigClassDatasetsRef priorVersion;
	std::list <SdtmigDatasetRefElement>datasets;
	void __init();
	void __cleanup();

};
}
}

#endif /* _SdtmigClassDatasetsLinks_H_ */

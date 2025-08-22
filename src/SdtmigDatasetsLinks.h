/*
 * SdtmigDatasetsLinks.h
 *
 * 
 */

#ifndef _SdtmigDatasetsLinks_H_
#define _SdtmigDatasetsLinks_H_


#include <string>
#include "SdtmigDatasetRefElement.h"
#include "SdtmigDatasetsRef.h"
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

class SdtmigDatasetsLinks : public Object {
public:
	/*! \brief Constructor.
	 */
	SdtmigDatasetsLinks();
	SdtmigDatasetsLinks(char* str);

	/*! \brief Destructor.
	 */
	virtual ~SdtmigDatasetsLinks();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	SdtmigDatasetsRef getSelf();

	/*! \brief Set 
	 */
	void setSelf(SdtmigDatasetsRef  self);
	/*! \brief Get 
	 */
	SdtmigProductRef getParentProduct();

	/*! \brief Set 
	 */
	void setParentProduct(SdtmigProductRef  parentProduct);
	/*! \brief Get 
	 */
	SdtmigDatasetsRef getPriorVersion();

	/*! \brief Set 
	 */
	void setPriorVersion(SdtmigDatasetsRef  priorVersion);
	/*! \brief Get 
	 */
	std::list<SdtmigDatasetRefElement> getDatasets();

	/*! \brief Set 
	 */
	void setDatasets(std::list <SdtmigDatasetRefElement> datasets);

private:
	SdtmigDatasetsRef self;
	SdtmigProductRef parentProduct;
	SdtmigDatasetsRef priorVersion;
	std::list <SdtmigDatasetRefElement>datasets;
	void __init();
	void __cleanup();

};
}
}

#endif /* _SdtmigDatasetsLinks_H_ */

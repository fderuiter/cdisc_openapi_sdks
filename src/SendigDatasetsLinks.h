/*
 * SendigDatasetsLinks.h
 *
 * 
 */

#ifndef _SendigDatasetsLinks_H_
#define _SendigDatasetsLinks_H_


#include <string>
#include "SendigDatasetRefElement.h"
#include "SendigDatasetsRef.h"
#include "SendigProductRef.h"
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

class SendigDatasetsLinks : public Object {
public:
	/*! \brief Constructor.
	 */
	SendigDatasetsLinks();
	SendigDatasetsLinks(char* str);

	/*! \brief Destructor.
	 */
	virtual ~SendigDatasetsLinks();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	SendigDatasetsRef getSelf();

	/*! \brief Set 
	 */
	void setSelf(SendigDatasetsRef  self);
	/*! \brief Get 
	 */
	SendigProductRef getParentProduct();

	/*! \brief Set 
	 */
	void setParentProduct(SendigProductRef  parentProduct);
	/*! \brief Get 
	 */
	std::list<SendigDatasetRefElement> getDatasets();

	/*! \brief Set 
	 */
	void setDatasets(std::list <SendigDatasetRefElement> datasets);

private:
	SendigDatasetsRef self;
	SendigProductRef parentProduct;
	std::list <SendigDatasetRefElement>datasets;
	void __init();
	void __cleanup();

};
}
}

#endif /* _SendigDatasetsLinks_H_ */

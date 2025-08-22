/*
 * ProductgroupDataCollection.h
 *
 * 
 */

#ifndef _ProductgroupDataCollection_H_
#define _ProductgroupDataCollection_H_


#include <string>
#include "ProductgroupDataCollectionLinks.h"
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

class ProductgroupDataCollection : public Object {
public:
	/*! \brief Constructor.
	 */
	ProductgroupDataCollection();
	ProductgroupDataCollection(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ProductgroupDataCollection();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	ProductgroupDataCollectionLinks getLinks();

	/*! \brief Set 
	 */
	void setLinks(ProductgroupDataCollectionLinks  _links);

private:
	ProductgroupDataCollectionLinks _links;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ProductgroupDataCollection_H_ */

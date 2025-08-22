/*
 * ProductgroupTerminology.h
 *
 * 
 */

#ifndef _ProductgroupTerminology_H_
#define _ProductgroupTerminology_H_


#include <string>
#include "ProductgroupTerminologyLinks.h"
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

class ProductgroupTerminology : public Object {
public:
	/*! \brief Constructor.
	 */
	ProductgroupTerminology();
	ProductgroupTerminology(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ProductgroupTerminology();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	ProductgroupTerminologyLinks getLinks();

	/*! \brief Set 
	 */
	void setLinks(ProductgroupTerminologyLinks  _links);

private:
	ProductgroupTerminologyLinks _links;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ProductgroupTerminology_H_ */

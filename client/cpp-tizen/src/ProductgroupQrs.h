/*
 * ProductgroupQrs.h
 *
 * 
 */

#ifndef _ProductgroupQrs_H_
#define _ProductgroupQrs_H_


#include <string>
#include "ProductgroupQrsLinks.h"
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

class ProductgroupQrs : public Object {
public:
	/*! \brief Constructor.
	 */
	ProductgroupQrs();
	ProductgroupQrs(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ProductgroupQrs();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	ProductgroupQrsLinks getLinks();

	/*! \brief Set 
	 */
	void setLinks(ProductgroupQrsLinks  _links);

private:
	ProductgroupQrsLinks _links;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ProductgroupQrs_H_ */

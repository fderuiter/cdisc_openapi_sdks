/*
 * ProductgroupDataTabulation.h
 *
 * 
 */

#ifndef _ProductgroupDataTabulation_H_
#define _ProductgroupDataTabulation_H_


#include <string>
#include "ProductgroupDataTabulationLinks.h"
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

class ProductgroupDataTabulation : public Object {
public:
	/*! \brief Constructor.
	 */
	ProductgroupDataTabulation();
	ProductgroupDataTabulation(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ProductgroupDataTabulation();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	ProductgroupDataTabulationLinks getLinks();

	/*! \brief Set 
	 */
	void setLinks(ProductgroupDataTabulationLinks  _links);

private:
	ProductgroupDataTabulationLinks _links;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ProductgroupDataTabulation_H_ */

/*
 * RootCdashDomainField.h
 *
 * 
 */

#ifndef _RootCdashDomainField_H_
#define _RootCdashDomainField_H_


#include <string>
#include "RootCdashDomainFieldLinks.h"
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

class RootCdashDomainField : public Object {
public:
	/*! \brief Constructor.
	 */
	RootCdashDomainField();
	RootCdashDomainField(char* str);

	/*! \brief Destructor.
	 */
	virtual ~RootCdashDomainField();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	RootCdashDomainFieldLinks getLinks();

	/*! \brief Set 
	 */
	void setLinks(RootCdashDomainFieldLinks  _links);

private:
	RootCdashDomainFieldLinks _links;
	void __init();
	void __cleanup();

};
}
}

#endif /* _RootCdashDomainField_H_ */

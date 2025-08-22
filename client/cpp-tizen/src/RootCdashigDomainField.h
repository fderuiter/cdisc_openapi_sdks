/*
 * RootCdashigDomainField.h
 *
 * 
 */

#ifndef _RootCdashigDomainField_H_
#define _RootCdashigDomainField_H_


#include <string>
#include "RootCdashigDomainFieldLinks.h"
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

class RootCdashigDomainField : public Object {
public:
	/*! \brief Constructor.
	 */
	RootCdashigDomainField();
	RootCdashigDomainField(char* str);

	/*! \brief Destructor.
	 */
	virtual ~RootCdashigDomainField();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	RootCdashigDomainFieldLinks getLinks();

	/*! \brief Set 
	 */
	void setLinks(RootCdashigDomainFieldLinks  _links);

private:
	RootCdashigDomainFieldLinks _links;
	void __init();
	void __cleanup();

};
}
}

#endif /* _RootCdashigDomainField_H_ */

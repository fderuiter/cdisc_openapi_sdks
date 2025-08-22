/*
 * RootCdashClassField.h
 *
 * 
 */

#ifndef _RootCdashClassField_H_
#define _RootCdashClassField_H_


#include <string>
#include "RootCdashClassFieldLinks.h"
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

class RootCdashClassField : public Object {
public:
	/*! \brief Constructor.
	 */
	RootCdashClassField();
	RootCdashClassField(char* str);

	/*! \brief Destructor.
	 */
	virtual ~RootCdashClassField();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	RootCdashClassFieldLinks getLinks();

	/*! \brief Set 
	 */
	void setLinks(RootCdashClassFieldLinks  _links);

private:
	RootCdashClassFieldLinks _links;
	void __init();
	void __cleanup();

};
}
}

#endif /* _RootCdashClassField_H_ */

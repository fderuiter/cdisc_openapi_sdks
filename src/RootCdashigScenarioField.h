/*
 * RootCdashigScenarioField.h
 *
 * 
 */

#ifndef _RootCdashigScenarioField_H_
#define _RootCdashigScenarioField_H_


#include <string>
#include "RootCdashigScenarioFieldLinks.h"
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

class RootCdashigScenarioField : public Object {
public:
	/*! \brief Constructor.
	 */
	RootCdashigScenarioField();
	RootCdashigScenarioField(char* str);

	/*! \brief Destructor.
	 */
	virtual ~RootCdashigScenarioField();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	RootCdashigScenarioFieldLinks getLinks();

	/*! \brief Set 
	 */
	void setLinks(RootCdashigScenarioFieldLinks  _links);

private:
	RootCdashigScenarioFieldLinks _links;
	void __init();
	void __cleanup();

};
}
}

#endif /* _RootCdashigScenarioField_H_ */

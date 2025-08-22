/*
 * XmlRootCdashigScenarioField.h
 *
 * 
 */

#ifndef _XmlRootCdashigScenarioField_H_
#define _XmlRootCdashigScenarioField_H_


#include <string>
#include "RootCdashigScenarioField.h"
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

class XmlRootCdashigScenarioField : public Object {
public:
	/*! \brief Constructor.
	 */
	XmlRootCdashigScenarioField();
	XmlRootCdashigScenarioField(char* str);

	/*! \brief Destructor.
	 */
	virtual ~XmlRootCdashigScenarioField();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	RootCdashigScenarioField getSelf();

	/*! \brief Set 
	 */
	void setSelf(RootCdashigScenarioField  self);

private:
	RootCdashigScenarioField self;
	void __init();
	void __cleanup();

};
}
}

#endif /* _XmlRootCdashigScenarioField_H_ */

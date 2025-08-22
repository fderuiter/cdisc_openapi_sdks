/*
 * XmlCdashigScenarioField.h
 *
 * 
 */

#ifndef _XmlCdashigScenarioField_H_
#define _XmlCdashigScenarioField_H_


#include <string>
#include "CdashigScenarioField.h"
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

class XmlCdashigScenarioField : public Object {
public:
	/*! \brief Constructor.
	 */
	XmlCdashigScenarioField();
	XmlCdashigScenarioField(char* str);

	/*! \brief Destructor.
	 */
	virtual ~XmlCdashigScenarioField();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	CdashigScenarioField getSelf();

	/*! \brief Set 
	 */
	void setSelf(CdashigScenarioField  self);

private:
	CdashigScenarioField self;
	void __init();
	void __cleanup();

};
}
}

#endif /* _XmlCdashigScenarioField_H_ */

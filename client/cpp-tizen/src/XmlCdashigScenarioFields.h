/*
 * XmlCdashigScenarioFields.h
 *
 * 
 */

#ifndef _XmlCdashigScenarioFields_H_
#define _XmlCdashigScenarioFields_H_


#include <string>
#include "CdashigScenarioFields.h"
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

class XmlCdashigScenarioFields : public Object {
public:
	/*! \brief Constructor.
	 */
	XmlCdashigScenarioFields();
	XmlCdashigScenarioFields(char* str);

	/*! \brief Destructor.
	 */
	virtual ~XmlCdashigScenarioFields();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	CdashigScenarioFields getSelf();

	/*! \brief Set 
	 */
	void setSelf(CdashigScenarioFields  self);

private:
	CdashigScenarioFields self;
	void __init();
	void __cleanup();

};
}
}

#endif /* _XmlCdashigScenarioFields_H_ */

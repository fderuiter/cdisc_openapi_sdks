/*
 * XmlCdashigClassScenarios.h
 *
 * 
 */

#ifndef _XmlCdashigClassScenarios_H_
#define _XmlCdashigClassScenarios_H_


#include <string>
#include "CdashigClassScenarios.h"
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

class XmlCdashigClassScenarios : public Object {
public:
	/*! \brief Constructor.
	 */
	XmlCdashigClassScenarios();
	XmlCdashigClassScenarios(char* str);

	/*! \brief Destructor.
	 */
	virtual ~XmlCdashigClassScenarios();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	CdashigClassScenarios getSelf();

	/*! \brief Set 
	 */
	void setSelf(CdashigClassScenarios  self);

private:
	CdashigClassScenarios self;
	void __init();
	void __cleanup();

};
}
}

#endif /* _XmlCdashigClassScenarios_H_ */

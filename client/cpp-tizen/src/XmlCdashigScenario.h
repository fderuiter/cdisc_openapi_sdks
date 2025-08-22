/*
 * XmlCdashigScenario.h
 *
 * 
 */

#ifndef _XmlCdashigScenario_H_
#define _XmlCdashigScenario_H_


#include <string>
#include "CdashigScenario.h"
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

class XmlCdashigScenario : public Object {
public:
	/*! \brief Constructor.
	 */
	XmlCdashigScenario();
	XmlCdashigScenario(char* str);

	/*! \brief Destructor.
	 */
	virtual ~XmlCdashigScenario();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	CdashigScenario getSelf();

	/*! \brief Set 
	 */
	void setSelf(CdashigScenario  self);

private:
	CdashigScenario self;
	void __init();
	void __cleanup();

};
}
}

#endif /* _XmlCdashigScenario_H_ */

/*
 * XmlCdashigProductScenarios.h
 *
 * 
 */

#ifndef _XmlCdashigProductScenarios_H_
#define _XmlCdashigProductScenarios_H_


#include <string>
#include "CdashigProductScenarios.h"
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

class XmlCdashigProductScenarios : public Object {
public:
	/*! \brief Constructor.
	 */
	XmlCdashigProductScenarios();
	XmlCdashigProductScenarios(char* str);

	/*! \brief Destructor.
	 */
	virtual ~XmlCdashigProductScenarios();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	CdashigProductScenarios getSelf();

	/*! \brief Set 
	 */
	void setSelf(CdashigProductScenarios  self);

private:
	CdashigProductScenarios self;
	void __init();
	void __cleanup();

};
}
}

#endif /* _XmlCdashigProductScenarios_H_ */

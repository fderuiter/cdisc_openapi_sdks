/*
 * XmlCdashClass.h
 *
 * 
 */

#ifndef _XmlCdashClass_H_
#define _XmlCdashClass_H_


#include <string>
#include "CdashClass.h"
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

class XmlCdashClass : public Object {
public:
	/*! \brief Constructor.
	 */
	XmlCdashClass();
	XmlCdashClass(char* str);

	/*! \brief Destructor.
	 */
	virtual ~XmlCdashClass();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	CdashClass getSelf();

	/*! \brief Set 
	 */
	void setSelf(CdashClass  self);

private:
	CdashClass self;
	void __init();
	void __cleanup();

};
}
}

#endif /* _XmlCdashClass_H_ */

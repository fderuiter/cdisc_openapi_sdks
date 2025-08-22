/*
 * XmlCdashClassField.h
 *
 * 
 */

#ifndef _XmlCdashClassField_H_
#define _XmlCdashClassField_H_


#include <string>
#include "CdashClassField.h"
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

class XmlCdashClassField : public Object {
public:
	/*! \brief Constructor.
	 */
	XmlCdashClassField();
	XmlCdashClassField(char* str);

	/*! \brief Destructor.
	 */
	virtual ~XmlCdashClassField();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	CdashClassField getSelf();

	/*! \brief Set 
	 */
	void setSelf(CdashClassField  self);

private:
	CdashClassField self;
	void __init();
	void __cleanup();

};
}
}

#endif /* _XmlCdashClassField_H_ */

/*
 * XmlSdtmClassDatasets.h
 *
 * 
 */

#ifndef _XmlSdtmClassDatasets_H_
#define _XmlSdtmClassDatasets_H_


#include <string>
#include "SdtmClassDatasets.h"
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

class XmlSdtmClassDatasets : public Object {
public:
	/*! \brief Constructor.
	 */
	XmlSdtmClassDatasets();
	XmlSdtmClassDatasets(char* str);

	/*! \brief Destructor.
	 */
	virtual ~XmlSdtmClassDatasets();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	SdtmClassDatasets getSelf();

	/*! \brief Set 
	 */
	void setSelf(SdtmClassDatasets  self);

private:
	SdtmClassDatasets self;
	void __init();
	void __cleanup();

};
}
}

#endif /* _XmlSdtmClassDatasets_H_ */

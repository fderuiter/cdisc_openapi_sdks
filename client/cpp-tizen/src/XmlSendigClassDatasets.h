/*
 * XmlSendigClassDatasets.h
 *
 * 
 */

#ifndef _XmlSendigClassDatasets_H_
#define _XmlSendigClassDatasets_H_


#include <string>
#include "SendigClassDatasets.h"
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

class XmlSendigClassDatasets : public Object {
public:
	/*! \brief Constructor.
	 */
	XmlSendigClassDatasets();
	XmlSendigClassDatasets(char* str);

	/*! \brief Destructor.
	 */
	virtual ~XmlSendigClassDatasets();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	SendigClassDatasets getSelf();

	/*! \brief Set 
	 */
	void setSelf(SendigClassDatasets  self);

private:
	SendigClassDatasets self;
	void __init();
	void __cleanup();

};
}
}

#endif /* _XmlSendigClassDatasets_H_ */

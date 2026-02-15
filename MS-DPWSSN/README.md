# [MS-DPWSSN]: Devices Profile for Web Services (DPWS): Size Negotiation Extension

Last updated: 4/23/2024

Table of Contents

<details>
<summary>1 Introduction</summary>

- [1 Introduction](#Section_1)
  - [1.1 Glossary](#Section_1.1)
  - [1.2 References](#Section_1.2)
    - [1.2.1 Normative References](#Section_1.2.1)
    - [1.2.2 Informative References](#Section_1.2.2)
  - [1.3 Overview](#Section_1.3)
  - [1.4 Relationship to Other Protocols](#Section_1.4)
  - [1.5 Prerequisites/Preconditions](#Section_1.5)
  - [1.6 Applicability Statement](#Section_1.6)
  - [1.7 Versioning and Capability Negotiation](#Section_1.7)
  - [1.8 Vendor-Extensible Fields](#Section_1.8)
  - [1.9 Standards Assignments](#Section_1.9)
</details>

<details>
<summary>2 Messages</summary>

- [2 Messages](#Section_2)
  - [2.1 Transport](#Section_2.1)
  - [2.2 Common Message Syntax](#Section_2.2)
    - [2.2.1 Namespaces](#Section_2.2.1)
    - [2.2.2 Messages](#Section_2.2.2)
    - [2.2.3 Elements](#Section_2.2.3)
      - [2.2.3.1 lms:LargeMetadataSupport](#Section_2.2.3.1)
    - [2.2.4 Complex Types](#Section_2.2.4)
    - [2.2.5 Simple Types](#Section_2.2.5)
    - [2.2.6 Attributes](#Section_2.2.6)
    - [2.2.7 Groups](#Section_2.2.7)
    - [2.2.8 Attribute Groups](#Section_2.2.8)
</details>

<details>
<summary>3 Protocol Details</summary>

- [3 Protocol Details](#Section_3)
  - [3.1 Server Details](#Section_3.1)
    - [3.1.1 Abstract Data Model](#Section_3.1.1)
    - [3.1.2 Timers](#Section_3.1.2)
    - [3.1.3 Initialization](#Section_3.1.3)
    - [3.1.4 Message Processing Events and Sequencing Rules](#Section_3.1.4)
    - [3.1.5 Timer Events](#Section_3.1.5)
    - [3.1.6 Other Local Events](#Section_3.1.6)
  - [3.2 Client Details](#Section_3.2)
    - [3.2.1 Abstract Data Model](#Section_3.2.1)
    - [3.2.2 Timers](#Section_3.2.2)
    - [3.2.3 Initialization](#Section_3.2.3)
    - [3.2.4 Message Processing Events and Sequencing Rules](#Section_3.2.4)
    - [3.2.5 Timer Events](#Section_3.2.5)
    - [3.2.6 Other Local Events](#Section_3.2.6)
</details>

<details>
<summary>4 Protocol Examples</summary>

- [4 Protocol Examples](#Section_4)
  - [4.1 Request From a Client Using This Protocol Extension](#Section_4.1)
  - [4.2 Request From a Client Without This Protocol Extension](#Section_4.2)
  - [4.3 Response Message from DPWS](#Section_4.3)
  - [4.4 Using the lms:LargeMetadataSupport Element](#Section_4.4)
</details>

<details>
<summary>5 Security</summary>

- [5 Security](#Section_5)
  - [5.1 Security Considerations for Implementers](#Section_5.1)
  - [5.2 Index of Security Parameters](#Section_5.2)
</details>

<details>
<summary>6 Appendix A: Full WSDL</summary>

- [6 Appendix A: Full WSDL](#Section_6)
</details>

<details>
<summary>7 Appendix B: Product Behavior</summary>

- [7 Appendix B: Product Behavior](#Section_7)
</details>

<details>
<summary>8 Change Tracking</summary>

- [8 Change Tracking](#Section_8)
</details>
<a id="Section_1"></a>
# 1 Introduction

This document specifies an extension to the Devices Profile for Web Services (DPWS) to allow the negotiation of message sizes between a client and a service for a specific message transaction. This extension to an existing protocol does not define new operations, but instead defines [**XML Schema**](#gt_xml-schema-xsd) that may be added to existing messages to allow clients and services to properly configure themselves.

Sections 1.5, 1.8, 1.9, 2, and 3 of this specification are normative. All other sections and examples in this specification are informative.

<a id="Section_1.1"></a>
## 1.1 Glossary

This document uses the following terms:

<a id="gt_client"></a>
**client**: The sending endpoint of a web services request message, and receiver of any resulting web services response message.

<a id="gt_device"></a>
**device**: The Devices Profile for Web Services (DPWS) term for a special instance of a service that is discoverable and contains other services with metadata describing those services.

<a id="gt_endpoint"></a>
**endpoint**: In the context of a web service, a network target to which a SOAP message can be addressed. See [[WSADDR]](https://go.microsoft.com/fwlink/?LinkId=113065).

<a id="gt_service"></a>
**service**: The receiving endpoint of a [**web services**](#gt_web-service) request message, and sender of any resulting [**web services**](#gt_web-service) response message.

<a id="gt_soap-action"></a>
**SOAP action**: The HTTP request header field used to indicate the intent of the SOAP request, using a URI value. See [[SOAP1.1]](https://go.microsoft.com/fwlink/?LinkId=90520) section 6.1.1 for more information.

<a id="gt_soap-header"></a>
**SOAP header**: A mechanism for implementing extensions to a [**SOAP message**](#gt_soap-message) in a decentralized manner without prior agreement between the communicating parties. See [[SOAP1.2-1/2007]](https://go.microsoft.com/fwlink/?LinkId=94664) section 5.2 for more information.

<a id="gt_soap-message"></a>
**SOAP message**: An XML document consisting of a mandatory SOAP envelope, an optional [**SOAP header**](#gt_soap-header), and a mandatory SOAP body. See [SOAP1.2-1/2007] section 5 for more information.

<a id="gt_web-service"></a>
**web service**: A unit of application logic that provides data and services to other applications and can be called by using standard Internet transport protocols such as HTTP, Simple Mail Transfer Protocol (SMTP), or File Transfer Protocol (FTP). Web services can perform functions that range from simple requests to complicated business processes.

<a id="gt_web-services-description-language-wsdl"></a>
**Web Services Description Language (WSDL)**: An XML format for describing network services as a set of endpoints that operate on messages that contain either document-oriented or procedure-oriented information. The operations and messages are described abstractly and are bound to a concrete network protocol and message format in order to define an endpoint. Related concrete endpoints are combined into abstract endpoints, which describe a network service. WSDL is extensible, which allows the description of endpoints and their messages regardless of the message formats or network protocols that are used.

<a id="gt_xml-namespace"></a>
**XML namespace**: A collection of names that is used to identify elements, types, and attributes in XML documents identified in a URI reference [[RFC3986]](https://go.microsoft.com/fwlink/?LinkId=90453). A combination of XML namespace and local name allows XML documents to use elements, types, and attributes that have the same names but come from different sources. For more information, see [[XMLNS-2ED]](https://go.microsoft.com/fwlink/?LinkId=90602).

<a id="gt_xml-schema-xsd"></a>
**XML Schema (XSD)**: A language that defines the elements, attributes, namespaces, and data types for XML documents as defined by [[XMLSCHEMA1/2]](https://go.microsoft.com/fwlink/?LinkId=90607) and [[XMLSCHEMA2/2]](https://go.microsoft.com/fwlink/?LinkId=90609) standards. An XML schema uses XML syntax for its language.

**MAY, SHOULD, MUST, SHOULD NOT, MUST NOT:** These terms (in all caps) are used as defined in [[RFC2119]](https://go.microsoft.com/fwlink/?LinkId=90317). All statements of optional behavior use either MAY, SHOULD, or SHOULD NOT.

<a id="Section_1.2"></a>
## 1.2 References

Links to a document in the Microsoft Open Specifications library point to the correct section in the most recently published version of the referenced document. However, because individual documents in the library are not updated at the same time, the section numbers in the documents may not match. You can confirm the correct section numbering by checking the [Errata](https://go.microsoft.com/fwlink/?linkid=850906).

<a id="Section_1.2.1"></a>
### 1.2.1 Normative References

We conduct frequent surveys of the normative references to assure their continued availability. If you have any issue with finding a normative reference, please contact [dochelp@microsoft.com](mailto:dochelp@microsoft.com). We will assist you in finding the relevant information.

[DPWS] Chans, S., Conti, D., Schlimmer, J., et al., "Devices Profile for Web Services", February 2006, [http://specs.xmlsoap.org/ws/2006/02/devprof/devicesprofile.pdf](https://go.microsoft.com/fwlink/?LinkId=127841)

[RFC2119] Bradner, S., "Key words for use in RFCs to Indicate Requirement Levels", BCP 14, RFC 2119, March 1997, [https://www.rfc-editor.org/info/rfc2119](https://go.microsoft.com/fwlink/?LinkId=90317)

[SOAP1.2-1/2003] Gudgin, M., Hadley, M., Mendelsohn, N., et al., "SOAP Version 1.2 Part 1: Messaging Framework", W3C Recommendation, June 2003, [http://www.w3.org/TR/2003/REC-soap12-part1-20030624](https://go.microsoft.com/fwlink/?LinkId=90521)

[WSAddressing] Box, D., et al., "Web Services Addressing (WS-Addressing)", August 2004, [http://www.w3.org/Submission/ws-addressing/](https://go.microsoft.com/fwlink/?LinkId=90575)

[WSDL] Christensen, E., Curbera, F., Meredith, G., and Weerawarana, S., "Web Services Description Language (WSDL) 1.1", W3C Note, March 2001, [https://www.w3.org/TR/2001/NOTE-wsdl-20010315](https://go.microsoft.com/fwlink/?LinkId=90577)

[WSMETA] Ballinger, K., Bissett, B., Box, D., et al., "Web Services Metadata Exchange (WS-MetadataExchange)", Version 1.1, August 2006, [http://specs.xmlsoap.org/ws/2004/09/mex/WS-MetadataExchange.pdf](https://go.microsoft.com/fwlink/?LinkId=127095)

[XMLNS] Bray, T., Hollander, D., Layman, A., et al., Eds., "Namespaces in XML 1.0 (Third Edition)", W3C Recommendation, December 2009, [https://www.w3.org/TR/2009/REC-xml-names-20091208/](https://go.microsoft.com/fwlink/?LinkId=191840)

[XMLSCHEMA1] Thompson, H., Beech, D., Maloney, M., and Mendelsohn, N., Eds., "XML Schema Part 1: Structures", W3C Recommendation, May 2001, [https://www.w3.org/TR/2001/REC-xmlschema-1-20010502/](https://go.microsoft.com/fwlink/?LinkId=90608)

[XMLSCHEMA2] Biron, P.V., Ed. and Malhotra, A., Ed., "XML Schema Part 2: Datatypes", W3C Recommendation, May 2001, [https://www.w3.org/TR/2001/REC-xmlschema-2-20010502/](https://go.microsoft.com/fwlink/?LinkId=90610)

<a id="Section_1.2.2"></a>
### 1.2.2 Informative References

None.

<a id="Section_1.3"></a>
## 1.3 Overview

Devices Profile for Web Services (DPWS) specifies a device friendly, well-structured messaging model providing basic functionality such as discovery of an endpoint, metadata for that endpoint, and request/response messaging. This model is built using core [**Web Services**](#gt_web-service) specifications as building blocks, and assembled with explanatory text. DPWS identifies the roles of [**clients**](#gt_client), which discover device endpoints and communicate with [**devices**](#gt_device) and [**services**](#gt_service); devices, which can be discoverable service endpoints that host other services, and the services hosted within the device. Additionally, DPWS defines metadata for both devices and the service endpoints hosted by devices.

This model maps to the requirements of modern home computers in most cases. Home computers are often set to be discoverable and provide metadata describing themselves and their endpoints (such as file shares) and resources to clients on a network.

DPWS has one key restriction, in that it recommends clients and services limit their messages to 32,767 octets in length (See [[DPWS]](https://go.microsoft.com/fwlink/?LinkId=127841) Appendix I, R0003, and R0026).

Windows leverages the DPWS model for describing home computers and their metadata. In DPWS terminology, a home computer is a device, and services and resources available from the home computer are described by services in metadata.

The metadata provided might be quite large, beyond the size originally envisioned by DPWS for resource constrained devices. This large size is always due to metadata describing resource or [**endpoints**](#gt_endpoint) hosted within the device. This document describes an extension to DPWS that allows a DPWS-based client and service to negotiate a larger acceptable message size.

A client that is capable of accepting large message responses can send a request with the large message support indicator. The service, upon receiving a request, looks for the large message support indicator and:

- If the indicator is present, the service constructs a response which includes all configured metadata and endpoints available from the home computer.
- If the indicator is not present, the service determines what the size of the response will be, and either:
- If the size of the response is less than or equal to the 32,767 octet limit defined in [DPWS], the response is constructed and sent to the client.
- If the size of the response is more than the 32,767 octet limit defined in [DPWS], the response is changed to contain only metadata describing the computer, and is then sent.
The logic in this protocol is structured in this way to help preserve network behavior with clients that do not support the large message support indicator. These clients will still see the existence and basic description of the device, but will not see all of the associated resources and services, as these clients expect services to manage their metadata to within the 32,767 octet limit.

<a id="Section_1.4"></a>
## 1.4 Relationship to Other Protocols

This extension is built on DPWS and relies on DPWS functionality to work. This extension is designed to allow DPWS compliant implementations to negotiate larger message sizes, as supported by standard [**Web Services**](#gt_web-service); that is, normal Web Services not governed by DPWS do not need such a protocol extension.

This extension does not define new [**SOAP messages**](#gt_soap-message) or patterns, but instead defines [**XML Schema**](#gt_xml-schema-xsd) that can be added to existing schema extensibility points.

<a id="Section_1.5"></a>
## 1.5 Prerequisites/Preconditions

Both the [**client**](#gt_client) and the device in this exchange must be DPWS compliant.

The client must accept [**SOAP messages**](#gt_soap-message) larger than 32,767 octets.

Services must be capable of sending as much data as they can prepare.

<a id="Section_1.6"></a>
## 1.6 Applicability Statement

Use of this protocol is appropriate for [**client**](#gt_client) implementations if:

- The client is a DPWS compliant implementation.
- The client intends to communicate with the DPWS representation of a computer.
- The client supports receiving DPWS response messages larger than 32,767 octets in length.
Use of this protocol is appropriate for service implementations if:

- The service intends to represent itself as a DPWS compliant computer on the network.
- The service supports sending messages larger than 32,767 in length.
<a id="Section_1.7"></a>
## 1.7 Versioning and Capability Negotiation

This protocol extension covers a single version of the extension as specified in section [2.1](#Section_2.1). There are no previous versions. There are no special transport requirements or other restrictions placed on DPWS resulting from use of this extension.

<a id="Section_1.8"></a>
## 1.8 Vendor-Extensible Fields

The schema for this protocol extension does define additional vendor extensions.

<a id="Section_1.9"></a>
## 1.9 Standards Assignments

There are no specific standards assignments for this protocol extension.

<a id="Section_2"></a>
# 2 Messages

<a id="Section_2.1"></a>
## 2.1 Transport

Use of this protocol extension requires support for the underlying specifications:

- [**Clients**](#gt_client) and [**devices**](#gt_device) implementing this protocol extension MUST be compliant with DPWS as specified in [[DPWS]](https://go.microsoft.com/fwlink/?LinkId=127841).
- DPWS-compliant endpoints MUST be fully compatible with the February 2006 revision of DPWS.
DPWS compliance ensures clients and device support the consistent set of protocol versions.

This protocol extension is limited to these existing messages:

- Devices implementing this protocol extension MUST support receiving the extension in the [**SOAP Header**](#gt_soap-header) of a [**SOAP Message**](#gt_soap-message) with the [**SOAP Action**](#gt_soap-action) http://schemas.xmlsoap.org/ws/2004/09/transfer/Get
- Devices implementing this protocol extension MUST support sending a SOAP Message as a response with a length greater than 32,767 octets.
- Clients implementing this protocol extension MUST support sending the extension in the SOAP Header of a SOAP Message with the SOAP Action http://schemas/xmlsoap.org/ws/2004/09/transfer/Get
- Clients implementing this protocol extension MUST support receiving a SOAP Message as a response with a length greater than 32,767 octets.
Not all SOAP implementations properly support SOAP Header extensions. This support is required for use of this extension.

This extension does not define a finite boundary for the size of the SOAP Message response.

<a id="Section_2.2"></a>
## 2.2 Common Message Syntax

This section contains common definitions used by this protocol. The syntax of the definitions uses [**XML Schema**](#gt_xml-schema-xsd) as defined in [[XMLSCHEMA1]](https://go.microsoft.com/fwlink/?LinkId=90608) and [[XMLSCHEMA2]](https://go.microsoft.com/fwlink/?LinkId=90610) and [**Web Services Description Language (WSDL)**](#gt_web-services-description-language-wsdl) as defined in [[WSDL]](https://go.microsoft.com/fwlink/?LinkId=90577).

<a id="Section_2.2.1"></a>
### 2.2.1 Namespaces

This specification defines and references various [**XML namespaces**](#gt_xml-namespace) using the mechanisms specified in [[XMLNS]](https://go.microsoft.com/fwlink/?LinkId=191840). Although this specification associates a specific XML namespace prefix for each XML namespace that is used, the choice of any particular XML namespace prefix is implementation-specific and not significant for interoperability.

| Prefix | Namespace URI | Reference |
| --- | --- | --- |
| s | http://www.w3.org/2003/05/soap-envelope | [[SOAP1.2-1/2003]](https://go.microsoft.com/fwlink/?LinkId=90521) |
| wsa | http://schemas.xmlsoap.org/ws/2004/08/addressing | [[WSAddressing]](https://go.microsoft.com/fwlink/?LinkId=90575) |
| wsx | http://schemas.xmlsoap.org/ws/2004/09/mex | [[WSMETA]](https://go.microsoft.com/fwlink/?LinkId=127095) |
| lms | http://schemas.microsoft.com/windows/dpws/LargeMetadataSupport/2007/08 | This document |

<a id="Section_2.2.2"></a>
### 2.2.2 Messages

This protocol does not define any messages.

<a id="Section_2.2.3"></a>
### 2.2.3 Elements

The following table summarizes the set of common [**XML Schema**](#gt_xml-schema-xsd) element definitions defined by this specification. XML Schema element definitions that are specific to a particular operation are described with the operation.

| Element | Description |
| --- | --- |
| lms:LargeMetadataSupport | Indicator for support of large metadata messages. |

<a id="Section_2.2.3.1"></a>
#### 2.2.3.1 lms:LargeMetadataSupport

The lms:LargeMetadataSupport element is used to indicate client side support for large metadata responses. The normative form for this element is as follows.

<lms:LargeMetadataSupport/>

The element is not extensible and does not support attributes.

The schema for this element is as follows.

<xs:element name='LargeMetadataSupport'>

<xs:complexType>

<xs:sequence />

</xs:complexType>

</xs:element>

This element MUST NOT be used outside of the top level of the [**SOAP header**](#gt_soap-header) in a [**SOAP Message**](#gt_soap-message). If the element is used outside of the top level of the SOAP header where it is defined as semantically meaningful, then it will be ignored. Standard exceptions to this apply (for example, if the header is inserted in a location that violates the schema).This element MUST NOT be used in SOAP headers where the wsa:Action is not http://schemas.xmlsoap.org/ws/2004/09/transfer/Get. If the element is used in a SOAP header when the action is not http://schemas.xmlsoap.org/ws/2004/09/transfer/Get and the service understands the action, then the element will be ignored.

<a id="Section_2.2.4"></a>
### 2.2.4 Complex Types

This specification does not define any common XML Schema complex type definitions.

<a id="Section_2.2.5"></a>
### 2.2.5 Simple Types

This specification does not define any common XML Schema simple type definitions.

<a id="Section_2.2.6"></a>
### 2.2.6 Attributes

This specification does not define any common XML Schema attribute definitions.

<a id="Section_2.2.7"></a>
### 2.2.7 Groups

This specification does not define any common XML Schema group definitions.

<a id="Section_2.2.8"></a>
### 2.2.8 Attribute Groups

This specification does not define any common XML Schema attribute group definitions.

<a id="Section_3"></a>
# 3 Protocol Details

This protocol extension governs the behavior of a [**device's**](#gt_4712ded2-d927-4930-9450-29499f98cef4) use of the data model specified in [[DPWS]](https://go.microsoft.com/fwlink/?LinkId=127841) depending on whether a [**client**](#gt_client) supports large metadata responses.

<a id="Section_3.1"></a>
## 3.1 Server Details

<a id="Section_3.1.1"></a>
### 3.1.1 Abstract Data Model

This protocol extension does not describe a separate data model.

Devices that support this protocol extension MUST support the data model described in [[DPWS]](https://go.microsoft.com/fwlink/?LinkId=127841) section 5.

Data specified in [DPWS] section 5.2 is sent in part or in full depending on [**client**](#gt_client) support for large metadata responses (as indicated by the presence of the <lms:LargeMetadataSupport> element as defined in section [2.2.3.1](#Section_2.2.3.1)) and the size of the metadata response.

<a id="Section_3.1.2"></a>
### 3.1.2 Timers

This protocol extension requires no new timers.

<a id="Section_3.1.3"></a>
### 3.1.3 Initialization

This protocol extension requires no new initialization.

<a id="Section_3.1.4"></a>
### 3.1.4 Message Processing Events and Sequencing Rules

If the data specified in [[DPWS]](https://go.microsoft.com/fwlink/?LinkId=127841) section 5.2 is sent with a full response exceeding 32,767 octets in length and the client supports large metadata responses, the full response

- MUST be compliant with [DPWS] section 3, except R0003 and R0026,
- MUST be compliant with [DPWS] section 5, and
- MUST be sent in its entirety.
If the data specified in [DPWS] section 5.2 is sent in part due to a full response exceeding 32,767 octets in length and the client not supporting large metadata responses, the wsdp:Relationship/wsdp:Host element and its children MUST be included in the response, and the wsdp:Relationship/wsdp:Hosted element MAY be included, to the extent that its inclusion does not cause the response to exceed 32,767 octets in length.

This specification does not define any new [**Web Services Description Language (WSDL)**](#gt_web-services-description-language-wsdl) operations.

<a id="Section_3.1.5"></a>
### 3.1.5 Timer Events

This protocol extension defines no timer events.

<a id="Section_3.1.6"></a>
### 3.1.6 Other Local Events

This protocol extension defines no local events and is not subject to any new local events.

<a id="Section_3.2"></a>
## 3.2 Client Details

<a id="Section_3.2.1"></a>
### 3.2.1 Abstract Data Model

This protocol extension does not describe a separate data model.

Clients that support this protocol extension MUST support the data model described in [[DPWS]](https://go.microsoft.com/fwlink/?LinkId=127841) section 5.

The client side of this protocol extension is simply a pass-through. Calls made by the higher-layer protocol or application are passed directly to the transport, and the results returned by the transport are passed directly back to the higher-layer protocol or application.

Clients supporting large metadata responses MUST include the <lms:LargerMetadataSupport> element as defined in section [2.2.3.1](#Section_2.2.3.1).

<a id="Section_3.2.2"></a>
### 3.2.2 Timers

This protocol extension requires no new timers.

<a id="Section_3.2.3"></a>
### 3.2.3 Initialization

This protocol extension requires no new initialization.

<a id="Section_3.2.4"></a>
### 3.2.4 Message Processing Events and Sequencing Rules

This protocol extension describes no separate message processing events and sequencing rules.

This specification does not define any new [**WSDL**](#gt_web-services-description-language-wsdl) operations.

<a id="Section_3.2.5"></a>
### 3.2.5 Timer Events

This protocol extension defines no timer events.

<a id="Section_3.2.6"></a>
### 3.2.6 Other Local Events

This protocol extension defines no local events and is not subject to any new local events.

<a id="Section_4"></a>
# 4 Protocol Examples

<a id="Section_4.1"></a>
## 4.1 Request From a Client Using This Protocol Extension

The following is an abbreviated example request from a client using this protocol extension:

<s:Envelope …>

<s:Header …>

<wsa:Action>

http://schemas.xmlsoap.org/ws/2004/09/transfer/Get

</wsa:Action>

<wsa:MessageID>xs:anyURI</wsa:MessageID>

<wsa:To>xs:anyURI</wsa:To>

<lms:LargeMetadataSupport/>

</s:Header>

<s:Body/>

</s:Envelope>

<a id="Section_4.2"></a>
## 4.2 Request From a Client Without This Protocol Extension

The following is an abbreviated example request from a client without this protocol extension:

<s:Envelope …>

<s:Header …>

<wsa:Action>

http://schemas.xmlsoap.org/ws/2004/09/transfer/Get

</wsa:Action>

<wsa:MessageID>xs:anyURI</wsa:MessageID>

<wsa:To>xs:anyURI</wsa:To>

</s:Header>

<s:Body/>

</s:Envelope>

<a id="Section_4.3"></a>
## 4.3 Response Message from DPWS

The following is an abbreviated example response message from DPWS (see [[DPWS]](https://go.microsoft.com/fwlink/?LinkId=127841) section 5.1).

<s:Envelope …>

<s:Header …>

<wsa:Action>

http://schemas.xmlsoap.org/ws/2004/09/transfer/GetResponse

</wsa:Action>

<wsa:RelatesTo>xs:RequestURI</wsa:RelatesTo>

<wsa:MessageID>xs:anyURI</wsa:MessageID>

<wsa:To>http://schemas.xmlsoap.org/ws/2004/08/adressing/role/anonymous</wsa:To>

</s:Header>

<s:Body …>

<wsx:Metadata>

...

</wsx:Metadata>

</s:Body>

</s:Envelope>

<a id="Section_4.4"></a>
## 4.4 Using the lms:LargeMetadataSupport Element

A usage example of the lms:LargeMetadataSupport element is as follows.

<s:Envelope …>

<s:Header …>

<wsa:Action>

http://schemas.xmlsoap.org/ws/2004/09/transfer/Get

</wsa:Action>

<wsa:MessageID>xs:anyURI</wsa:MessageID>

<wsa:To>xs:anyURI</wsa:To>

<lms:LargeMetadataSupport/>

</s:Header>

<s:Body ...>

...

</s:Body>

</s:Envelope>

<a id="Section_5"></a>
# 5 Security

<a id="Section_5.1"></a>
## 5.1 Security Considerations for Implementers

Clients indicating they support large metadata response can use this in a DDoS attack on [**services**](#gt_service) . The nature of the attack is to have a large number of distributed clients issue requests indicating they support large responses. Assuming TCP is in use, the clients would then slow their processing of data and cause TCP backoffs to slow data transmission to 100 bytes/second. The large number of clients would result in a significant number of active connections and potentially a large amount of in memory state on the service. It is not clear that this attack is significantly more damaging than having the clients aggressively download, which would instead exhaust bandwidth but would have similar external consequences.

Similarly, clients indicating they support large metadata responses can end up receiving a large response at a very slow rate, and might be impacted by the same in-memory state concerns as services.

<a id="Section_5.2"></a>
## 5.2 Index of Security Parameters

There are no security parameters for this protocol extension.

<a id="Section_6"></a>
# 6 Appendix A: Full WSDL

This protocol extension does not define a [**WSDL**](#gt_web-services-description-language-wsdl). It extends the WSDL defined and referenced by [[DPWS]](https://go.microsoft.com/fwlink/?LinkId=127841). The following XSD contains a definition of the lms:LargeMetadataSupport element (section [2.2.3.1](#Section_2.2.3.1)).

<?xml version="1.0" encoding="UTF-8"?>

<xs:schema

targetNamespace="http://schemas.microsoft.com/windows/dpws/LargeMetadataSupport/2007/08"

xmlns:lms="http://schemas.microsoft.com/windows/dpws/LargeMetadataSupport/2007/08" xmlns:xs="http://www.w3.org/2001/XMLSchema" elementFormDefault="qualified">

<xs:element name='LargeMetadataSupport'>

<xs:complexType>

<xs:sequence />

</xs:complexType>

</xs:element>

</xs:schema>

<a id="Section_7"></a>
# 7 Appendix B: Product Behavior

The information in this specification is applicable to the following Microsoft products or supplemental software. References to product versions include updates to those products.

- Windows 7 operating system
- Windows Server 2008 R2 operating system
- Windows 8 operating system
- Windows Server 2012 operating system
- Windows 8.1 operating system
- Windows Server 2012 R2 operating system
- Windows 10 operating system
- Windows Server 2016 operating system
- Windows Server operating system
- Windows Server 2019 operating system
- Windows Server 2022 operating system
- Windows 11 operating system
- Windows Server 2025 operating system
Exceptions, if any, are noted in this section. If an update version, service pack or Knowledge Base (KB) number appears with a product name, the behavior changed in that update. The new behavior also applies to subsequent updates unless otherwise specified. If a product edition appears with the product version, behavior is different in that product edition.

Unless otherwise specified, any statement of optional behavior in this specification that is prescribed using the terms "SHOULD" or "SHOULD NOT" implies product behavior in accordance with the SHOULD or SHOULD NOT prescription. Unless otherwise specified, the term "MAY" implies that the product does not follow the prescription.

<a id="Section_8"></a>
# 8 Change Tracking

This section identifies changes that were made to this document since the last release. Changes are classified as Major, Minor, or None.

The revision class **Major** means that the technical content in the document was significantly revised. Major changes affect protocol interoperability or implementation. Examples of major changes are:

- A document revision that incorporates changes to interoperability requirements.
- A document revision that captures changes to protocol functionality.
The revision class **Minor** means that the meaning of the technical content was clarified. Minor changes do not affect protocol interoperability or implementation. Examples of minor changes are updates to clarify ambiguity at the sentence, paragraph, or table level.

The revision class **None** means that no new technical changes were introduced. Minor editorial and formatting changes may have been made, but the relevant technical content is identical to the last released version.

The changes made to this document are listed in the following table. For more information, please contact [dochelp@microsoft.com](mailto:dochelp@microsoft.com).

| Section | Description | Revision class |
| --- | --- | --- |
| [7](#Section_7) Appendix B: Product Behavior | Added Windows Server 2025 to the list of applicable products. | Major |


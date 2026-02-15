# [MS-WSDS]: WS-Enumeration: Directory Services Protocol Extensions

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
    - [2.2.4 Complex Types](#Section_2.2.4)
    - [2.2.5 Simple Types](#Section_2.2.5)
    - [2.2.6 Attributes](#Section_2.2.6)
    - [2.2.7 Groups](#Section_2.2.7)
    - [2.2.8 Attribute Groups](#Section_2.2.8)
  - [2.3 Directory Service Schema Elements](#Section_2.3)
</details>

<details>
<summary>3 Protocol Details</summary>

- [3 Protocol Details](#Section_3)
  - [3.1 Enumeration Server Details](#Section_3.1)
    - [3.1.1 Abstract Data Model](#Section_3.1.1)
    - [3.1.2 Timers](#Section_3.1.2)
    - [3.1.3 Initialization](#Section_3.1.3)
    - [3.1.4 Message Processing Events and Sequencing Rules](#Section_3.1.4)
      - [3.1.4.1 wsen:Enumerate](#Section_3.1.4.1)
        - [3.1.4.1.1 Elements](#Section_3.1.4.1.1)
          - [3.1.4.1.1.1 adlq:LdapQuery](#Section_3.1.4.1.1.1)
            - [3.1.4.1.1.1.1 adlq:filter](#Section_3.1.4.1.1.1.1)
            - [3.1.4.1.1.1.2 adlq:BaseObject](#Section_3.1.4.1.1.1.2)
            - [3.1.4.1.1.1.3 adlq:Scope](#Section_3.1.4.1.1.1.3)
          - [3.1.4.1.1.2 ad:Selection](#Section_3.1.4.1.1.2)
            - [3.1.4.1.1.2.1 ad:SelectionProperty](#Section_3.1.4.1.1.2.1)
          - [3.1.4.1.1.3 ad:Sorting](#Section_3.1.4.1.1.3)
            - [3.1.4.1.1.3.1 ad:SortingProperty](#Section_3.1.4.1.1.3.1)
        - [3.1.4.1.2 Attributes](#Section_3.1.4.1.2)
          - [3.1.4.1.2.1 ad:Selection/@Dialect](#Section_3.1.4.1.2.1)
          - [3.1.4.1.2.2 ad:Sorting/@Dialect](#Section_3.1.4.1.2.2)
          - [3.1.4.1.2.3 ad:Sorting/ad:SortingProperty/@Ascending](#Section_3.1.4.1.2.3)
        - [3.1.4.1.3 SOAP Faults](#Section_3.1.4.1.3)
          - [3.1.4.1.3.1 ad:EnumerationContextLimitExceeded](#Section_3.1.4.1.3.1)
          - [3.1.4.1.3.2 ad:UnsupportedSelectOrSortDialectFault](#Section_3.1.4.1.3.2)
          - [3.1.4.1.3.3 ad:InvalidPropertyFault](#Section_3.1.4.1.3.3)
          - [3.1.4.1.3.4 ad:InvalidSortKey](#Section_3.1.4.1.3.4)
          - [3.1.4.1.3.5 wsen:CannotProcessFilter](#Section_3.1.4.1.3.5)
          - [3.1.4.1.3.6 wsa2004:EndPointUnavailable](#Section_3.1.4.1.3.6)
      - [3.1.4.2 wsen:Pull](#Section_3.1.4.2)
        - [3.1.4.2.1 SOAP Faults](#Section_3.1.4.2.1)
          - [3.1.4.2.1.1 ad:MaxCharsNotSupported](#Section_3.1.4.2.1.1)
          - [3.1.4.2.1.2 wsen:InvalidEnumerationContext](#Section_3.1.4.2.1.2)
          - [3.1.4.2.1.3 wsa2004:DestinationUnreachable](#Section_3.1.4.2.1.3)
          - [3.1.4.2.1.4 wsa2004:EndpointUnavailable](#Section_3.1.4.2.1.4)
          - [3.1.4.2.1.5 ad:MaxTimeExceedsLimit](#Section_3.1.4.2.1.5)
      - [3.1.4.3 wsen:Renew](#Section_3.1.4.3)
        - [3.1.4.3.1 SOAP faults](#Section_3.1.4.3.1)
          - [3.1.4.3.1.1 wsen:InvalidEnumerationContext](#Section_3.1.4.3.1.1)
          - [3.1.4.3.1.2 wsa2004:EndpointUnavailable](#Section_3.1.4.3.1.2)
      - [3.1.4.4 wsen:GetStatus](#Section_3.1.4.4)
        - [3.1.4.4.1 SOAP Faults](#Section_3.1.4.4.1)
          - [3.1.4.4.1.1 wsen:InvalidEnumerationContext](#Section_3.1.4.4.1.1)
          - [3.1.4.4.1.2 wsa2004:EndpointUnavailable](#Section_3.1.4.4.1.2)
      - [3.1.4.5 wsen:Release](#Section_3.1.4.5)
        - [3.1.4.5.1 SOAP Faults](#Section_3.1.4.5.1)
          - [3.1.4.5.1.1 wsa2004:EndpointUnavailable](#Section_3.1.4.5.1.1)
    - [3.1.5 Timer Events](#Section_3.1.5)
    - [3.1.6 Other Local Events](#Section_3.1.6)
</details>

<details>
<summary>4 Protocol Examples</summary>

- [4 Protocol Examples](#Section_4)
  - [4.1 WS-Enumerate Directory Services Extension "Enumerate" Request Example](#Section_4.1)
  - [4.2 WS-Enumerate Directory Services Extension "Enumerate" Response Example](#Section_4.2)
  - [4.3 WS-Enumerate Directory Services Extension "Pull" Request Example](#Section_4.3)
  - [4.4 WS-Enumerate Directory Services Extension "Pull" Response Example](#Section_4.4)
  - [4.5 WS-Enumerate Directory Services Extension "FaultDetail" Example](#Section_4.5)
</details>

<details>
<summary>5 Security</summary>

- [5 Security](#Section_5)
  - [5.1 Security Considerations for Implementers](#Section_5.1)
  - [5.2 Index of Security Parameters](#Section_5.2)
</details>

<details>
<summary>6 Appendix A: WSDL</summary>

- [6 Appendix A: WSDL](#Section_6)
</details>

<details>
<summary>7 Appendix B: Schema</summary>

- [7 Appendix B: Schema](#Section_7)
</details>

<details>
<summary>8 Appendix C: Product Behavior</summary>

- [8 Appendix C: Product Behavior](#Section_8)
</details>

<details>
<summary>9 Change Tracking</summary>

- [9 Change Tracking](#Section_9)
</details>
<a id="Section_1"></a>
# 1 Introduction

The WS-Enumeration Directory Services Protocol Extensions are a set of extensions to the Web Services Enumeration (WS-Enumeration) [[WSENUM]](https://go.microsoft.com/fwlink/?LinkId=90580) protocol for facilitating SOAP-based search operations against directory servers. This protocol makes it easy for client applications that currently use non-Web services protocols, such as [**Lightweight Directory Access Protocol (LDAP)**](#gt_lightweight-directory-access-protocol-ldap) version 3 [[RFC2251]](https://go.microsoft.com/fwlink/?LinkId=90325), to instead use Web service protocols for such operations.

The extensions to the SOAP-based Enumeration protocol specify dialect for expressing the search filter for an enumeration. It also provide a means of requesting and receiving selected fragments of resultant objects in the context of a specific enumeration and an additional set of [**SOAP faults**](#gt_soap-fault) for various WS-Enumeration [WSENUM] operations.

Sections 1.5, 1.8, 1.9, 2, and 3 of this specification are normative. All other sections and examples in this specification are informative.

<a id="Section_1.1"></a>
## 1.1 Glossary

This document uses the following terms:

<a id="gt_active-directory-web-services-adws"></a>
**Active Directory Web Services (ADWS)**: Provides a web service interface to Active Directory Domain Services (AD DS) and Active Directory Lightweight Directory Services (AD LDS) instances.

<a id="gt_constructed-attribute"></a>
**constructed attribute**: An attribute whose values are computed from normal attributes (for read) and/or have effects on the values of normal attributes (for write).

<a id="gt_default-attribute"></a>
**default attribute**: An attribute of an object that is not a [**constructed attribute**](#gt_constructed-attribute).

<a id="gt_directory-attribute"></a>
**directory attribute**: An identifier for a single-valued or multi-valued data element that is associated with a [**directory object**](#gt_directory-object).

<a id="gt_directory-object"></a>
**directory object**: A [**Lightweight Directory Access Protocol (LDAP)**](#gt_lightweight-directory-access-protocol-ldap) object, as specified in [[RFC2251]](https://go.microsoft.com/fwlink/?LinkId=90325), that is a specialization of an object.

<a id="gt_endpoint"></a>
**endpoint**: In the context of a web service, a network target to which a SOAP message can be addressed. See [[WSADDR]](https://go.microsoft.com/fwlink/?LinkId=113065).

<a id="gt_enumeration-context"></a>
**enumeration context**: A session context that represents a specific traversal through a logical sequence of XML element information items using the Pull operation defined in WS-Enumeration specification. See [[WSENUM]](https://go.microsoft.com/fwlink/?LinkId=90580).

<a id="gt_globally-unique-identifier-guid"></a>
**globally unique identifier (GUID)**: A term used interchangeably with universally unique identifier (UUID) in Microsoft protocol technical documents (TDs). Interchanging the usage of these terms does not imply or require a specific algorithm or mechanism to generate the value. Specifically, the use of this term does not imply or require that the algorithms described in [[RFC4122]](https://go.microsoft.com/fwlink/?LinkId=90460) or [[C706]](https://go.microsoft.com/fwlink/?LinkId=89824) must be used for generating the [**GUID**](#gt_globally-unique-identifier-guid). See also universally unique identifier (UUID).

<a id="gt_lightweight-directory-access-protocol-ldap"></a>
**Lightweight Directory Access Protocol (LDAP)**: The primary access protocol for Active Directory. Lightweight Directory Access Protocol (LDAP) is an industry-standard protocol, established by the Internet Engineering Task Force (IETF), which allows users to query and update information in a directory service (DS), as described in [MS-ADTS](../MS-ADTS/MS-ADTS.md). The Lightweight Directory Access Protocol can be either version 2 [[RFC1777]](https://go.microsoft.com/fwlink/?LinkId=90290) or version 3 [[RFC3377]](https://go.microsoft.com/fwlink/?LinkID=91337).

<a id="gt_object-reference-property"></a>
**object reference property**: In Active Directory Web Services, this is the property that uniquely identifies a [**directory object**](#gt_directory-object). It can be expressed as either a [**GUID**](#gt_globally-unique-identifier-guid) or as a distinguished name.

<a id="gt_requestor"></a>
**requestor**: The client application that is requesting the specific objects from the Web Service.

<a id="gt_schema"></a>
**schema**: The set of attributes and object classes that govern the creation and update of objects.

<a id="gt_security-principal"></a>
**security principal**: A unique entity that is identifiable through cryptographic means by at least one key. It frequently corresponds to a human user, but also can be a service that offers a resource to other security principals. Also referred to as principal.

<a id="gt_session"></a>
**session**: An authenticated communication channel between the client and server correlating a group of messages into a conversation.

<a id="gt_soap-action"></a>
**SOAP action**: The HTTP request header field used to indicate the intent of the SOAP request, using a [**URI**](#gt_uniform-resource-identifier-uri) value. See [[SOAP1.1]](https://go.microsoft.com/fwlink/?LinkId=90520) section 6.1.1 for more information.

<a id="gt_soap-fault"></a>
**SOAP fault**: A container for error and status information within a [**SOAP message**](#gt_soap-message). See [[SOAP1.2-1/2007]](https://go.microsoft.com/fwlink/?LinkId=94664) section 5.4 for more information.

<a id="gt_soap-message"></a>
**SOAP message**: An [**XML**](#gt_xml) document consisting of a mandatory SOAP envelope, an optional SOAP header, and a mandatory SOAP body. See [SOAP1.2-1/2007] section 5 for more information.

<a id="gt_uniform-resource-identifier-uri"></a>
**Uniform Resource Identifier (URI)**: A string that identifies a resource. The URI is an addressing mechanism defined in Internet Engineering Task Force (IETF) Uniform Resource Identifier (URI): Generic Syntax [[RFC3986]](https://go.microsoft.com/fwlink/?LinkId=90453).

<a id="gt_web-services-description-language-wsdl"></a>
**Web Services Description Language (WSDL)**: An XML format for describing network services as a set of endpoints that operate on messages that contain either document-oriented or procedure-oriented information. The operations and messages are described abstractly and are bound to a concrete network protocol and message format in order to define an endpoint. Related concrete endpoints are combined into abstract endpoints, which describe a network service. WSDL is extensible, which allows the description of endpoints and their messages regardless of the message formats or network protocols that are used.

<a id="gt_wsdl-port-type"></a>
**WSDL port type**: A named set of logically-related, abstract [**Web Services Description Language (WSDL)**](#gt_web-services-description-language-wsdl) operations and messages.

<a id="gt_xml"></a>
**XML**: The Extensible Markup Language, as described in [[XML1.0]](https://go.microsoft.com/fwlink/?LinkId=90599).

<a id="gt_xml-namespace"></a>
**XML namespace**: A collection of names that is used to identify elements, types, and attributes in XML documents identified in a URI reference [RFC3986]. A combination of XML namespace and local name allows XML documents to use elements, types, and attributes that have the same names but come from different sources. For more information, see [[XMLNS-2ED]](https://go.microsoft.com/fwlink/?LinkId=90602).

<a id="gt_xml-schema-xsd"></a>
**XML Schema (XSD)**: A language that defines the elements, attributes, namespaces, and data types for [**XML**](#gt_xml) documents as defined by [[XMLSCHEMA1/2]](https://go.microsoft.com/fwlink/?LinkId=90607) and [[XMLSCHEMA2/2]](https://go.microsoft.com/fwlink/?LinkId=90609) standards. An XML schema uses [**XML**](#gt_xml) syntax for its language.

**MAY, SHOULD, MUST, SHOULD NOT, MUST NOT:** These terms (in all caps) are used as defined in [[RFC2119]](https://go.microsoft.com/fwlink/?LinkId=90317). All statements of optional behavior use either MAY, SHOULD, or SHOULD NOT.

<a id="Section_1.2"></a>
## 1.2 References

Links to a document in the Microsoft Open Specifications library point to the correct section in the most recently published version of the referenced document. However, because individual documents in the library are not updated at the same time, the section numbers in the documents may not match. You can confirm the correct section numbering by checking the [Errata](https://go.microsoft.com/fwlink/?linkid=850906).

<a id="Section_1.2.1"></a>
### 1.2.1 Normative References

We conduct frequent surveys of the normative references to assure their continued availability. If you have any issue with finding a normative reference, please contact [dochelp@microsoft.com](mailto:dochelp@microsoft.com). We will assist you in finding the relevant information.

[MS-ADDM] Microsoft Corporation, "[Active Directory Web Services: Data Model and Common Elements](../MS-ADDM/MS-ADDM.md)".

[MS-ADTS] Microsoft Corporation, "[Active Directory Technical Specification](../MS-ADTS/MS-ADTS.md)".

[MS-WSDS] Microsoft Corporation, "[WS-Enumeration: Directory Services Protocol Extensions](#Section_2ded136c2fe24f7d8d09a7118815c6bb)".

[MS-WSPELD] Microsoft Corporation, "[WS-Transfer and WS-Enumeration Protocol Extension for Lightweight Directory Access Protocol v3 Controls](../MS-WSPELD/MS-WSPELD.md)".

[RFC2119] Bradner, S., "Key words for use in RFCs to Indicate Requirement Levels", BCP 14, RFC 2119, March 1997, [https://www.rfc-editor.org/info/rfc2119](https://go.microsoft.com/fwlink/?LinkId=90317)

[RFC2251] Wahl, M., Howes, T., and Kille, S., "Lightweight Directory Access Protocol (v3)", RFC 2251, December 1997, [https://www.rfc-editor.org/info/rfc2251](https://go.microsoft.com/fwlink/?LinkId=90325)

[RFC2254] Howes, T., "The String Representation of LDAP Search Filters", RFC 2254, December 1997, [https://www.rfc-editor.org/info/rfc2254](https://go.microsoft.com/fwlink/?LinkId=90328)

[SOAP1.1] Box, D., Ehnebuske, D., Kakivaya, G., et al., "Simple Object Access Protocol (SOAP) 1.1", W3C Note, May 2000, [https://www.w3.org/TR/2000/NOTE-SOAP-20000508/](https://go.microsoft.com/fwlink/?LinkId=90520)

[SOAP1.2-1/2003] Gudgin, M., Hadley, M., Mendelsohn, N., et al., "SOAP Version 1.2 Part 1: Messaging Framework", W3C Recommendation, June 2003, [http://www.w3.org/TR/2003/REC-soap12-part1-20030624](https://go.microsoft.com/fwlink/?LinkId=90521)

[WSAddressing] Box, D., et al., "Web Services Addressing (WS-Addressing)", August 2004, [http://www.w3.org/Submission/ws-addressing/](https://go.microsoft.com/fwlink/?LinkId=90575)

[WSADDR] Gudgin, M., Hadley, M., and Rogers, T., "Web Services Addressing (WS-Addressing) 1.0", W3C Recommendation, May 2006, [http://www.w3.org/2005/08/addressing](https://go.microsoft.com/fwlink/?LinkId=113065)

[WSASB] Gudgin, M., Hadley, M., and Rogers, T., Eds., "Web Services Addressing 1.0 - SOAP Binding", W3C Recommendation, May 2006, [http://www.w3.org/TR/2006/REC-ws-addr-soap-20060509/](https://go.microsoft.com/fwlink/?LinkId=120449)

[WSDL] Christensen, E., Curbera, F., Meredith, G., and Weerawarana, S., "Web Services Description Language (WSDL) 1.1", W3C Note, March 2001, [https://www.w3.org/TR/2001/NOTE-wsdl-20010315](https://go.microsoft.com/fwlink/?LinkId=90577)

[WSENUM] Alexander, J., Box, D., Cabrera, L.F., et al., "Web Services Enumeration (WS-Enumeration)", March 2006, [http://www.w3.org/Submission/2006/SUBM-WS-Enumeration-20060315/](https://go.microsoft.com/fwlink/?LinkId=90580)

[XMLNS-2ED] Bray, T., Hollander, D., Layman, A., and Tobin, R., Eds., "Namespaces in XML 1.0 (Second Edition)", W3C Recommendation, August 2006, [https://www.w3.org/TR/2006/REC-xml-names-20060816/](https://go.microsoft.com/fwlink/?LinkId=90602)

[XMLSCHEMA1] Thompson, H., Beech, D., Maloney, M., and Mendelsohn, N., Eds., "XML Schema Part 1: Structures", W3C Recommendation, May 2001, [https://www.w3.org/TR/2001/REC-xmlschema-1-20010502/](https://go.microsoft.com/fwlink/?LinkId=90608)

[XMLSCHEMA2] Biron, P.V., Ed. and Malhotra, A., Ed., "XML Schema Part 2: Datatypes", W3C Recommendation, May 2001, [https://www.w3.org/TR/2001/REC-xmlschema-2-20010502/](https://go.microsoft.com/fwlink/?LinkId=90610)

<a id="Section_1.2.2"></a>
### 1.2.2 Informative References

[MC-NMF] Microsoft Corporation, "[.NET Message Framing Protocol](../MC-NMF/MC-NMF.md)".

[MSDOCS-ADWS] Microsoft, "What's New in AD DS: Active Directory Web Services", [https://learn.microsoft.com/en-us/previous-versions/windows/it-pro/windows-server-2008-r2-and-2008/dd391908(v%3dws.10)](https://go.microsoft.com/fwlink/?linkid=2110729)

[MSFT-RSAT] Microsoft Corporation, "Remote Server Administration Tools (RSAT) for Windows operating systems", [https://support.microsoft.com/en-us/kb/2693643](https://go.microsoft.com/fwlink/?linkid=839006)

<a id="Section_1.3"></a>
## 1.3 Overview

The WS-Enumeration [[WSENUM]](https://go.microsoft.com/fwlink/?LinkId=90580) specification describes how query operations performed against the directory server in the form of [**SOAP messages**](#gt_soap-message) are initiated using the Enumerate operation. The Enumerate operation creates a new [**enumeration context**](#gt_enumeration-context) for subsequent traversal/retrieval of result items by means of the Pull operation. [MS-WSDS] specifies the query filter language allowed for such enumeration operations.

WS-Enumeration [WSENUM] does not provide an explicit means to specify which fragments of the object to return for a certain enumeration in the Enumerate request. Since directory services like [**Active Directory Web Services (ADWS)**](#gt_active-directory-web-services-adws) use the filter expression to just specify which objects to return, and not what portions of those objects to return, this protocol specifies extensions to the WS-Enumeration [WSENUM] Enumerate operation, providing a means of requesting selected fragments out of the resultant objects. The extensions also include a way to specify which [**directory attribute**](#gt_directory-attribute) the sorting of the resultant objects or their fragments is based on and whether or not the order is ascending.

The specification of WS-Enumeration [WSENUM] provides only a small set of [**SOAP faults**](#gt_soap-fault) for a directory server to return. This set is insufficient for many error conditions that a server could need to report to the client, which forces the server to use its own nonstandard fault codes. This specification extends the WS-Enumeration [WSENUM] set of faults by specifying additional SOAP faults that a server is permitted to return to the client to indicate that an error occurred while processing the request. This improves interoperability between clients and servers by providing a standardized set of errors that both sides of the communications [**session**](#gt_session) can understand. [MS-WSDS] specifies SOAP faults for the Enumerate and Pull operation defined by WS-Enumeration [WSENUM].

<a id="Section_1.4"></a>
## 1.4 Relationship to Other Protocols

[MS-WSDS](#Section_2ded136c2fe24f7d8d09a7118815c6bb) is an extension to the WS-Enumeration [[WSENUM]](https://go.microsoft.com/fwlink/?LinkId=90580) protocol built on top of SOAP [[SOAP1.2-1/2003]](https://go.microsoft.com/fwlink/?LinkId=90521) as shown in the following layering diagram.

| WS-Enumeration Directory Services Protocol Extensions | This extension |
| --- | --- |
| WS-Enumeration | Industry-standard |
| SOAP | Industry-standard |

<a id="Section_1.5"></a>
## 1.5 Prerequisites/Preconditions

This protocol extension does not assume any prerequisites or preconditions.

<a id="Section_1.6"></a>
## 1.6 Applicability Statement

Use of the WS-Enumeration: Directory Services protocol extensions is suitable when searching [**XML**](#gt_xml) representations of [**directory objects**](#gt_directory-object) by means of WS-Enumeration and the granularity of resultant items is required to be lesser than the entire directory object's representation. These extensions cannot be used independently of WS-Enumeration [[WSENUM]](https://go.microsoft.com/fwlink/?LinkId=90580), so they might not be applicable in applications that have already standardized on a protocol other than WS-Enumeration [WSENUM] for querying directory services.

The XPath 1.0-derived selection language, defined in [MS-ADDM](../MS-ADDM/MS-ADDM.md) section 2.4, is used to specify the fragments requested out of the resultant items in the enumerate operation. This is suitable only when the data stored in a directory service could be represented as an XML document.

There is an implicit assumption that the directory service exposes semantics similar to that of a [**Lightweight Directory Access Protocol (LDAP)**](#gt_lightweight-directory-access-protocol-ldap) version 3 directory service [[RFC2251]](https://go.microsoft.com/fwlink/?LinkId=90325) facilitating the use of LdapQuery language for the filter expression in the enumerate request.

<a id="Section_1.7"></a>
## 1.7 Versioning and Capability Negotiation

This document covers versioning issues in the following areas:

- **Supported Transports:** This protocol extension can be implemented using transports that support sending [**SOAP messages**](#gt_soap-message) as described in section [2.1](#Section_2.1).
- **Protocol Versions:** This protocol extension is not versioned.
- **Capability Negotiation:** This protocol does not support capability negotiation.
- **Localization:** This protocol includes text strings in various [**SOAP faults**](#gt_soap-fault). Localization considerations for such strings are specified in section [3.1.4](#Section_3.1.4).
<a id="Section_1.8"></a>
## 1.8 Vendor-Extensible Fields

There are no vendor-extensible fields.

<a id="Section_1.9"></a>
## 1.9 Standards Assignments

There are no standards assignments for this protocol extension.

<a id="Section_2"></a>
# 2 Messages

<a id="Section_2.1"></a>
## 2.1 Transport

[MS-WSDS] imposes no transport requirements or behaviors beyond those of the underlying WS-Enumeration [[WSENUM]](https://go.microsoft.com/fwlink/?LinkId=90580) protocol. WS-Enumeration provides SOAP bindings for both SOAP 1.1 [[SOAP1.1]](https://go.microsoft.com/fwlink/?LinkId=90520) and SOAP 1.2 [[SOAP1.2-1/2003]](https://go.microsoft.com/fwlink/?LinkId=90521). All messages MUST be formatted as specified by either SOAP 1.1 or SOAP 1.2.<1>

<a id="Section_2.2"></a>
## 2.2 Common Message Syntax

This section contains common definitions that are used by this protocol. The syntax of the definitions uses an [**XML Schema**](#gt_xml-schema-xsd), as defined in [[XMLSCHEMA1]](https://go.microsoft.com/fwlink/?LinkId=90608) and [[XMLSCHEMA2]](https://go.microsoft.com/fwlink/?LinkId=90610), and [**Web Services Description Language (WSDL)**](#gt_web-services-description-language-wsdl), as defined in [[WSDL]](https://go.microsoft.com/fwlink/?LinkId=90577).

<a id="Section_2.2.1"></a>
### 2.2.1 Namespaces

This specification defines and references various [**XML namespaces**](#gt_xml-namespace) using the mechanisms specified in [[XMLNS-2ED]](https://go.microsoft.com/fwlink/?LinkId=90602). Although this specification associates a specific XML namespace prefix for each XML namespace that is used, the choice of any particular XML namespace prefix is implementation-specific and not significant for interoperability.

The prefixes and XML namespaces used in this specification include the following.

| Prefix | Namespace URI | Reference |
| --- | --- | --- |
| soapenv: | http://www.w3.org/2003/05/soap-envelope | [[SOAP1.2-1/2003]](https://go.microsoft.com/fwlink/?LinkId=90521) |
| soapenv11: | http://schemas.xmlsoap.org/soap/envelope | [[SOAP1.1]](https://go.microsoft.com/fwlink/?LinkId=90520) |
| wsa: | http://www.w3.org/2005/08/addressing | [[WSADDR]](https://go.microsoft.com/fwlink/?LinkId=113065) |
| wsa2004 | http://schemas.xmlsoap.org/ws/2004/08/addressing | [[WSAddressing]](https://go.microsoft.com/fwlink/?LinkId=90575) |
| wsen: | http://schemas.xmlsoap.org/ws/2004/09/enumeration | [[WSENUM]](https://go.microsoft.com/fwlink/?LinkId=90580) |
| ad: | http://schemas.microsoft.com/2008/1/ActiveDirectory | [MS-ADDM](../MS-ADDM/MS-ADDM.md) |
| addata: | http://schemas.microsoft.com/2008/1/ActiveDirectory/Data | [MS-ADDM] |
| adlq: | http://schemas.microsoft.com/2008/1/ActiveDirectory/Dialect/LdapQuery | The LdapQuery language [**URI**](#gt_uniform-resource-identifier-uri), defined in section [3.1.4.1.1.1](#Section_3.1.4.1.1.1) of this specification |
| xsd: | http://www.w3.org/2001/XMLSchema | [[XMLSCHEMA1]](https://go.microsoft.com/fwlink/?LinkId=90608) |
| xsi: | http://www.w3.org/2001/XMLSchema-instance | [XMLSCHEMA1] |

<a id="Section_2.2.2"></a>
### 2.2.2 Messages

This specification does not define any new messages.

<a id="Section_2.2.3"></a>
### 2.2.3 Elements

This specification does not define any common XML schema element definitions.

<a id="Section_2.2.4"></a>
### 2.2.4 Complex Types

This specification does not define any common XML schema complex type definitions.

<a id="Section_2.2.5"></a>
### 2.2.5 Simple Types

This specification does not define any common XML schema simple type definitions.

<a id="Section_2.2.6"></a>
### 2.2.6 Attributes

This specification does not define any common XML schema attribute definitions.

<a id="Section_2.2.7"></a>
### 2.2.7 Groups

This specification does not define any common XML schema group definitions.

<a id="Section_2.2.8"></a>
### 2.2.8 Attribute Groups

This specification does not define any common XML schema attribute group definitions.

<a id="Section_2.3"></a>
## 2.3 Directory Service Schema Elements

This specification does not make use of any directory service [**schema**](#gt_schema) elements.

<a id="Section_3"></a>
# 3 Protocol Details

The WS-Enumeration: Directory Services Protocol Extensions [MS-WSDS] extend how the WS-Enumeration [[WSENUM]](https://go.microsoft.com/fwlink/?LinkId=90580) protocol operates between an application and a directory server. The [**requestor**](#gt_requestor) that is the client for the protocol sends a [**SOAP message**](#gt_soap-message) containing a request of an Enumerate, Pull, Renew, GetStatus or Release operation to the server, and the server responds with a SOAP message, containing the response, or a [**SOAP fault**](#gt_soap-fault), if an error occurred during server processing.<2>

The WS-Enumeration [WSENUM] specification of the simple SOAP-based protocol consists of multiple operations that are served by the [**WSDL port types**](#gt_wsdl-port-type): an Enumerate operation to begin the request, one or more Pull operations to retrieve the results, and a Release operation to terminate the query. In subsequent sections, extensions to some of these operations have been specified.

In the WS-Enumeration [WSENUM] specification, all the Enumerate operations are tied together by an [**enumeration context**](#gt_enumeration-context) that represents a logical cursor through a sequence of data items. The enumeration context is just an identifier that the server returns in response to the WS-Enumeration [WSENUM] Enumerate operation and which the client is responsible for passing back while performing subsequent WS-Enumeration [WSENUM] operations. Thus, the requestor MUST initiate an Enumerate operation to create new enumeration contexts for subsequent traversal/retrieval of result items through Pull operation or performing other WS-Enumeration [WSENUM] operations. At the same time, WS-Enumeration [WSENUM] mandates that the state regarding the progress of the iteration MUST be maintained between requests by the server being enumerated or by the requestor.

Besides the requirements for WS-Enumeration [WSENUM], this protocol extension is simply a pass-through on the client side. That is, no additional timers or other state is required on the client side of this protocol. Calls made by the higher-layer protocol or application are passed directly to the transport, and the results returned by the transport are passed directly back to the higher-layer protocol or application.

**Note** The server implementation of the WS-Enumeration: Directory Services Protocol Extensions MAY<3> limit the maximum validity of an enumeration context. This limit, if implemented, applies across the Renew operation (section [3.1.4.3](#Section_3.1.4.3)).

<a id="Section_3.1"></a>
## 3.1 Enumeration Server Details

This section describes the server behavior of the [MS-WSDS] protocol extensions as they apply to the WS-Enumeration [[WSENUM]](https://go.microsoft.com/fwlink/?LinkId=90580) [**WSDL port types**](#gt_wsdl-port-type). In WS-Enumeration, this WSDL port types is used to process five [**WSDL**](#gt_web-services-description-language-wsdl) operations:

- Enumeration
- Pull
- Renew
- GetStatus
- Release
<a id="Section_3.1.1"></a>
### 3.1.1 Abstract Data Model

This section describes a conceptual model of possible data organization that an implementation maintains to participate in this protocol. The described organization is provided to facilitate the explanation of how the protocol behaves. This document does not mandate that implementations adhere to this model as long as their external behavior is consistent with that described in this document.

[MS-WSDS](#Section_2ded136c2fe24f7d8d09a7118815c6bb) operates on a collection of [**directory objects**](#gt_directory-object). The Enumerate operation specifies the search filter requesting for selected directory objects matching the filter or only fragments of those selected directory objects, whichever is required. The Pull operation retrieves the objects or fragments of those objects in the context of the previous Enumeration operation. The resultant items out of the Pull operation are a sequence of enumerated directory objects or their fragments. A directory object is a collection of one or more directory attributes. Each [**directory attribute**](#gt_directory-attribute) is a collection of one or more directory attribute values. Directory attribute values are represented as [**XML**](#gt_xml) elements.

For example, a user might be represented as a directory object. That directory object could have a directory attribute representing the user's given name, containing a single directory attribute value (for example, "John"). It could also have a directory attribute for the user's surname (for example, "Smith"). It might also have a directory attribute for the user's telephone numbers, which could contain multiple directory attribute values, one for each telephone number possessed by that user.

The directory object collection is represented as an XML document. The collection of directory objects containing the directory attributes, the contents of those attributes, and the representation of those directory objects (including their directory attributes and directory attribute values) as an XML document is implementation-defined.<4>

<a id="Section_3.1.2"></a>
### 3.1.2 Timers

There are no timers in this protocol extension.

<a id="Section_3.1.3"></a>
### 3.1.3 Initialization

When this protocol initializes, it MUST begin listening on [**endpoints**](#gt_endpoint) for the Enumeration interface. The [**URIs**](#gt_uniform-resource-identifier-uri) for the endpoints, as well as the transport and security mechanisms to use, are implementation-dependent.<5>

<a id="Section_3.1.4"></a>
### 3.1.4 Message Processing Events and Sequencing Rules

The following operations are defined by the WS-Enumeration [[WSENUM]](https://go.microsoft.com/fwlink/?LinkId=90580) protocol. This protocol specifies extensions to the request, response, and [**SOAP faults**](#gt_soap-fault) associated with these operations.

| Operation | Description |
| --- | --- |
| wsen:Enumerate | Creates a context mapped to the query filter specified for search. |
| wsen:Pull | Pulls the resultant objects in the context of a specific enumeration. |
| wsen:Renew | Renews the expiration time of the specified [**enumeration context**](#gt_enumeration-context). |
| wsen:GetStatus | Gets the expiration time of the specified enumeration context. |
| wsen:Release | Releases the specified enumeration context. |

WS-Enumeration [WSENUM] section 3.6 states that if the server terminates an enumeration unexpectedly, it should send an EnumerationEnd [**SOAP message**](#gt_soap-message) to the [**endpoint**](#gt_endpoint) reference indicated when the enumeration was created.<6>

The subsequent sections also document the SOAP faults specified for use by servers that implement the [MS-WSDS] protocol extensions for specific operations. These faults SHOULD be used by servers while processing a WS-Enumeration [WSENUM] message to indicate to the client that a server-side error has occurred. Many of the faults are adopted from the WS-Enumeration [WSENUM] protocol, and some are from WS-Addressing [[WSAddressing]](https://go.microsoft.com/fwlink/?LinkId=90575); WSDS assigns these faults a specific meaning within the context of a WS-Enumeration operation that uses the WSDS extensions.

Server implementations are permitted to return additional faults beyond those described as follows. Where applicable, make use of the documented faults in order to maximize interoperability.

Some of the SOAP faults documented as follows specify English-language text in their fault reason. Server implementations are permitted to localize this text to other languages. Such localizations SHOULD maintain, to the extent possible, the same meaning as the English text supplied in this document.

All SOAP faults defined in this document MUST be sent as described in [[WSASB]](https://go.microsoft.com/fwlink/?LinkId=120449) section 6.

In the tables describing faults in the later sections, the following apply.

- [Code] is the SOAP fault code.
- [Subcode] is the SOAP fault subcode.
- [Action] is the [**SOAP action**](#gt_soap-action) [**URI**](#gt_uniform-resource-identifier-uri) for the fault.
- [Reason] is a human-readable explanation of the error.
- [Details] is an illustrative example of the fault detail. If not present, WSDS does not specify a fault detail for the fault.
<a id="Section_3.1.4.1"></a>
#### 3.1.4.1 wsen:Enumerate

This section defines the directory services extensions to the Enumerate request and response message defined in WS-Enumeration [[WSENUM]](https://go.microsoft.com/fwlink/?LinkId=90580) section 3.1.

The Instance header defined in [MS-ADDM](../MS-ADDM/MS-ADDM.md) section 2.5.1 MUST be attached by the [**requestor**](#gt_requestor) to a WS-Enumeration [WSENUM] Enumerate request message containing an <ad:instance> payload to inform the server about the directory instance targeted. See section [4.1](../MS-ADDM/MS-ADDM.md) for an example of how the header is attached in an Enumerate request.

For the /soapenv:Envelope/ soapenv:Body/ wsen:Enumerate/ wsen:Filter/ element defined in WS-Enumeration [WSENUM] section 3.1, the filter expression language supported by [MS-WSDS] is "LdapQuery" defined in section [3.1.4.1.1.1](#Section_3.1.4.1.1.1) and identified by the following [**URI**](#gt_uniform-resource-identifier-uri):

http://schemas.microsoft.com/2008/1/ActiveDirectory/Dialect/LdapQuery

The URI stated previously MUST be the value of the /soapenv:Envelope/ soapenv:Body/ wsen:Enumerate/ wsen:Filter/ @Dialect attribute specified in WS-Enumeration [WSENUM] section 3.1.

The wsen:Filter element is optional. If the wsen:Filter element is absent in the request (that is, no query filter has been provided in the request), the server SHOULD use the following Ldap query filter by default.

<wsen:Filter Dialect="http://schemas.microsoft.com/2008/1/ActiveDirectory/Dialect/LdapQuery ">

<adlq:LdapQuery>

<adlq:Filter>

(objectClass=*)

</adlq:Filter>

<adlq:BaseObject>

<Default domain NC DN>

</adlq:BaseObject>

<adlq:Scope>

subtree

</adlq:Scope>

</adlq:LdapQuery>

</wsen:Filter>

The WS-Enumeration [WSENUM] Enumerate request can specify the expiration time of the request as a specific time or duration type. If the wsen:Expires element specifying expiration time is absent in the request, meaning indefinite lifetime for the enumeration, it is up to the server to grant such enumeration.<7>

WS-Enumeration [WSENUM] also specifies for the Enumerate response that the expiration time can be either an absolute time or a duration but should be of the same type as the requested expiration.<8>

<a id="Section_3.1.4.1.1"></a>
##### 3.1.4.1.1 Elements

The following XML schema element definitions are specific to extensions of the enumerate operation defined in WS-Enumeration [[WSENUM]](https://go.microsoft.com/fwlink/?LinkId=90580) section 3.1.

| Element | Description |
| --- | --- |
| [<adlq:LdapQuery>](#Section_751795d6fb3243ff9bfea1e1df8466a1) | Specifies the format for the LdapQuery query element. |
| [<ad:Selection>](#Section_18097f916e234bcfac70d3166f62adf6) | Specifies the fragments for the Selection element. |
| [<ad:Sorting>](#Section_2cf48f6b71b4455696c0f42d364246f6) | Specifies the Sorting element. |

<a id="Section_3.1.4.1.1.1"></a>
###### 3.1.4.1.1.1 adlq:LdapQuery

This section specify the format of optional [**LDAP**](#gt_lightweight-directory-access-protocol-ldap) query element which is used to define the optional /soapenv:Envelope/soapenv:Body/wsen:Enumerate/wsen:Filter element of the Enumerate request described in WS-Enumeration [[WSENUM]](https://go.microsoft.com/fwlink/?LinkId=90580) section 3.1.

Following is the [**XML Schema**](#gt_xml-schema-xsd) [[XMLSCHEMA1]](https://go.microsoft.com/fwlink/?LinkId=90608) definition of the LdapQuery element.

<xsd:element name = "LdapQuery">

<xsd:complexType>

<xsd:sequence>

<xsd:element name="Filter" type="xsd:string" minOccurs="1"

maxOccurs ="1" />

<xsd:element name="BaseObject" type="xsd:string"

minOccurs="1" maxOccurs="1" />

<xsd:element name="Scope" type="xsd:string" minOccurs="1"

maxOccurs="1" />

</xsd:sequence>

</xsd:complexType>

</xsd:element>

For example, the following [**XML**](#gt_xml) shows the contents of LdapQuery element.

<adlq:LdapQuery>

<adlq:Filter>

<RFC 2254 filter string>

</adlq:Filter>

<adlq:BaseObject>

<object Reference Property, a.k.a. GUID, or object DN>

</adlq:BaseObject>

<adlq:Scope>

(base | onelevel | subtree)

< /adlq:Scope>

</adlq:LdapQuery>

If the adlq:LdapQuery element is absent in the request (that is, no query filter has been provided in the request), the server SHOULD use the following Ldap query filter by default:

<wsen:Filter Dialect="http://schemas.microsoft.com/2008/1/ActiveDirectory/Dialect/LdapQuery">

<adlq:LdapQuery>

<adlq:Filter>

(objectClass=*)

</adlq:Filter>

<adlq:BaseObject>

<Default domain NC DN>

</adlq:BaseObject>

<adlq:Scope>

subtree

</adlq:Scope>

</adlq:LdapQuery>

</wsen:Filter>

<a id="Section_3.1.4.1.1.1.1"></a>
adlq:filter

The [**requestor**](#gt_requestor) MUST specify the [**LDAP**](#gt_lightweight-directory-access-protocol-ldap) search filter strings as defined in [[RFC2254]](https://go.microsoft.com/fwlink/?LinkId=90328) as the query string for the required filter element wsen:Enumerate/wsen:Filter/adlq:LdapQuery/adlq:filter in the Enumerate request.

<adlq:Filter>

<RFC 2254 filter string>

</adlq:Filter>

<a id="Section_3.1.4.1.1.1.2"></a>
adlq:BaseObject

The [**requestor**](#gt_requestor) MUST specify the [**object reference property**](#gt_object-reference-property) ([**GUID**](#gt_globally-unique-identifier-guid) or distinguished name of the object) as defined in [MS-ADDM](../MS-ADDM/MS-ADDM.md) section 2.3.3.1 under the required BaseObject element wsen:Enumerate/wsen:Filter/adlq:LdapQuery/adlq:BaseObject in the Enumerate request.

<adlq:BaseObject>

<object Reference Property, a.k.a. GUID, or object DN>

</adlq:BaseObject>

<a id="Section_3.1.4.1.1.1.3"></a>
adlq:Scope

The [**requestor**](#gt_requestor) MUST specify "base", "onelevel", or "subtree" under the required scope element wsen:Enumerate/wsen:Filter/adlq:LdapQuery/adlq:Scope in the Enumerate request. This element specifies the scope for the directory search that is to be performed.

<adlq:Scope>

(base | onelevel | subtree)

</adlq:Scope>

| Scope | Explanation |
| --- | --- |
| base | Limits the search scope to the base object. The result contains a maximum of one object. |
| onelevel | Limits the search scope to the immediate child objects of the base object, excluding the base object. |
| subtree | Limits the search scope to the whole subtree, including the base object and all its child objects. |

<a id="Section_3.1.4.1.1.2"></a>
###### 3.1.4.1.1.2 ad:Selection

The optional element /soapenv:Envelope/soapenv:Body/wsen:Enumerate/ad:Selection specifies which fragments (SelectionProperties) (that is, what portions (directory attributes)) of the object to return for a certain enumeration. The selection element is specified using a selection language that is derived from XPath 1.0. If specified, the Selection element MUST contain at least one SelectionProperty (see section [3.1.4.1.1.2.1](#Section_3.1.4.1.1.2.1)).

If the Selection element is absent in the request, all [**default attributes**](#gt_default-attribute) of the [**directory object**](#gt_directory-object) SHOULD be returned.<9>

Following is the [**XML Schema**](#gt_xml-schema-xsd) [[XMLSCHEMA1]](https://go.microsoft.com/fwlink/?LinkId=90608) definition of the Selection element.

<xsd:element name ="Selection">

<xsd:complexType>

<xsd:sequence>

<xsd:element name="SelectionProperty" type="xsd:string" minOccurs="1"

maxOccurs ="unbounded"/>

</xsd:sequence>

<xsd:attribute name="Dialect" fixed=http://schemas.microsoft.com/2008/1/ActiveDirectory/Dialect/XPath-Level-1 use="required"/>

</xsd:complexType>

</xsd:element>

For example, the following [**XML**](#gt_xml) shows the contents of the Selection element.

<ad:Selection Dialect="http://schemas.microsoft.com/2008/1/ActiveDirectory/Dialect/XPath-Level-1">

<ad:SelectionProperty>

<XPath Level I>

</ad:SelectionProperty>

</ad:Selection>

The value of /soapenv:Envelope/ soapenv:Body/wsen:Enumerate/ad:Selection/@Dialect is specified in section [3.1.4.1.2.1](#Section_3.1.4.1.2.1).

<a id="Section_3.1.4.1.1.2.1"></a>
ad:SelectionProperty

The required element /soapenv:Envelope/soapenv:Body/wsen:Enumerate/ad:Selection/ad:SelectionProperty specifies which [**directory attribute**](#gt_directory-attribute) is to be returned for the resultant objects evaluating to true for that particular enumeration. The [**Requestor**](#gt_requestor) MUST use XPath 1.0-derived Selection Language, defined in [MS-ADDM](../MS-ADDM/MS-ADDM.md) section 2.4, to specify this element. The language is indicated by the Dialect attribute, defined in section [3.1.4.1.2.1](../MS-ADDM/MS-ADDM.md), on its parent node ad:Selection, defined in section [3.1.4.1.1.2](../MS-ADDM/MS-ADDM.md).

For doing range retrieval of a multi-valued directory attribute, the extension to [[WSENUM]](https://go.microsoft.com/fwlink/?LinkId=90580) specified in [MS-ADDM] section 2.7 SHOULD be used with this [**XML**](#gt_xml) element.

Selection property <ad:all> SHOULD be specified to indicate that the Pull operation SHOULD return all the [**default attributes**](#gt_default-attribute) of the resultant [**directory objects**](#gt_directory-object).<10>

Following is the [**XML Schema**](#gt_xml-schema-xsd) [[XMLSCHEMA1]](https://go.microsoft.com/fwlink/?LinkId=90608) definition of the SelectionProperty element.

<xsd:element name="SelectionProperty" type="xsd:string" minOccurs="1"

maxOccurs ="unbounded"/>

<a id="Section_3.1.4.1.1.3"></a>
###### 3.1.4.1.1.3 ad:Sorting

The optional element /soapenv:Envelope/soapenv:Body/wsen:Enumerate/ad:Sorting determines which attribute the sorting of resultant items in the response message for that specific enumeration would depend on. The Sorting element is optional and, if specified, MUST contain exactly one SortingProperty (see section [3.1.4.1.1.3.1](#Section_3.1.4.1.1.3.1)). An optional Ascending attribute (see section [3.1.4.1.2.2](#Section_3.1.4.1.2.2)) is used to specify ascending or descending sort order. If the Sorting element is not specified, the results are not sorted.

Following is the [**XML Schema**](#gt_xml-schema-xsd) [[XMLSCHEMA1]](https://go.microsoft.com/fwlink/?LinkId=90608) definition of the Sorting element:

<xsd:element name ="Sorting">

<xsd:complexType>

<xsd:sequence>

<xsd:element name="SortingProperty" minOccurs="1"

maxOccurs ="1">

<xsd:complexType>

<xsd:simpleContent>

<xsd:extension base="xsd:string">

<xsd:attribute name="Ascending" use="optional" default="true" type="xsd:boolean"/>

</xsd:extension>

</xsd:simpleContent>

</xsd:complexType>

</xsd:element>

</xsd:sequence>

<xsd:attribute name="Dialect" fixed=http://schemas.microsoft.com/2008/1/ActiveDirectory/Dialect/XPath-Level-1 use="required"/>

</xsd:complexType>

</xsd:element>

For example, the following [**XML**](#gt_xml) shows the contents of the Sorting element:

<ad:Sorting Dialect="http://schemas.microsoft.com/2008/1/ActiveDirectory/Dialect/XPath-Level-1">

<ad:SortingProperty Ascending=(true|false)>

<XPath Level>

</ad:SortingProperty>

</ad:Sorting>

The value of /s:Envelope/s:Body/wsen:Enumerate/ad:Sorting/@Dialect is specified in section 3.1.4.1.2.2.

<a id="Section_3.1.4.1.1.3.1"></a>
ad:SortingProperty

The required element /soapenv:Envelope/soapenv:Body/wsen:Enumerate/ad:Sorting/ad:SortingProperty specifies the sorting [**directory attribute**](#gt_directory-attribute) using XPath 1.0-derived Selection Language, defined in [MS-ADDM](../MS-ADDM/MS-ADDM.md) section 2.4, and the sort order using the Ascending attribute (see section [3.1.4.1.2.3](../MS-ADDM/MS-ADDM.md)). If the Ascending attribute is absent, the default sorting order is ascending.

The following [**XML**](#gt_xml) shows the contents of the SortingProperty element:

<ad:SortingProperty Ascending=(true|false)>

<XPath Level I>

</ad:SortingProperty>

<a id="Section_3.1.4.1.2"></a>
##### 3.1.4.1.2 Attributes

The following XML schema attribute definitions are specific to these Enumerate request extensions.

| Attribute | Description |
| --- | --- |
| [<ad:Selection/@Dialect>](#Section_93c146e5d7a4447dbac327bc06adc2b4) | Specifies the Selection property. |
| [<ad:Sorting/@Dialect>](#Section_5baf5b90b6ab430792a58fa802f7308a) | Specifies the Sorting property. |
| [<ad:Sorting/ad:SortingProperty/@Ascending>](#Section_53fce7db5aee444e8edc7309cec90d4a) | Specifies the ascending Sorting property. |

<a id="Section_3.1.4.1.2.1"></a>
###### 3.1.4.1.2.1 ad:Selection/@Dialect

The XPath 1.0-derived Selection Language, defined in [MS-ADDM](../MS-ADDM/MS-ADDM.md) section 2.4, is used to specify selection properties. This derived language is identified by the following [**URI**](#gt_uniform-resource-identifier-uri):

http://schemas.microsoft.com/2008/1/ActiveDirectory/Dialect/XPath-Level-1

The URI stated previously MUST be the value of the /soapenv:Envelope/ soapenv:Body/ wsen:Enumerate / * /ad:Selection/@Dialect required attribute.

<a id="Section_3.1.4.1.2.2"></a>
###### 3.1.4.1.2.2 ad:Sorting/@Dialect

The XPath 1.0-derived Selection Language, defined in [MS-ADDM](../MS-ADDM/MS-ADDM.md) section 2.4, is used to specify the sorting property. This derived language is identified by the following [**URI**](#gt_uniform-resource-identifier-uri):

http://schemas.microsoft.com/2008/1/ActiveDirectory/Dialect/XPath-Level-1

The URI stated previously MUST be the value of the /soapenv:Envelope/soapenv:Body/ wsen:Enumerate/ * /ad:Sorting/ @Dialect required attribute.

<a id="Section_3.1.4.1.2.3"></a>
###### 3.1.4.1.2.3 ad:Sorting/ad:SortingProperty/@Ascending

The value for the optional /soapenv:Envelope/ soapenv:Body/ wsen:Enumerate/ * / ad:Sorting/ ad:SortingProperty/@Ascending attribute MUST be of type Boolean. If true, the sorting order of the resultant items based on the Sorting Property is ascending. If false, it is descending.

<a id="Section_3.1.4.1.3"></a>
##### 3.1.4.1.3 SOAP Faults

This section defines the extensions to [**SOAP fault**](#gt_soap-fault) messages for the Enumerate operation defined in WS-Enumeration [[WSENUM]](https://go.microsoft.com/fwlink/?LinkId=90580) section 3.1.

<a id="Section_3.1.4.1.3.1"></a>
###### 3.1.4.1.3.1 ad:EnumerationContextLimitExceeded

Server implementations SHOULD reject the Enumerate request and return the following fault when there is more than a specific, server-imposed limit number<11> of Enumeration contexts open either for the user or in total.

Implementations MAY<12> supply a fault detail of their choosing.

| SOAP Element | Value |
| --- | --- |
| [Code] | soapenv:Sender |
| [Subcode] | ad:EnumerationContextLimitExceeded |
| [Action] | http://schemas.microsoft.com/2008/1/ActiveDirectory/Data/fault |
| [Reason] | Too many [**enumeration contexts**](#gt_enumeration-context) open. |
| [Details] | Implementation-defined and MAY be empty. |

<a id="Section_3.1.4.1.3.2"></a>
###### 3.1.4.1.3.2 ad:UnsupportedSelectOrSortDialectFault

Server implementations SHOULD reject the Enumerate request and return the following fault when it does not support the dialect specified for Selection or sorting properties defined in sections [3.1.4.1.2.2](#Section_3.1.4.1.2.2) and [3.1.4.1.2.3](#Section_3.1.4.1.2.3). The Server SHOULD provide the dialect supported as part of the fault detail shown in the following table.

| SOAP Element | Value |
| --- | --- |
| [Code] | soapenv:Sender |
| [Subcode] | ad:UnsupportedSelectOrSortDialectFault |
| [Action] | http://schemas.microsoft.com/2008/1/ActiveDirectory/Data/fault |
| [Reason] | Specified dialect for Selection properties (or Sorting property) is not supported. |
| [Details] | <soapenv:Detail> <ad:SupportedSelectOrSortDialect> http://schemas.microsoft.com/2008/1/ActiveDirectory/Dialect/XPath-Level-1 </ad:SupportedSelectOrSortDialect> </soapenv:Detail> |

<a id="Section_3.1.4.1.3.3"></a>
###### 3.1.4.1.3.3 ad:InvalidPropertyFault

Server implementations SHOULD reject the Enumerate request and return the following fault when any selection or sorting property specified in the Enumerate request is not a valid [**directory attribute**](#gt_directory-attribute). Fault detail SHOULD contain the invalid selection or sorting property present in the Enumerate request.

| SOAP Element | Value |
| --- | --- |
| [Code] | soapenv:Sender |
| [Subcode] | ad:InvalidPropertyFault |
| [Action] | http://schemas.microsoft.com/2008/1/ActiveDirectory/Data/fault |
| [Reason] | Sorting or selection property is invalid. |
| [Details] | <soapenv:Detail> <ad:EnumerateFault> <ad:Error>Selection or Sort property's value is not a valid directory attribute. (OR Selection or Sort property's syntax is not valid with respect to the dialect.)</ad:Error> <ad:ShortError>InvalidPropertyValueDetail(OR InvalidPropertySyntaxDetail)</ad:ShortError> <ad:InvalidProperty>Invalid property</ad:InvalidProperty> </ad:EnumerateFault> </soapenv:Detail> |

<a id="Section_3.1.4.1.3.4"></a>
###### 3.1.4.1.3.4 ad:InvalidSortKey

If the sorting property defined in section [3.1.4.1.1.3.1](#Section_3.1.4.1.1.3.1) is one of the non-[**LDAP**](#gt_lightweight-directory-access-protocol-ldap) directory attributes including the synthetic (implementation-specific) directory attributes,<13> "<ad:all>", or if more than one sort key is specified, the server SHOULD reject the Enumerate request and return the following fault.

Implementations MAY<14> supply a fault detail of their own choosing.

| SOAP Element | Value |
| --- | --- |
| [Code] | soapenv:Sender |
| [Subcode] | ad:InvalidSortKey |
| [Action] | http://schemas.microsoft.com/2008/1/ActiveDirectory/Data/fault |
| [Reason] | Invalid sorting property. |
| [Details] | Implementation-defined and MAY be empty. |

<a id="Section_3.1.4.1.3.5"></a>
###### 3.1.4.1.3.5 wsen:CannotProcessFilter

When the wsen:filter or adlq:LdapQuery element is absent in the enumerate request, the server uses a default Ldap query filter for search as defined in section [3.1.4.1](#Section_3.1.4.1) and [3.1.4.1.1.1](#Section_3.1.4.1.1.1). However, if the server encounters an error while using the default Ldap query filter, it SHOULD return the following fault.

Implementations MAY<15> supply a default detail of their own choosing.

| SOAP Element | Value |
| --- | --- |
| [Code] | soapenv:Sender |
| [Subcode] | wsen:CannotProcessFilter |
| [Action] | http://schemas.xmlsoap.org/ws/2004/09/enumeration/fault |
| [Reason] | Invalid query language expression. |
| [Details] | Implementation-defined and MAY be empty. |

<a id="Section_3.1.4.1.3.6"></a>
###### 3.1.4.1.3.6 wsa2004:EndPointUnavailable

The server SHOULD notify a [**requestor**](#gt_requestor) of other application-level faults by generating a wsa2004:EndPointUnavailable [**SOAP fault**](#gt_soap-fault) defined in the WS-Addressing [[WSAddressing]](https://go.microsoft.com/fwlink/?LinkId=90575) protocol.

wsa2004:EndPointUnavailable SOAP fault SHOULD be generated by the server when it encounters any other application, directory, [**XML**](#gt_xml) serialization or deserialization, [**schema**](#gt_schema) validation, or unknown error that is not specific to faults stated in the previous sections.<16>

Implementations MAY<17> supply a fault detail of their own choosing.

| SOAP Element | Value |
| --- | --- |
| [Code] | soapenv:Receiver |
| [Subcode] | wsa2004:EndPointUnavailable |
| [Action] | http://schemas.xmlsoap.org/ws/2004/08/addressing/fault |
| [Reason] | [**Endpoint**](#gt_endpoint) unavailable. |
| [Details] | Implementation-defined and MAY be empty. |

<a id="Section_3.1.4.2"></a>
#### 3.1.4.2 wsen:Pull

This section defines the directory services extensions to the Pull response message defined in WS-Enumeration [[WSENUM]](https://go.microsoft.com/fwlink/?LinkId=90580) section 3.2.

The WS-Enumeration [WSENUM] Pull specification as defined in WS-Enumeration [WSENUM] section 3.2 leaves the contents of the wsen:PullResponse/wsen:Items element open-ended for a Pull response. The data returned by the server via the wsen:Items element (defined in WS-Enumeration [WSENUM] section 3.2) is structured in accord with the [**XML**](#gt_xml) data model specified in [MS-ADDM](../MS-ADDM/MS-ADDM.md) section 2.3.2, except that only those attributes that were requested in the wsen:Enumerate/ad:Selection (see section [3.1.4.1.1.2](../MS-ADDM/MS-ADDM.md)) element are returned. Also, in addition to requested attributes through the wsen:Selection element in the Enumerate request, the server always returns <ad:objectReferenceProperty> synthetic attribute (as specified in [MS-ADDM] section 2.3.3.1) in the Pull response.

The fragments or portions of the resultant objects evaluating to be true for the specific enumeration query are returned as children nodes with the most specific structural object class ([MS-ADTS](../MS-ADTS/MS-ADTS.md) section 3.1.1.1.4) being the root element. The server SHOULD specify the root element as "addata:top" in the Pull response if the [**LDAP**](#gt_lightweight-directory-access-protocol-ldap) display name of the most specific structural object class for the result fragment is not available as specified in [MS-ADDM] section 2.3.2. This sequence of result fragments forms children nodes to the <wsen:Items> element.

The following XML shows the contents of the Items element.

<wsen:Items>

<addata:user>

<ad:objectReferenceProperty>

<ad:value xsi:type= "xsd:string">

13195F20-8F96-46ed-BFF2-7891817FFEB8

</ad:value>

</ad:objectReferenceProperty>

<addata:givenName>

<ad:value xsi:type= "xsd:string">John</ad:value>

</addata:givenName>

</addata:user>

<addata:user>

<ad:objectReferenceProperty>

<ad:value xsi:type= "xsd:string">

ED18488A-3042-4e12-B7D1-69A059F80BC1

</ad:value>

</ad:objectReferenceProperty>

<addata:givenName>

<ad:value xsi:type= "xsd:string">Robert</ad:value>

</addata:givenName>

</addata:user>

</wsen:Items>

The [**enumeration context**](#gt_enumeration-context) is provided in the Pull request in order to fetch the resultant objects mapped to the query associated with it. Servers SHOULD reject the Pull request and return the ad:MaxCharsNotSupported fault, defined in section [3.1.4.2.1.1](#Section_3.1.4.2.1.1), if the optional element wsen:MaxCharacters (as defined in [WSENUM] section 3.2) is present.<18>

The optional element wsen:MaxTime indicates the maximum amount of time the initiator is willing to allow the server to assemble the Pull response as specified in [WSENUM] section 3.2. When wsen:MaxTime is absent in a Pull request message, the server SHOULD use a timeout to limit the time spent processing the Pull request. The server SHOULD also restrict the maximum value of wsen:MaxTime to less than this timeout value, and any attempt to set wsen:MaxTime to a value greater than this timeout value SHOULD return the [ad:MaxTimeExceedsLimit](#Section_3.1.4.2.1.5) fault defined in section 3.1.4.2.1.5.

An optional ad:controls element can also be passed to the pull request, according to the requirements in [MS-WSPELD](../MS-WSPELD/MS-WSPELD.md) section 2.2.3.1.

<a id="Section_3.1.4.2.1"></a>
##### 3.1.4.2.1 SOAP Faults

This section defines the extensions to [**SOAP fault**](#gt_soap-fault) messages for the Pull operation defined in WS-Enumeration [[WSENUM]](https://go.microsoft.com/fwlink/?LinkId=90580) section 3.2.

<a id="Section_3.1.4.2.1.1"></a>
###### 3.1.4.2.1.1 ad:MaxCharsNotSupported

Server implementations SHOULD reject the Pull request and return the following fault when it does not support the wsen:MaxCharacters element specified in the Pull request.

Implementations MAY<19> supply a fault detail of their choosing.

| SOAP Element | Value |
| --- | --- |
| [Code] | soapenv:Sender |
| [Subcode] | ad:MaxCharsNotSupported |
| [Action] | http://schemas.microsoft.com/2008/1/ActiveDirectory/Data/fault |
| [Reason] | MaxChars specified in the request. |
| [Details] | Implementation-defined and MAY be empty. |

<a id="Section_3.1.4.2.1.2"></a>
###### 3.1.4.2.1.2 wsen:InvalidEnumerationContext

The server SHOULD return the wsen:InvalidEnumerationContext fault defined by WS-Enumeration [[WSENUM]](https://go.microsoft.com/fwlink/?LinkId=90580) when the [**enumeration context**](#gt_enumeration-context) specified in the respective Pull request belongs to a different [**security principal**](#gt_security-principal) or [**session**](#gt_session).

Implementations MAY<20> supply a fault detail of their choosing.

| SOAP Element | Value |
| --- | --- |
| [Code] | soapenv:Sender |
| [Subcode] | wsen:InvalidEnumerationContext |
| [Action] | http://schemas.xmlsoap.org/ws/2004/09/enumeration/fault |
| [Reason] | Invalid enumeration context specified in the request. |
| [Details] | Implementation-defined and MAY be empty. |

<a id="Section_3.1.4.2.1.3"></a>
###### 3.1.4.2.1.3 wsa2004:DestinationUnreachable

The server SHOULD return the wsa2004:DestinationUnreachable fault defined in the WS-Addressing [[WSAddressing]](https://go.microsoft.com/fwlink/?LinkId=90575) protocol when the object requested through the corresponding Enumerate request of this Pull operation does not exist in the directory.

Implementations MAY<21> supply a fault detail of their choosing.

| SOAP Element | Value |
| --- | --- |
| [Code] | soapenv:Sender<22> |
| [Subcode] | wsa2004:DestinationUnreachable |
| [Action] | http://schemas.xmlsoap.org/ws/2004/08/addressing/fault |
| [Reason] | The failed operation was attempted on a nonexistent [**directory object**](#gt_directory-object). |
| [Details] | Implementation-defined and MAY be empty. |

<a id="Section_3.1.4.2.1.4"></a>
###### 3.1.4.2.1.4 wsa2004:EndpointUnavailable

The server SHOULD notify a [**requestor**](#gt_requestor) of other application-level faults by generating a wsa2004:EndPointUnavailable [**SOAP fault**](#gt_soap-fault) defined in the WS-Addressing [[WSAddressing]](https://go.microsoft.com/fwlink/?LinkId=90575) protocol.

wsa2004:EndPointUnavailable SOAP fault SHOULD be generated by the server when it encounters any other application, directory, [**XML**](#gt_xml) serialization or deserialization, [**schema**](#gt_schema) validation, or unknown error that is not specific to faults stated in the previous sections.

Implementations MAY<23> supply a fault detail of their choosing.

| SOAP Element | Value |
| --- | --- |
| [Code] | soapenv:Receiver |
| [Subcode] | wsa2004:EndpointUnavailable |
| [Action] | http://schemas.xmlsoap.org/ws/2004/08/addressing/fault |
| [Reason] | [**Endpoint**](#gt_endpoint) unavailable. |
| [Details] | Implementation-defined and MAY be empty. |

<a id="Section_3.1.4.2.1.5"></a>
###### 3.1.4.2.1.5 ad:MaxTimeExceedsLimit

Server implementations SHOULD reject the Pull request and return the following fault when the value of wsen:MaxTime is greater than the default value mentioned in section [3.1.4.2](#Section_3.1.4.2).

Implementations MAY<24> supply a fault detail of their choosing.

| SOAP Element | Value |
| --- | --- |
| [Code] | soapenv:Sender |
| [Subcode] | ad:MaxTimeExceedsLimit |
| [Action] | http://schemas.microsoft.com/2008/1/ActiveDirectory/Data/fault |
| [Reason] | MaxTime exceeds the limit. |
| [Details] | Implementation-defined and MAY be empty. |

<a id="Section_3.1.4.3"></a>
#### 3.1.4.3 wsen:Renew

This section defines only the extensions to [**SOAP fault**](#gt_soap-fault) messages for the Renew operation defined in WS-Enumeration [[WSENUM]](https://go.microsoft.com/fwlink/?LinkId=90580) section 3.3.

<a id="Section_3.1.4.3.1"></a>
##### 3.1.4.3.1 SOAP faults

The server SHOULD reject the Renew request on application-level errors, client-side request errors, or directory errors; and return an appropriate fault from below.

<a id="Section_3.1.4.3.1.1"></a>
###### 3.1.4.3.1.1 wsen:InvalidEnumerationContext

The server SHOULD return the wsen:InvalidEnumerationContext fault defined by WS-Enumeration [[WSENUM]](https://go.microsoft.com/fwlink/?LinkId=90580) when the [**enumeration context**](#gt_enumeration-context) specified in the respective Renew request belongs to a different [**security principal**](#gt_security-principal) or [**session**](#gt_session).

Implementations MAY<25> supply a fault detail of their choosing.

| SOAP Element | Value |
| --- | --- |
| [Code] | soapenv:Sender |
| [Subcode] | wsen:InvalidEnumerationContext |
| [Action] | http://schemas.xmlsoap.org/ws/2004/09/enumeration/fault |
| [Reason] | Invalid enumeration context specified in the request. |
| [Details] | Implementation-defined and MAY be empty. |

<a id="Section_3.1.4.3.1.2"></a>
###### 3.1.4.3.1.2 wsa2004:EndpointUnavailable

The server SHOULD notify a [**requestor**](#gt_requestor) of other application-level faults by generating a wsa2004:EndPointUnavailable [**SOAP fault**](#gt_soap-fault) defined in the WS-Addressing [[WSAddressing]](https://go.microsoft.com/fwlink/?LinkId=90575) protocol.

wsa2004:EndPointUnavailable SOAP fault SHOULD be generated by the server when it encounters any other application, directory, [**XML**](#gt_xml) serialization or deserialization, [**schema**](#gt_schema) validation, or unknown error that is not specific to faults stated in the previous sections.

Implementations MAY<26> supply a fault detail of their choosing.

| SOAP Element | Value |
| --- | --- |
| [Code] | soapenv:Receiver |
| [Subcode] | wsa2004:EndpointUnavailable |
| [Action] | http://schemas.xmlsoap.org/ws/2004/08/addressing/fault |
| [Reason] | [**Endpoint**](#gt_endpoint) unavailable. |
| [Details] | Implementation-defined and MAY be empty. |

<a id="Section_3.1.4.4"></a>
#### 3.1.4.4 wsen:GetStatus

This section defines only the extensions to [**SOAP fault**](#gt_soap-fault) messages for the GetStatus operation defined in WS-Enumeration [[WSENUM]](https://go.microsoft.com/fwlink/?LinkId=90580) section 3.4.

<a id="Section_3.1.4.4.1"></a>
##### 3.1.4.4.1 SOAP Faults

The server SHOULD reject the GetStatus request on application-level errors, client-side request errors or directory errors, and return an appropriate fault from below.

<a id="Section_3.1.4.4.1.1"></a>
###### 3.1.4.4.1.1 wsen:InvalidEnumerationContext

The server SHOULD return the wsen:InvalidEnumerationContext fault defined by WS-Enumeration [[WSENUM]](https://go.microsoft.com/fwlink/?LinkId=90580) when the [**enumeration context**](#gt_enumeration-context) specified in the respective Pull request belongs to a different [**security principal**](#gt_security-principal) or [**session**](#gt_session).

Implementations MAY<27> supply a fault detail of their choosing.

| SOAP Element | Value |
| --- | --- |
| [Code] | soapenv:Sender |
| [Subcode] | wsen:InvalidEnumerationContext |
| [Action] | http://schemas.xmlsoap.org/ws/2004/09/enumeration/fault |
| [Reason] | Invalid enumeration context specified in the request. |
| [Details] | Implementation-defined and MAY be empty. |

<a id="Section_3.1.4.4.1.2"></a>
###### 3.1.4.4.1.2 wsa2004:EndpointUnavailable

The server SHOULD notify a [**requestor**](#gt_requestor) of other application-level faults by generating a wsa2004:EndPointUnavailable [**SOAP fault**](#gt_soap-fault) defined in the WS-Addressing [[WSAddressing]](https://go.microsoft.com/fwlink/?LinkId=90575) protocol.

wsa2004:EndPointUnavailable SOAP fault SHOULD be generated by the server when it encounters any other application, directory, [**XML**](#gt_xml) serialization or deserialization, [**schema**](#gt_schema) validation, or unknown error that is not specific to faults stated in the previous sections.

Implementations MAY<28> supply a fault detail of their choosing.

| SOAP Element | Value |
| --- | --- |
| [Code] | soapenv:Receiver |
| [Subcode] | wsa2004:EndpointUnavailable |
| [Action] | http://schemas.xmlsoap.org/ws/2004/08/addressing/fault |
| [Reason] | [**Endpoint**](#gt_endpoint) unavailable. |
| [Details] | Implementation-defined and MAY be empty. |

<a id="Section_3.1.4.5"></a>
#### 3.1.4.5 wsen:Release

This section defines only the extensions to [**SOAP fault**](#gt_soap-fault) messages for the Release operation defined in WS-Enumeration [[WSENUM]](https://go.microsoft.com/fwlink/?LinkId=90580) section 3.5.

<a id="Section_3.1.4.5.1"></a>
##### 3.1.4.5.1 SOAP Faults

The server SHOULD reject the Release request and return the following fault on application-level errors, client-side request errors, or directory errors encountered during the Release operation.

<a id="Section_3.1.4.5.1.1"></a>
###### 3.1.4.5.1.1 wsa2004:EndpointUnavailable

The server SHOULD notify a [**requestor**](#gt_requestor) of other application-level faults by generating a wsa2004:EndPointUnavailable [**SOAP fault**](#gt_soap-fault) defined in the WS-Addressing [[WSAddressing]](https://go.microsoft.com/fwlink/?LinkId=90575) protocol.

wsa2004:EndPointUnavailable SOAP fault SHOULD be generated by the server when it encounters any other application, directory, [**XML**](#gt_xml) serialization or deserialization, [**schema**](#gt_schema) validation, or unknown error that is not specific to faults stated in the previous sections.

Implementations MAY<29> supply a fault detail of their choosing.

| SOAP Element | Value |
| --- | --- |
| [Code] | soapenv:Receiver |
| [Subcode] | wsa2004:EndpointUnavailable |
| [Action] | http://schemas.xmlsoap.org/ws/2004/08/addressing/fault |
| [Reason] | [**Endpoint**](#gt_endpoint) unavailable. |
| [Details] | Implementation-defined and MAY be empty. |

<a id="Section_3.1.5"></a>
### 3.1.5 Timer Events

None.

<a id="Section_3.1.6"></a>
### 3.1.6 Other Local Events

None.

<a id="Section_4"></a>
# 4 Protocol Examples

This section contains examples of the WS-Enumeration extensions defined in the [MS-WSDS] protocol. For illustrative purposes, these examples have been shown in the context of [**Active Directory Web Services**](#gt_active-directory-web-services-adws) behavior.

<a id="Section_4.1"></a>
## 4.1 WS-Enumerate Directory Services Extension "Enumerate" Request Example

This example demonstrates a [MS-WSDS] Enumerate operation. In this SOAP request message, the [**requestor**](#gt_requestor) is specifying the [**LDAP**](#gt_lightweight-directory-access-protocol-ldap) query filter for search and directory attributes it requests out of the resultant objects under the selection element. The requestor is also asking to base the sorting of the resultant fragments in the response on the LDAP givenName attribute. The directory instance on which this operation is being performed is identified by its string-valued instance header ldap:389.

<soapenv:Envelope

xmlns:soapenv="http://www.w3.org/2003/05/soap-envelope"

xmlns:wsa="http://www.w3.org/2005/08/addressing">

<soapenv:Header>

<wsa:Action soapenv:mustUnderstand="1">

http://schemas.xmlsoap.org/ws/2004/09/enumeration/Enumerate

</wsa:Action>

<instance xmlns="http://schemas.microsoft.com/2008/1/ActiveDirectory">

ldap:389

</instance>

<wsa:MessageID>

urn:uuid:e36457ff-d0f1-4c85-abe6-6cdf4bd511e9

</wsa:MessageID>

<wsa:ReplyTo>

<wsa:Address>

http://www.w3.org/2005/08/addressing/anonymous

</wsa:Address>

</wsa:ReplyTo>

<wsa:To soapenv:mustUnderstand="1">net.tcp://server01.fabrikam.com:9389/ActiveDirectoryWebServices/Windows/Enumeration</wsa:To>

</soapenv:Header>

<soapenv:Body>

<wsen:Enumerate

xmlns:wsen="http://schemas.xmlsoap.org/ws/2004/09/enumeration"

xmlns:adlq="http://schemas.microsoft.com/2008/1/ActiveDirectory/Dialect/LdapQuery"

xmlns:addata="http://schemas.microsoft.com/2008/1/ActiveDirectory/Data"

xmlns:ad="http://schemas.microsoft.com/2008/1/ActiveDirectory"

xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"

xmlns:xsd="http://www.w3.org/2001/XMLSchema">

<wsen:Filter Dialect="http://schemas.microsoft.com/2008/1/ActiveDirectory/Dialect/LdapQuery">

<adlq:LdapQuery>

<adlq:Filter>(objectclass=user)</adlq:Filter>

<adlq:BaseObject>cc36a2a7-79a2-4d96-b1c2-31c30493b801</adlq:BaseObject>

<adlq:Scope>subtree</adlq:Scope>

</adlq:LdapQuery>

</wsen:Filter>

<ad:Selection Dialect="http://schemas.microsoft.com/2008/1/ActiveDirectory/Dialect/XPath-Level-1">

<ad:SelectionProperty>

ad:container-hierarchy-parent

</ad:SelectionProperty>

<ad:SelectionProperty>

addata:relativeDistinguishedName

</ad:SelectionProperty>

<ad:SelectionProperty>

addata:givenName

</ad:SelectionProperty>

</ad:Selection>

<ad:Sorting Dialect="http://schemas.microsoft.com/2008/1/ActiveDirectory/Dialect/XPath-Level-1">

<ad:SortingProperty Ascending="true">

addata:givenName

</ad:SortingProperty>

</ad:Sorting>

</wsen:Enumerate>

</soapenv:Body>

</soapenv:Envelope>

<a id="Section_4.2"></a>
## 4.2 WS-Enumerate Directory Services Extension "Enumerate" Response Example

This example demonstrates an [MS-WSDS] Enumerate response to the Enumerate request in the previous example. In this SOAP response message, the expiration time and [**enumeration context**](#gt_enumeration-context) associated with the operation are provided. Since the expiration time was absent in the request, the server assigned the maximum expiration time supported.

<soapenv:Envelope xmlns:soapenv="http://www.w3.org/2003/05/soap-envelope" xmlns:wsa="http://www.w3.org/2005/08/addressing">

<soapenv:Header>

<wsa:Action soapenv:mustUnderstand="1">http://schemas.xmlsoap.org/ws/2004/09/enumeration/EnumerateResponse

</wsa:Action>

<wsa:RelatesTo>

urn:uuid:e36457ff-d0f1-4c85-abe6-6cdf4bd511e9

</wsa:RelatesTo>

<wsa:To soapenv:mustUnderstand="1">http://www.w3.org/2005/08/addressing/anonymous

</wsa:To>

</soapenv:Header>

<soapenv:Body>

<wsen:EnumerateResponse

xmlns:wsen="http://schemas.xmlsoap.org/ws/2004/09/enumeration"

xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"

xmlns:xsd="http://www.w3.org/2001/XMLSchema">

<wsen:Expires>2008-08-18T22:07:41.0109506Z</wsen:Expires>

<wsen:EnumerationContext>cda3e08b-cec1-42bb-8245-7cb6235a24b8

</wsen:EnumerationContext>

</wsen:EnumerateResponse>

</soapenv:Body>

</soapenv:Envelope>

<a id="Section_4.3"></a>
## 4.3 WS-Enumerate Directory Services Extension "Pull" Request Example

This example demonstrates a [MS-WSDS] Pull request. In this SOAP request message, the [**requestor**](#gt_requestor) is specifying the [**enumeration context**](#gt_enumeration-context) in the form of GUID and the number of elements (wsen:maxElements) it is requesting out of the resultant objects at a time in the Pull response.

<soapenv:Envelope

xmlns:soapenv="http://www.w3.org/2003/05/soap-envelope"

xmlns:wsa="http://www.w3.org/2005/08/addressing">

<soapenv:Header>

<wsa:Action soapenv:mustUnderstand="1">http://schemas.xmlsoap.org/ws/2004/09/enumeration/Pull</wsa:Action>

<wsa:To soapenv:mustUnderstand="1">

net.tcp://server01.fabrikam.com:9389/ActiveDirectoryWebServices/Windows/Enumeration

</wsa:To>

<wsa:MessageID>

urn:uuid:b22747a9-ca15-41de-8c91-5a51bd88669c

</wsa:MessageID>

<wsa:ReplyTo>

<wsa:Address>

http://www.w3.org/2005/08/addressing/anonymous

</wsa:Address>

</wsa:ReplyTo>

</soapenv:Header>

<soapenv:Body>

<wsen:Pull xmlns:wsen="http://schemas.xmlsoap.org/ws/2004/09/enumeration">

<wsen:EnumerationContext>cda3e08b-cec1-42bb-8245-7cb6235a24b8</wsen:EnumerationContext>

<wsen:MaxTime>PT10S</wsen:MaxTime>

<wsen:MaxElements>2</wsen:MaxElements>

</wsen:Pull>

</soapenv:Body>

</soapenv:Envelope>

<a id="Section_4.4"></a>
## 4.4 WS-Enumerate Directory Services Extension "Pull" Response Example

This example demonstrates a [MS-WSDS] Pull response to the request specified in section [4.2](#Section_4.2) in context of the Enumeration defined in section [4.1](#Section_4.1).

<soapenv:Envelope

xmlns:soapenv="http://www.w3.org/2003/05/soap-envelope"

xmlns:wsa="http://www.w3.org/2005/08/addressing">

<soapenv:Header>

<wsa:Action soapenv:mustUnderstand="1">

http://schemas.xmlsoap.org/ws/2004/09/enumeration/PullResponse

</wsa:Action>

<wsa:RelatesTo>urn:uuid:b22747a9-ca15-41de-8c91-5a51bd88669c</wsa:RelatesTo>

<wsa:To soapenv:mustUnderstand="1">

http://www.w3.org/2005/08/addressing/anonymous

</wsa:To>

</soapenv:Header>

<soapenv:Body>

<wsen:PullResponse

xmlns:wsen="http://schemas.xmlsoap.org/ws/2004/09/enumeration"

xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"

xmlns:xsd="http://www.w3.org/2001/XMLSchema"

xmlns:ad="http://schemas.microsoft.com/2008/1/ActiveDirectory"

xmlns:addata="http://schemas.microsoft.com/2008/1/ActiveDirectory/Data">

<wsen:EnumerationContext>

cda3e08b-cec1-42bb-8245-7cb6235a24b8

</wsen:EnumerationContext>

<wsen:Items>

<addata:user>

<ad:objectReferenceProperty>

<ad:value xsi:type="xsd:string">

373e1409-cf88-41dc-b8ea-bdd27d54e073

</ad:value>

</ad:objectReferenceProperty>

<ad:container-hierarchy-parent>

<ad:value xsi:type="xsd:string">

41816238-95ca-48d9-9a99-3bd9ae9e0e42

</ad:value>

</ad:container-hierarchy-parent>

<ad:relativeDistinguishedName>

<ad:value xsi:type="xsd:string">CN=TestUser1</ad:value>

</ad:relativeDistinguishedName>

<addata:givenName LdapSyntax="UnicodeString">

<ad:value xsi:type="xsd:string">John</ad:value>

</addata:givenName>

</addata:user>

<addata:user>

<ad:objectReferenceProperty>

<ad:value xsi:type="xsd:string">

51d67624-d52d-421d-a0d6-1dc350abd009

</ad:value>

</ad:objectReferenceProperty>

<ad:container-hierarchy-parent>

<ad:value xsi:type="xsd:string">

41816238-95ca-48d9-9a99-3bd9ae9e0e42

</ad:value>

</ad:container-hierarchy-parent>

<ad:relativeDistinguishedName>

<ad:value xsi:type="xsd:string">CN=TestUser2</ad:value>

</ad:relativeDistinguishedName>

<addata:givenName LdapSyntax="UnicodeString">

<ad:value xsi:type="xsd:string">Robert</ad:value>

</addata:givenName>

</addata:user>

</wsen:Items>

</wsen:PullResponse>

</soapenv:Body>

</soapenv:Envelope>

<a id="Section_4.5"></a>
## 4.5 WS-Enumerate Directory Services Extension "FaultDetail" Example

The following example shows a WS-Enumeration specific fault response message returned by [**Active Directory Web Services**](#gt_active-directory-web-services-adws) with detail element (specified in [MS-ADDM](../MS-ADDM/MS-ADDM.md) section 2.6) to an Enumerate request containing an invalid attribute as a sorting property.

<soapenv:Envelope

xmlns:soapenv="http://www.w3.org/2003/05/soap-envelope"

xmlns:wsa="http://www.w3.org/2005/08/addressing">

<soapenv:Header>

<wsa:Action soapenv:mustUnderstand="1">

http://schemas.microsoft.com/2008/1/ActiveDirectory/Data/fault

</wsa:Action>

<wsa:RelatesTo>

urn:uuid:50cfcace-0035-403b-88bf-1355f19eec65

</wsa:RelatesTo>

<wsa:To soapenv:mustUnderstand="1">

http://www.w3.org/2005/08/addressing/anonymous

</wsa:To>

</soapenv:Header>

<soapenv:Body>

<soapenv:Fault>

<soapenv:Code>

<soapenv:Value>soapenv:Sender</soapenv:Value>

<soapenv:Subcode>

<soapenv:Value xmlns:a="http://schemas.microsoft.com/2008/1/ActiveDirectory">

a:InvalidPropertyFault

</soapenv:Value>

</soapenv:Subcode>

</soapenv:Code>

<soapenv:Reason>

<soapenv:Text xml:lang="en-US">Sorting or Selection Property is invalid.</soapenv:Text>

</soapenv:Reason>

<soapenv:Detail>

<EnumerateFault

xmlns="http://schemas.microsoft.com/2008/1/ActiveDirectory"

xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"

xmlns:xsd="http://www.w3.org/2001/XMLSchema">

<Error>Selection or Sort property's value is not a valid Active Directory attribute.</Error>

<ShortError>InvalidPropertyValueDetail</ShortError>

<InvalidProperty>

addata:Invalid_Entry

</InvalidProperty>

</EnumerateFault>

</soapenv:Detail>

</soapenv:Fault>

</soapenv:Body>

</soapenv:Envelope>

<a id="Section_5"></a>
# 5 Security

<a id="Section_5.1"></a>
## 5.1 Security Considerations for Implementers

There are no known additional security considerations for these protocol extensions, but implementers have to consider the security implications of the data that they expose by way of these extensions. When exposing access to [**directory objects**](#gt_directory-object) that can contain sensitive information, server implementers are encouraged to use transport mechanisms that support encryption and integrity-verification of the messages. Server implementers are also encouraged to enforce access controls prior to performing any operation against a directory object.

<a id="Section_5.2"></a>
## 5.2 Index of Security Parameters

This protocol extension has no security parameters.

<a id="Section_6"></a>
# 6 Appendix A: WSDL

The [MS-WSDS] extensions to the WS-Enumeration [[WSENUM]](https://go.microsoft.com/fwlink/?LinkId=90580) protocol do not define a [**WSDL**](#gt_web-services-description-language-wsdl) of their own, nor do they extend the [WSENUM] WSDL. The [**schema**](#gt_schema) of extension elements defined by the [MS-WSDS] protocol is specified in [Appendix B: Schema](#Section_7). For a server to implement this protocol, it uses the full WSDL definition of the [WSENUM] protocol, while substituting the schema definitions in Appendix B: Schema for similarly named [**XML**](#gt_xml) elements, attributes, complex types, and so on, shown in the [WSENUM] WSDL.

<a id="Section_7"></a>
# 7 Appendix B: Schema

This section provides the additional [**schema**](#gt_schema) elements for the extensions defined by the [MS-WSDS](#Section_2ded136c2fe24f7d8d09a7118815c6bb) protocol. For clarity, elements of the WS-Enumeration [[WSENUM]](https://go.microsoft.com/fwlink/?LinkId=90580) schema that are not extended by this protocol do not appear in the extended schema. To obtain the fully-extended [WSENUM] schema, the implementer must include nonextended [**XML**](#gt_xml) elements, attributes, complex types, and so on, from the [WSENUM] schema.

<!--[MS-WSDS] filter extension elements schema]-->

<xsd:schema xmlns:adlq="http://schemas.microsoft.com/2008/1/ActiveDirectory/Dialect/LdapQuery"

attributeFormDefault="unqualified"

elementFormDefault="qualified"

targetNamespace="http://schemas.microsoft.com/2008/1/ActiveDirectory/Dialect/LdapQuery"

xmlns:xsd="http://www.w3.org/2001/XMLSchema">

<xsd:element name = "LdapQuery">

<xsd:complexType>

<xsd:sequence>

<xsd:element name="Filter" type="xsd:string"

minOccurs="1" maxOccurs ="1" />

<xsd:element name="BaseObject" type="xsd:string"

minOccurs="1" maxOccurs="1" />

<xsd:element name="Scope" type="xsd:string"

minOccurs="1" maxOccurs="1" />

</xsd:sequence>

</xsd:complexType>

</xsd:element>

</xsd:schema>

<!--[MS-WSDS] selection and sorting extension elements schema]-->

<xsd:schema xmlns:ad="http://schemas.microsoft.com/2008/1/ActiveDirectory"

xmlns:addata="http://schemas.microsoft.com/2008/1/ActiveDirectory/Data"

attributeFormDefault="unqualified"

elementFormDefault="qualified"

targetNamespace="http://schemas.microsoft.com/2008/1/ActiveDirectory"

xmlns:xsd="http://www.w3.org/2001/XMLSchema">

<xsd:element name ="Selection">

<xsd:complexType>

<xsd:sequence>

<xsd:element name="SelectionProperty" type="xsd:string" minOccurs="1"

maxOccurs ="unbounded" />

</xsd:sequence>

<xsd:attribute name="Dialect"

fixed="http://schemas.microsoft.com/2008/1/ActiveDirectory/Dialect/XPath-Level-1" use="required"/>

</xsd:complexType>

</xsd:element>

<xsd:element name ="Sorting">

<xsd:complexType>

<xsd:sequence>

<xsd:element name="SortingProperty" minOccurs="1"

maxOccurs ="1">

<xsd:complexType>

<xsd:simpleContent>

<xsd:extension base="xsd:string">

<xsd:attribute name="Ascending" use="optional"

type="xsd:boolean" default="true"/>

</xsd:extension>

</xsd:simpleContent>

</xsd:complexType>

</xsd:element>

</xsd:sequence>

<xsd:attribute name="Dialect"

fixed="http://schemas.microsoft.com/2008/1/ActiveDirectory/Dialect/XPath-Level-1" use="required"/>

</xsd:complexType>

</xsd:element>

</xsd:schema>

<!--Extended [WSENUM] Schema-->

<xsd:schema

targetNamespace="http://schemas.xmlsoap.org/ws/2004/09/enumeration"

xmlns:wsen="http://schemas.xmlsoap.org/ws/2004/09/enumeration"

xmlns:wsa="http://schemas.xmlsoap.org/ws/2004/08/addressing"

xmlns:xsd="http://www.w3.org/2001/XMLSchema"

xmlns:adlq="http://schemas.microsoft.com/2008/1/ActiveDirectory/Dialect/LdapQuery"

xmlns:ad="http://schemas.microsoft.com/2008/1/ActiveDirectory"

xmlns:addata="http://schemas.microsoft.com/2008/1/ActiveDirectory/Data"

elementFormDefault="qualified"

blockDefault="#all">

<xsd:import namespace="http://schemas.xmlsoap.org/ws/2004/08/addressing"

schemaLocation="http://schemas.xmlsoap.org/ws/2004/08/addressing"/>

<xsd:import namespace="http://schemas.microsoft.com/2008/1/ActiveDirectory/Dialect/LdapQuery"/>

<xsd:import namespace="http://schemas.microsoft.com/2008/1/ActiveDirectory"/>

<!--Extended filter type for Enumerate [WSENUM] request-->

<xsd:complexType name="FilterType">

<xsd:sequence>

<xsd:element minOccurs="0" maxOccurs="1"

ref="adlq:LdapQuery" />

</xsd:sequence>

<xsd:attribute name="Dialect"

fixed="http://schemas.microsoft.com/2008/1/ActiveDirectory/Dialect/LdapQuery"/>

</xsd:complexType>

<!--

Other elements from [WSENUM] schema in section <!-- Types and global elements -->:

PositiveDurationType (simpleType)

NonNegativeDurationType (simpleType)

ExpirationType (simpleType)

EnumerationContextType (complexType)

ItemListType (complexType)

LanguageSpecificStringType (complexType)

-->

<!--Extended Enumerate [WSENUM] request-->

<xsd:element name="Enumerate">

<xsd:complexType>

<xsd:sequence>

<xsd:element name="EndTo" type="wsa:EndpointReferenceType" minOccurs="0" />

<xsd:element name="Expires" type="wsen:ExpirationType" minOccurs="0" />

<xsd:element name="Filter" type="wsen:FilterType" minOccurs="0" maxOccurs="1" />

<xsd:element ref="ad:Selection"

minOccurs="0" maxOccurs="1" />

<xsd:element ref="ad:Sorting"

minOccurs="0" maxOccurs="1" />

</xsd:sequence>

</xsd:complexType>

</xsd:element>

<!--

Other elements from [MS-WSPELD] schema in Appendix B:

ad:Controls (element)

-->

<!--Extended PULL [WSENUM] request-->

<xsd:element name="Pull">

<xsd:complexType>

<xsd:sequence>

<xsd:element name="EnumerationContext"

type="tns:EnumerationContextType" />

<xsd:element name="MaxTime"

type="tns:PositiveDurationType"

minOccurs="0" />

<xsd:element name="MaxElements"

type="xsd:positiveInteger"

minOccurs="0" />

<xsd:element name="MaxCharacters"

type="xsd:positiveInteger"

minOccurs="0" />

<xsd:element ref="ad:Controls"

minOccurs="0"

maxOccurs="1" />

</xsd:sequence>

</xsd:complexType>

</xsd:element>

<!--

Other elements from [WSENUM] schema, the following sections in [WSENUM]

Section <!-- Used for a fault response -->

SupportedDialect (element)

Section <!-- Enumerate response -->

EnumerateResponse (element)

Section <!-- Pull response -->

PullResponse (element)

Section <!-- Renew request -->

Renew (element)

Section <!-- Renew response -->

RenewResponse (element)

Section <!-- GetStatus request -->

GetStatus (element)

Section <!-- GetStatus response -->

GetStatusResponse (element)

Section <!-- Release request -->

Release (element)

Section <!—-- EnumerationEnd message -->

EnumerationEnd (elemnet)

EnumerationEndCodeType (simpleType)

OpenEnumarationEndCodeType (simpleType)

-->

</xsd:schema>

<a id="Section_8"></a>
# 8 Appendix C: Product Behavior

The information in this specification is applicable to the following Microsoft products or supplemental software. References to product versions include updates to those products.

The terms "earlier" and "later", when used with a product version, refer to either all preceding versions or all subsequent versions, respectively. The term "through" refers to the inclusive range of versions. Applicable Microsoft products are listed chronologically in this section.

- Windows Server 2008 R2 operating system
- Windows Server 2012 operating system
- Windows Server 2012 R2 operating system
- Windows Server 2016 operating system
- Windows Server operating system
- Windows Server 2019 operating system
- Windows Server 2022 operating system
- Windows Server 2025 operating system
Exceptions, if any, are noted in this section. If an update version, service pack or Knowledge Base (KB) number appears with a product name, the behavior changed in that update. The new behavior also applies to subsequent updates unless otherwise specified. If a product edition appears with the product version, behavior is different in that product edition.

Unless otherwise specified, any statement of optional behavior in this specification that is prescribed using the terms "SHOULD" or "SHOULD NOT" implies product behavior in accordance with the SHOULD or SHOULD NOT prescription. Unless otherwise specified, the term "MAY" implies that the product does not follow the prescription.

<1> Section 2.1: Microsoft implementations of WS-Enumeration: Directory Services Protocol Extensions use SOAP 1.2 [[SOAP1.2-1/2003]](https://go.microsoft.com/fwlink/?LinkId=90521) over a NET.TCP [MC-NMF](../MC-NMF/MC-NMF.md) transport binding. The transports used, as well as the authentication mechanisms supported and the [**endpoints**](#gt_endpoint) exposed, are specified in [MS-ADDM](../MS-ADDM/MS-ADDM.md) section 2.1.

<2> Section 3: The following products are applicable to WS-Enumeration: Directory Services Protocol Extensions:

- Active Directory Management Gateway Service contains the server implementation of WS-Enumeration: Directory Services Protocol Extensions.
- Remote Server Administration Tools (excluding Remote Server Administration Tools for Windows Vista operating system) contains the client implementation. For more information about Remote Server Administration Tools, see [[MSFT-RSAT]](https://go.microsoft.com/fwlink/?linkid=839006).
- Windows Server 2008 R2 and later have both the server and the client implementations.
Active Directory Management Gateway Service is available for Windows Server 2003 operating system with Service Pack 2 (SP2), Windows Server 2003 R2 operating system with Service Pack 2 (SP2), and Windows Server 2008 operating system.

<3> Section 3: Microsoft implementations of WS-Enumeration: Directory Services Protocol Extensions limit the validity of an [**enumeration context**](#gt_enumeration-context) to 30 minutes by default, defined as MaxEnumContextExpiration in the [**ADWS**](#gt_active-directory-web-services-adws) configuration settings [[MSDOCS-ADWS]](https://go.microsoft.com/fwlink/?linkid=2110729).

<4> Section 3.1.1: Microsoft implementations of WS-Enumeration: Directory Services Protocol Extensions use the mapping defined in [MS-ADDM] section 2.3.

<5> Section 3.1.3: All the endpoints of Microsoft implementations of WS-Enumeration: Directory Services Protocol Extensions including the Enumeration Interface specified in [MS-ADDM] section 2.1 listen on fixed TCP port 9389.

<6> Section 3.1.4: Microsoft implementations of WS-Enumeration: Directory Services Protocol Extensions do not support sending EnumerationEnd [**SOAP message**](#gt_soap-message) (defined in WS-Enumeration [[WSENUM]](https://go.microsoft.com/fwlink/?LinkId=90580) section 3.6) to the endpoint reference, when the enumeration terminates unexpectedly.

<7> Section 3.1.4.1: If the expiration time is not provided in the enumerate request, Microsoft implementations of WS-Enumeration: Directory Services Protocol Extensions assign the default value of 5 minutes duration to the expiration time.

<8> Section 3.1.4.1: Microsoft implementations of WS-Enumeration: Directory Services Protocol Extensions always return the expiration time in the enumerate response as an absolute time in Coordinated Universal Time (UTC) mode.

<9> Section 3.1.4.1.1.2: Microsoft implementations of WS-Enumeration: Directory Services Protocol Extensions return all of the [**default attributes**](#gt_default-attribute) and all of the synthetic attributes (defined in [MS-ADDM] section 2.3.3) when there is no selection element present in the [Enumerate](../MS-ADDM/MS-ADDM.md) request.

<10> Section 3.1.4.1.1.2.1: If selection property <ad:all> is specified in the Enumerate request, Microsoft implementations of WS-Enumeration: Directory Services Protocol Extensions return all of the default attributes and the synthetic attribute <ad:objectReferenceProperty> (defined in [MS-ADDM] section 2.3.3) in the SOAP response message for the Pull operation. In addition to <ad:all>, if certain [**constructed attributes**](#gt_constructed-attribute) are also specified as part of selection properties in the Enumerate request, then Microsoft implementations of WS-Enumeration: Directory Services Protocol Extensions also return the requested constructed attributes in the SOAP response message for the Pull operation.

<11> Section 3.1.4.1.3.1: Microsoft implementations of WS-Enumeration: Directory Services Protocol Extensions allow no more than 5 enumeration contexts to be created per client-to-server [**session**](#gt_session) by default, defined as MaxEnumCtxsPerSession in the ADWS configuration settings [MSDOCS-ADWS].

They allow no more than 100 enumeration contexts in total for the complete set of client-to-server sessions open at a time by default, defined as MaxEnumCtxsTotal in the ADWS configuration settings.

<12> Section 3.1.4.1.3.1: Microsoft implementations of WS-Enumeration: Directory Services Protocol Extensions use the fault detail defined in [MS-ADDM] section 2.6 for ad:EnumerationContextLimitExceeded fault.

<13> Section 3.1.4.1.3.4: Microsoft implementations of WS-Enumeration: Directory Services Protocol Extensions have the following four synthetic attributes: <ad:container-hierarchy-parent>, <ad:distinguishedName>, <ad:relativeDistinguishedName>, <ad:objectReferenceProperty>. See [MS-ADDM] section 2.3.3 for their definitions.

<14> Section 3.1.4.1.3.4: Microsoft implementations of WS-Enumeration: Directory Services Protocol Extensions use the fault detail defined in [MS-ADDM] section 2.6 for an ad:InvalidSortKey fault.

<15> Section 3.1.4.1.3.5: Microsoft implementations of WS-Enumeration: Directory Services Protocol Extensions use an element named ad:PullFault of the complex type ad:, which is defined in [MS-ADDM] section 2.6, for the wsen:CannotProcessFilter fault.

<16> Section 3.1.4.1.3.6: Microsoft implementations of WS-Enumeration: Directory Services Protocol Extensions perform validations on the [adlq:LdapQuery](#Section_3.1.4.1.1.1) element of a wsen:Enumerate request during the corresponding [wsen:pull](#Section_3.1.4.2) request processing. If an invalid adlq:LdapQuery element is received on a wsen:Enumerate request, a wsa2004:EndPointUnavailable fault is returned while processing the corresponding wsen:pull request.

<17> Section 3.1.4.1.3.6: Microsoft implementations of WS-Enumeration: Directory Services Protocol Extensions use the element ad:FaultDetail, which is defined in [MS-ADDM] section 2.6, for wsa2004:EndPointUnavailable faults.

<18> Section 3.1.4.2: Microsoft implementations of WS-Enumeration: Directory Services Protocol Extensions do not limit the number of characters in the Pull response by not supporting the wsen:MaxCharacters element in the client request.

<19> Section 3.1.4.2.1.1: Microsoft implementations of WS-Enumeration: Directory Services Protocol Extensions use an element named ad:PullFault of the complex type ad:FaultDetailType, which is defined in [MS-ADDM] section 2.6, for an ad:MaxCharsNotSupported fault.

<20> Section 3.1.4.2.1.2: Microsoft implementations of WS-Enumeration: Directory Services Protocol Extensions use the element ad:FaultDetail, which is defined in [MS-ADDM] section 2.6, for wsen:InvalidEnumerationContext faults.

<21> Section 3.1.4.2.1.3: Microsoft implementations of WS-Enumeration: Directory Services Protocol Extensions use the element ad:FaultDetail, which is defined in [MS-ADDM] section 2.6, for wsa2004:DestinationUnreachable faults.

<22> Section 3.1.4.2.1.3: Microsoft implementations of WS-Enumeration: Directory Services Protocol Extensions generate a receiver fault rather than a sender fault as specified in the section.

<23> Section 3.1.4.2.1.4: Microsoft implementations of WS-Enumeration: Directory Services Protocol Extensions use the element ad:FaultDetail, which is defined in [MS-ADDM] section 2.6, for wsa2004:EndpointUnavailable faults.

<24> Section 3.1.4.2.1.5: Microsoft implementations of WS-Enumeration: Directory Services Protocol Extensions use the element ad:FaultDetail, which is defined in [MS-ADDM] section 2.6, for ad:MaxTimeExceedsLimit faults.

<25> Section 3.1.4.3.1.1: Microsoft implementations of WS-Enumeration: Directory Services Protocol Extensions use the element ad:FaultDetail, which is defined in [MS-ADDM] section 2.6, for wsen:InvalidEnumerationContext faults.

<26> Section 3.1.4.3.1.2: Microsoft implementations of WS-Enumeration: Directory Services Protocol Extensions use the element ad:FaultDetail, which is defined in [MS-ADDM] section 2.6, for wsa2004:EndpointUnavailable faults.

<27> Section 3.1.4.4.1.1: Microsoft implementations of WS-Enumeration: Directory Services Protocol Extensions use the element ad:FaultDetail, which is defined in [MS-ADDM] section 2.6, for wsen:InvalidEnumerationContext faults.

<28> Section 3.1.4.4.1.2: Microsoft implementations of WS-Enumeration: Directory Services Protocol Extensions use the element ad:FaultDetail, which is defined in [MS-ADDM] section 2.6, for wsa2004:EndpointUnavailable faults.

<29> Section 3.1.4.5.1.1: Microsoft implementations of WS-Enumeration: Directory Services Protocol Extensions use the element ad:FaultDetail, which is defined in [MS-ADDM] section 2.6, for wsa2004:EndpointUnavailable faults.

<a id="Section_9"></a>
# 9 Change Tracking

This section identifies changes that were made to this document since the last release. Changes are classified as Major, Minor, or None.

The revision class **Major** means that the technical content in the document was significantly revised. Major changes affect protocol interoperability or implementation. Examples of major changes are:

- A document revision that incorporates changes to interoperability requirements.
- A document revision that captures changes to protocol functionality.
The revision class **Minor** means that the meaning of the technical content was clarified. Minor changes do not affect protocol interoperability or implementation. Examples of minor changes are updates to clarify ambiguity at the sentence, paragraph, or table level.

The revision class **None** means that no new technical changes were introduced. Minor editorial and formatting changes may have been made, but the relevant technical content is identical to the last released version.

The changes made to this document are listed in the following table. For more information, please contact [dochelp@microsoft.com](mailto:dochelp@microsoft.com).

| Section | Description | Revision class |
| --- | --- | --- |
| [8](#Section_8) Appendix C: Product Behavior | Added Windows Server 2025 to the list of applicable products. | Major |


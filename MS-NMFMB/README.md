# [MS-NMFMB]: .NET Message Framing MSMQ Binding Protocol

Last updated: 3/13/2019

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
      - [2.2.3.1 MSMQ Best-Effort](#Section_2.2.3.1)
      - [2.2.3.2 MSMQ Session](#Section_2.2.3.2)
      - [2.2.3.3 MSMQ Volatile](#Section_2.2.3.3)
      - [2.2.3.4 MSMQ Authenticated](#Section_2.2.3.4)
      - [2.2.3.5 MSMQ Windows Domain](#Section_2.2.3.5)
</details>

<details>
<summary>3 Protocol Details</summary>

- [3 Protocol Details](#Section_3)
  - [3.1 Common Details](#Section_3.1)
    - [3.1.1 Abstract Data Model](#Section_3.1.1)
      - [3.1.1.1 NetMsmqMessage](#Section_3.1.1.1)
      - [3.1.1.2 net.msmq URI](#Section_3.1.1.2)
      - [3.1.1.3 MQPCO](#Section_3.1.1.3)
    - [3.1.2 Timers](#Section_3.1.2)
    - [3.1.3 Initialization](#Section_3.1.3)
    - [3.1.4 Higher-Layer Triggered Events](#Section_3.1.4)
    - [3.1.5 Message Processing Events and Sequencing Rules](#Section_3.1.5)
    - [3.1.6 Timer Events](#Section_3.1.6)
    - [3.1.7 Other Local Events](#Section_3.1.7)
      - [3.1.7.1 Construct Direct Format Name](#Section_3.1.7.1)
      - [3.1.7.2 Construct Public Format Name](#Section_3.1.7.2)
      - [3.1.7.3 Construct SRMP Format Name](#Section_3.1.7.3)
  - [3.2 Initiator Details](#Section_3.2)
    - [3.2.1 Abstract Data Model](#Section_3.2.1)
      - [3.2.1.1 SendQueue](#Section_3.2.1.1)
      - [3.2.1.2 SendNetMsmqMessage](#Section_3.2.1.2)
      - [3.2.1.3 UseActiveDirectory](#Section_3.2.1.3)
      - [3.2.1.4 QueueTransferProtocol](#Section_3.2.1.4)
      - [3.2.1.5 Message](#Section_3.2.1.5)
      - [3.2.1.6 Transaction](#Section_3.2.1.6)
    - [3.2.2 Timers](#Section_3.2.2)
    - [3.2.3 Initialization](#Section_3.2.3)
    - [3.2.4 Higher-Layer Triggered Events](#Section_3.2.4)
      - [3.2.4.1 Initialize Session](#Section_3.2.4.1)
      - [3.2.4.2 Send Message](#Section_3.2.4.2)
      - [3.2.4.3 Session Close](#Section_3.2.4.3)
    - [3.2.5 Message Processing Events and Sequencing Rules](#Section_3.2.5)
      - [3.2.5.1 Constructing an MSMQ Message](#Section_3.2.5.1)
    - [3.2.6 Timer Events](#Section_3.2.6)
    - [3.2.7 Other Local Events](#Section_3.2.7)
      - [3.2.7.1 Open Queue for Send](#Section_3.2.7.1)
  - [3.3 Receiver Details](#Section_3.3)
    - [3.3.1 Abstract Data Model](#Section_3.3.1)
      - [3.3.1.1 ReceiveQueue](#Section_3.3.1.1)
    - [3.3.2 Timers](#Section_3.3.2)
    - [3.3.3 Initialization](#Section_3.3.3)
    - [3.3.4 Higher-Layer Triggered Events](#Section_3.3.4)
      - [3.3.4.1 Initialize Session](#Section_3.3.4.1)
      - [3.3.4.2 Receive Message](#Section_3.3.4.2)
      - [3.3.4.3 Session Close](#Section_3.3.4.3)
    - [3.3.5 Message Processing Events and Sequencing Rules](#Section_3.3.5)
    - [3.3.6 Timer Events](#Section_3.3.6)
    - [3.3.7 Other Local Events](#Section_3.3.7)
      - [3.3.7.1 Open Queue for Receive](#Section_3.3.7.1)
</details>

<details>
<summary>4 Protocol Examples</summary>

- [4 Protocol Examples](#Section_4)
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
  - [6.1 .Net Message Framing MSMQ Binding Protocol WSDL and Policy Assertions](#Section_6.1)
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

This document specifies the .NET Message Framing MSMQ Binding Protocol, as well as a collection of Web service policy assertions that define behavior for the interaction with a Web service entity. This set of policy assertions pertains to an endpoint using the .NET Message Framing MSMQ Binding Protocol as the transport. This document does not define any specific Web service endpoints or message exchanges.

Sections 1.5, 1.8, 1.9, 2, and 3 of this specification are normative. All other sections and examples in this specification are informative.

<a id="Section_1.1"></a>
## 1.1 Glossary

This document uses the following terms:

<a id="gt_best-effort"></a>
**best effort**: Indicates that a Message Queuing System makes a best effort to meet the specified [**message**](#gt_message) delivery assurance, but does not raise an error if the delivery assurance is not met.

<a id="gt_certificate"></a>
**certificate**: A certificate is a collection of attributes and extensions that can be stored persistently. The set of attributes in a certificate can vary depending on the intended usage of the certificate. A certificate securely binds a public key to the entity that holds the corresponding private key. A certificate is commonly used for authentication and secure exchange of information on open networks, such as the Internet, extranets, and intranets. Certificates are digitally signed by the issuing certification authority (CA) and can be issued for a user, a computer, or a service. The most widely accepted format for certificates is defined by the ITU-T X.509 version 3 international standards. For more information about attributes and extensions, see [[RFC3280]](https://go.microsoft.com/fwlink/?LinkId=90414) and [[X509]](https://go.microsoft.com/fwlink/?LinkId=90590) sections 7 and 8.

<a id="gt_endpoint"></a>
**endpoint**: A node that sends or receives a protocol stream.

<a id="gt_envelope-record"></a>
**envelope record**: A record that contains data, such as a SOAP message. For more information about envelope records, see [[SOAP1.1]](https://go.microsoft.com/fwlink/?LinkId=90520) and [[SOAP1.2-1/2007]](https://go.microsoft.com/fwlink/?LinkId=94664).

<a id="gt_express-message"></a>
**express message**: A volatile [**message**](#gt_message) that does not persist through queue manager restarts. These express [**messages**](#gt_message) provide best-effort, at-most-once delivery assurance.

<a id="gt_format-name"></a>
**format name**: A name that is used to reference a queue when making calls to API functions.

<a id="gt_globally-unique-identifier-guid"></a>
**globally unique identifier (GUID)**: A term used interchangeably with universally unique identifier (UUID) in Microsoft protocol technical documents (TDs). Interchanging the usage of these terms does not imply or require a specific algorithm or mechanism to generate the value. Specifically, the use of this term does not imply or require that the algorithms described in [[RFC4122]](https://go.microsoft.com/fwlink/?LinkId=90460) or [[C706]](https://go.microsoft.com/fwlink/?LinkId=89824) must be used for generating the [**GUID**](#gt_globally-unique-identifier-guid). See also universally unique identifier (UUID).

<a id="gt_hypertext-transfer-protocol-http"></a>
**Hypertext Transfer Protocol (HTTP)**: An application-level protocol for distributed, collaborative, hypermedia information systems (text, graphic images, sound, video, and other multimedia files) on the World Wide Web.

<a id="gt_initiator"></a>
**initiator**: The node that initiates the connection over which a protocol stream flows.

<a id="gt_ipv4-address-in-string-format"></a>
**IPv4 address in string format**: A string representation of an IPv4 address in dotted-decimal notation, as described in [[RFC1123]](https://go.microsoft.com/fwlink/?LinkId=90268) section 2.1.

<a id="gt_message"></a>
**message**: A data structure representing a unit of data transfer between distributed applications. A message has message properties, which may include message header properties, a message body property, and message trailer properties.

<a id="gt_receiver"></a>
**receiver**: The node that is the receiver of the protocol stream.

<a id="gt_recoverable-message"></a>
**recoverable message**: A [**message**](#gt_message) that persists through queue manager restarts and provides best-effort, at-most-once delivery assurance.

<a id="gt_soap"></a>
**SOAP**: A lightweight protocol for exchanging structured information in a decentralized, distributed environment. [**SOAP**](#gt_soap) uses XML technologies to define an extensible messaging framework, which provides a message construct that can be exchanged over a variety of underlying protocols. The framework has been designed to be independent of any particular programming model and other implementation-specific semantics. SOAP 1.2 supersedes SOAP 1.1. See [[SOAP1.2-1/2003]](https://go.microsoft.com/fwlink/?LinkId=90521).

<a id="gt_web-service"></a>
**web service**: A software entity that responds to SOAP messages ([SOAP1.1],.[[WSDL]](https://go.microsoft.com/fwlink/?LinkId=90577)).

<a id="gt_web-services-description-language-wsdl"></a>
**Web Services Description Language (WSDL)**: An XML format for describing network services as a set of endpoints that operate on messages that contain either document-oriented or procedure-oriented information. The operations and messages are described abstractly and are bound to a concrete network protocol and message format in order to define an endpoint. Related concrete endpoints are combined into abstract endpoints, which describe a network service. WSDL is extensible, which allows the description of endpoints and their messages regardless of the message formats or network protocols that are used.

<a id="gt_x509"></a>
**X.509**: An ITU-T standard for public key infrastructure subsequently adapted by the IETF, as specified in [RFC3280].

<a id="gt_xml-namespace"></a>
**XML namespace**: A collection of names that is used to identify elements, types, and attributes in XML documents identified in a URI reference [[RFC3986]](https://go.microsoft.com/fwlink/?LinkId=90453). A combination of XML namespace and local name allows XML documents to use elements, types, and attributes that have the same names but come from different sources. For more information, see [[XMLNS-2ED]](https://go.microsoft.com/fwlink/?LinkId=90602).

<a id="gt_xml-schema"></a>
**XML schema**: A description of a type of XML document that is typically expressed in terms of constraints on the structure and content of documents of that type, in addition to the basic syntax constraints that are imposed by XML itself. An XML schema provides a view of a document type at a relatively high level of abstraction.

**MAY, SHOULD, MUST, SHOULD NOT, MUST NOT:** These terms (in all caps) are used as defined in [[RFC2119]](https://go.microsoft.com/fwlink/?LinkId=90317). All statements of optional behavior use either MAY, SHOULD, or SHOULD NOT.

<a id="Section_1.2"></a>
## 1.2 References

Links to a document in the Microsoft Open Specifications library point to the correct section in the most recently published version of the referenced document. However, because individual documents in the library are not updated at the same time, the section numbers in the documents may not match. You can confirm the correct section numbering by checking the [Errata](https://go.microsoft.com/fwlink/?linkid=850906).

<a id="Section_1.2.1"></a>
### 1.2.1 Normative References

We conduct frequent surveys of the normative references to assure their continued availability. If you have any issue with finding a normative reference, please contact [dochelp@microsoft.com](mailto:dochelp@microsoft.com). We will assist you in finding the relevant information.

[MC-MQSRM] Microsoft Corporation, "[Message Queuing (MSMQ): SOAP Reliable Messaging Protocol (SRMP)](../MC-MQSRM/MC-MQSRM.md)".

[MC-NMF] Microsoft Corporation, "[.NET Message Framing Protocol](../MC-NMF/MC-NMF.md)".

[MS-DTYP] Microsoft Corporation, "[Windows Data Types](../MS-DTYP/MS-DTYP.md)".

[MS-MQDMPR] Microsoft Corporation, "[Message Queuing (MSMQ): Common Data Model and Processing Rules](../MS-MQDMPR/MS-MQDMPR.md)".

[MS-MQMQ] Microsoft Corporation, "[Message Queuing (MSMQ): Data Structures](../MS-MQMQ/MS-MQMQ.md)".

[MS-MQQB] Microsoft Corporation, "[Message Queuing (MSMQ): Message Queuing Binary Protocol](../MS-MQQB/MS-MQQB.md)".

[MS-WSPOL] Microsoft Corporation, "[Web Services: Policy Assertions and WSDL Extensions](../MS-WSPOL/MS-WSPOL.md)".

[RFC2119] Bradner, S., "Key words for use in RFCs to Indicate Requirement Levels", BCP 14, RFC 2119, March 1997, [http://www.rfc-editor.org/rfc/rfc2119.txt](https://go.microsoft.com/fwlink/?LinkId=90317)

[RFC3280] Housley, R., Polk, W., Ford, W., and Solo, D., "Internet X.509 Public Key Infrastructure Certificate and Certificate Revocation List (CRL) Profile", RFC 3280, April 2002, [http://www.ietf.org/rfc/rfc3280.txt](https://go.microsoft.com/fwlink/?LinkId=90414)

[RFC3986] Berners-Lee, T., Fielding, R., and Masinter, L., "Uniform Resource Identifier (URI): Generic Syntax", STD 66, RFC 3986, January 2005, [http://www.rfc-editor.org/rfc/rfc3986.txt](https://go.microsoft.com/fwlink/?LinkId=90453)

[SOAP1.1] Box, D., Ehnebuske, D., Kakivaya, G., et al., "Simple Object Access Protocol (SOAP) 1.1", W3C Note, May 2000, [http://www.w3.org/TR/2000/NOTE-SOAP-20000508/](https://go.microsoft.com/fwlink/?LinkId=90520)

[SOAP1.2-1/2007] Gudgin, M., Hadley, M., Mendelsohn, N., et al., "SOAP Version 1.2 Part 1: Messaging Framework (Second Edition)", W3C Recommendation, April 2007, [http://www.w3.org/TR/2007/REC-soap12-part1-20070427/](https://go.microsoft.com/fwlink/?LinkId=94664)

[WS-Policy] Siddharth, B., Box, D., Chappell, D., et al., "Web Services Policy 1.2 - Framework (WS-Policy)", April 2006, [http://www.w3.org/Submission/2006/SUBM-WS-Policy-20060425/](https://go.microsoft.com/fwlink/?LinkId=92757)

[WSDL] Christensen, E., Curbera, F., Meredith, G., and Weerawarana, S., "Web Services Description Language (WSDL) 1.1", W3C Note, March 2001, [http://www.w3.org/TR/2001/NOTE-wsdl-20010315](https://go.microsoft.com/fwlink/?LinkId=90577)

[XMLNS] Bray, T., Hollander, D., Layman, A., et al., Eds., "Namespaces in XML 1.0 (Third Edition)", W3C Recommendation, December 2009, [http://www.w3.org/TR/2009/REC-xml-names-20091208/](https://go.microsoft.com/fwlink/?LinkId=191840)

<a id="Section_1.2.2"></a>
### 1.2.2 Informative References

[MS-MQOD] Microsoft Corporation, "[Message Queuing Protocols Overview](../MS-MQOD/MS-MQOD.md)".

[MS-NETOD] Microsoft Corporation, "[Microsoft .NET Framework Protocols Overview](../MS-NETOD/MS-NETOD.md)".

<a id="Section_1.3"></a>
## 1.3 Overview

The .Net Message Framing MSMQ Binding Protocol specifies how the mechanism described in [MC-NMF](../MC-NMF/MC-NMF.md) for framing messages over any transport protocol can be applied over Message Queue (MSMQ). This protocol specification also includes how to indicate the use of .NET Message Framing over MSMQ as a [**SOAP**](#gt_soap) transport in [**Web Services Description Language (WSDL)**](#gt_web-services-description-language-wsdl). Finally, the protocol details how the protocol behavior changes if any of the set of policy assertions (as defined in section 1.1 of [MS-WSPOL](../MS-WSPOL/MS-WSPOL.md)) are set on an [**endpoint**](#gt_endpoint). This document specifies the following policy assertions:

- MSMQ Best-Effort
The MSMQ Best-Effort policy assertion indicates that a [**Web service**](#gt_web-service) endpoint requires messages to be delivered in a best-effort manner, which does not guarantee that the message will be delivered only one time.

- MSMQ Session
The MSMQ Session policy assertion indicates that a Web service endpoint requires multiple [**envelope records**](#gt_envelope-record) to be sent within a single message.

- MSMQ Volatile
The MSMQ Volatile policy assertion indicates that a Web service endpoint requires the use of express messages; otherwise, [**recoverable message**](#gt_recoverable-message)s are required.

- MSMQ Authenticated
The MSMQ Authenticated policy assertion indicates that a Web service endpoint requires MSMQ messages to be authenticated, as described in section 3.1.5.8.3 of [MS-MQQB](../MS-MQQB/MS-MQQB.md).

- MSMQ Windows Domain
The MSMQ Windows Domain policy assertion indicates that a Web service endpoint requires authentication to be performed using the sender's security identifier (SID), as defined in [MS-DTYP](../MS-DTYP/MS-DTYP.md) section 2.4.2. If this policy assertion is not set, the service endpoint requires authentication to be performed using [**X.509**](#gt_x509) [**certificates**](#gt_certificate) [[RFC3280]](https://go.microsoft.com/fwlink/?LinkId=90414).

These assertions are used to ensure the client is using the Web service through the binding as intended.

The .Net Message Framing MSMQ Binding Protocol makes use of MSMQ protocols to set the proper message attributes in order to conform with policy assertions set by the Web service.

<a id="Section_1.4"></a>
## 1.4 Relationship to Other Protocols

This protocol uses events defined in Message Queuing (MSMQ): Common Data Model and Processing Rules [MS-MQDMPR](../MS-MQDMPR/MS-MQDMPR.md) to transfer messages between the client and the destination [**endpoint**](#gt_endpoint).

This protocol uses MSMQ as the transport to send [**envelope records**](#gt_envelope-record), as specified in section 2.2.4 of [MC-NMF](../MC-NMF/MC-NMF.md).

<a id="Section_1.5"></a>
## 1.5 Prerequisites/Preconditions

The .NET Message Framing MSMQ Binding Protocol requires that both the [**initiator**](#gt_initiator) and [**receiver**](#gt_receiver) satisfy all preconditions stated in section 2.4 of [MS-MQOD](../MS-MQOD/MS-MQOD.md). The **Queue**, as defined in section 3.1.1.2 of [MS-MQDMPR](../MS-MQDMPR/MS-MQDMPR.md), is used for communication exists and is accessible by both the sender and receiver.

<a id="Section_1.6"></a>
## 1.6 Applicability Statement

The .NET Message Framing MSMQ Binding Protocol is applicable in scenarios where an [**initiator**](#gt_initiator) and a [**receiver**](#gt_receiver) require a communication mechanism to send and receive [**envelope records**](#gt_envelope-record) [MC-NMF](../MC-NMF/MC-NMF.md) over MSMQ. This is the case if the WSDL file contains a [**SOAP**](#gt_soap) binding element with a transport value of "http://schemas.microsoft.com/soap/msmq" as specified in section [2.1](../MC-NMF/MC-NMF.md).

<a id="Section_1.7"></a>
## 1.7 Versioning and Capability Negotiation

This protocol requires .NET Message Framing Protocol version 1.0 [MC-NMF](../MC-NMF/MC-NMF.md). When this protocol is implemented by using [**SOAP**](#gt_soap), it requires the use of SOAP version 1.1 [[SOAP1.1]](https://go.microsoft.com/fwlink/?LinkId=90520) or SOAP version 1.2 [[SOAP1.2-1/2007]](https://go.microsoft.com/fwlink/?LinkId=94664).

This protocol does not support capability negotiation.

<a id="Section_1.8"></a>
## 1.8 Vendor-Extensible Fields

None.

<a id="Section_1.9"></a>
## 1.9 Standards Assignments

None.

<a id="Section_2"></a>
# 2 Messages

The following sections specify the message transport and the common data types of the .Net Message Framing MSMQ Binding Protocol.

<a id="Section_2.1"></a>
## 2.1 Transport

The .NET Message Framing MSMQ Binding Protocol requires MSMQ.

An [**endpoint**](#gt_endpoint) that uses the .NET Message Framing MSMQ Binding Protocol with [[SOAP1.2-1/2007]](https://go.microsoft.com/fwlink/?LinkId=94664) MUST specify the value of the transport attribute of the <soap12:binding> element [[WSDL]](https://go.microsoft.com/fwlink/?LinkId=90577) to be "http://schemas.microsoft.com/soap/msmq".

An endpoint that uses the .NET Message Framing MSMQ Binding Protocol with [[SOAP1.1]](https://go.microsoft.com/fwlink/?LinkId=90520) MUST specify the value of the transport attribute of the <soap:binding> element [WSDL] to be "http://schemas.microsoft.com/soap/msmq".

<a id="Section_2.2"></a>
## 2.2 Common Message Syntax

<a id="Section_2.2.1"></a>
### 2.2.1 Namespaces

This specification defines and references various [**XML namespaces**](#gt_xml-namespace) using the mechanisms specified in [[XMLNS]](https://go.microsoft.com/fwlink/?LinkId=191840). Although this specification associates a specific XML namespace prefix for each XML namespace that is used, the choice of any particular XML namespace prefix is implementation-specific and is not significant for interoperability.

| Prefix | Namespace URI | Reference |
| --- | --- | --- |
| msmq | http://schemas.microsoft.com/ws/06/2004/mspolicy/msmq | This specification |
| soap | http://schemas.xmlsoap.org/wsdl/soap | [[WSDL]](https://go.microsoft.com/fwlink/?LinkId=90577) |
| soap12 | http://schemas.xmlsoap.org/wsdl/soap12/ | [WSDL] |
| wsdl | http://schemas.xmlsoap.org/wsdl/ | [WSDL] |
| wsp | http://schemas.xmlsoap.org/ws/2004/09/policy | [[WS-Policy]](https://go.microsoft.com/fwlink/?LinkId=92757) |

<a id="Section_2.2.2"></a>
### 2.2.2 Messages

This specification does not define any messages.

<a id="Section_2.2.3"></a>
### 2.2.3 Elements

The following sections contain the [**XML schema**](#gt_xml-schema) description for the policy assertions defined in this document and the schema for the transport that this protocol operates on. The following elements are policy assertions and belong to the wsp:Policy tag, as described in [[WS-Policy]](https://go.microsoft.com/fwlink/?LinkId=92757).

<a id="Section_2.2.3.1"></a>
#### 2.2.3.1 MSMQ Best-Effort

<msmq:BestEffort

xmlns:msmq="http://schemas.microsoft.com/ws/06/2004/mspolicy/msmq" />

The following describes the content model of the <MsmqBestEffort> element.

**/msmq:BestEffort**: A [**Web service**](#gt_web-service) [**endpoint**](#gt_endpoint) with MSMQ best-effort policy assertion MUST NOT transfer messages as part of a transaction which ensures exactly once guarantee. The client and service instead MUST make a [**best effort**](#gt_best-effort) attempt to deliver messages.

<a id="Section_2.2.3.2"></a>
#### 2.2.3.2 MSMQ Session

<msmq:Session

xmlns:msmq="http://schemas.microsoft.com/ws/06/2004/mspolicy/msmq" />

The following describes the content model of the <MsmqSession> element.

**/msmq:Session**: A [**Web service**](#gt_web-service) [**endpoint**](#gt_endpoint) with the MSMQ session policy assertion MUST require the [**initiator**](#gt_initiator) to create a connection with the service in which numerous messages are sent within a single MSMQ [**message**](#gt_message).

<a id="Section_2.2.3.3"></a>
#### 2.2.3.3 MSMQ Volatile

<msmq:Volatile

xmlns:msmq="http://schemas.microsoft.com/ws/06/2004/mspolicy/msmq" />

The following describes the content model of the <MsmqVolatile> element.

**/msmq:Volatile**: A [**Web service**](#gt_web-service) [**endpoint**](#gt_endpoint) with MSMQ volatile policy assertion MUST require the client to send [**express message**](#gt_express-message)s.

<a id="Section_2.2.3.4"></a>
#### 2.2.3.4 MSMQ Authenticated

<msmq:Authenticated

xmlns:msmq="http://schemas.microsoft.com/ws/06/2004/mspolicy/msmq" />

The following describes the content model of the <MsmqAuthenticated> element.

**/msmq:Authenticated**: A [**Web service**](#gt_web-service) [**endpoint**](#gt_endpoint) with MSMQ authenticated policy assertion MUST require MSMQ messages sent on the transport to be authenticated.

<a id="Section_2.2.3.5"></a>
#### 2.2.3.5 MSMQ Windows Domain

<msmq:WindowsDomain

xmlns:msmq="http://schemas.microsoft.com/ws/06/2004/mspolicy/msmq" />

The following describes the content model of the <MsmqWindowsDomain> element.

**/msmq:WindowsDomain**: This assertion only applies to policies which also include the MSMQ Authenticated policy assertion. A Web service [**endpoint**](#gt_endpoint) with MSMQ Windows Domain policy assertion MUST authenticate the user using Windows logon authentication; otherwise, if this assertion is not set, they MUST authenticate the user using [**X.509**](#gt_x509) [**certificates**](#gt_certificate).

<a id="Section_3"></a>
# 3 Protocol Details

A node can participate in this protocol in one of two roles: [**initiator**](#gt_initiator) or [**receiver**](#gt_receiver). An initiator begins the process by opening and delivering messages to a queue that the receiver is monitoring. MSMQ is used as the lower-level protocol transport for performing the .NET Message Framing Protocol [MC-NMF](../MC-NMF/MC-NMF.md).

<a id="Section_3.1"></a>
## 3.1 Common Details

<a id="Section_3.1.1"></a>
### 3.1.1 Abstract Data Model

<a id="Section_3.1.1.1"></a>
#### 3.1.1.1 NetMsmqMessage

A **NetMsmqMessage** is a structure that encapsulates the data placed into a **Message**.**Body**, as defined in section 3.1.1.12 of [MS-MQDMPR](../MS-MQDMPR/MS-MQDMPR.md). It contains the following attributes:

**Preamble:** A preamble message as defined in section 2.2.6 of the .NET Message Framing Protocol [MC-NMF](../MC-NMF/MC-NMF.md).

**EnvelopeRecords:** A single or multiple [**envelope record**](#gt_envelope-record) as defined in section 2.2.4 of the .NET Message Framing Protocol [MC-NMF].

**EndRecord:** An end record as specified in section 2.2.3.9 of the .NET Message Framing Protocol [MC-NMF].

<a id="Section_3.1.1.2"></a>
#### 3.1.1.2 net.msmq URI

A **net.msmq URI** is a URI that satisfies the following constraints:

- The scheme component of the URI MUST be net.msmq.
- The URI MUST be a hierarchical URI.
- The authority component of the URI MUST be specified.
- The authority component of the URI MUST NOT include user information.
- The URI MUST NOT include the query URI component.
- The URI MUST NOT include the fragment URI component.
<a id="Section_3.1.1.3"></a>
#### 3.1.1.3 MQPCO

An **MQPCO** is a configuration object as defined in section 3.1.3 of [MC-NMF](../MC-NMF/MC-NMF.md), but with the following constraints:

- The protocol version, section 2.2.3.1 [MC-NMF], specified by the MQPCO MUST be 1.0.
- If the MSMQ Session policy assertion described in section [2.2.3.2](../MC-NMF/MC-NMF.md) is set, then the communication mode, section 2.2.3.2 [MC-NMF], MUST be Simplex.
- Otherwise, the communication mode MUST be Singleton Sized.
- The Via URI, section 2.2.3.3 of [MC-NMF], specified by the MQPCO MUST be a **net.msmq URI** as specified in [3.1.1.2](../MC-NMF/MC-NMF.md).
<a id="Section_3.1.2"></a>
### 3.1.2 Timers

None.

<a id="Section_3.1.3"></a>
### 3.1.3 Initialization

A MQPCO with an uninitialized transport is made available to the protocol as part of a higher-layer triggered event.

<a id="Section_3.1.4"></a>
### 3.1.4 Higher-Layer Triggered Events

None.

<a id="Section_3.1.5"></a>
### 3.1.5 Message Processing Events and Sequencing Rules

None.

<a id="Section_3.1.6"></a>
### 3.1.6 Timer Events

None.

<a id="Section_3.1.7"></a>
### 3.1.7 Other Local Events

<a id="Section_3.1.7.1"></a>
#### 3.1.7.1 Construct Direct Format Name

This event MUST be generated with the following argument:

- *iVia*: A URI, as specified in [[RFC3986]](https://go.microsoft.com/fwlink/?LinkId=90453).
**Return Values**:

- **rFormatName**: The constructed [**format name**](#gt_format-name).
The protocol MUST construct a direct format name as specified in section 2.1.2 for [MS-MQMQ](../MS-MQMQ/MS-MQMQ.md), as follows:

- Initialize **rFormat** to "DIRECT=".
- If the host section as defined in section 3.2.2 of [RFC3986], of the Via URI is localhost:
- Append "OS:" to **rFormat**.
- Otherwise:
- If the host section of the Via URI is an [**IPv4 address in string format**](#gt_ipv4-address-in-string-format):
- Append "TCP:" to **rFormat**.
- Otherwise:
- Append "OS:" to **rFormat**.
- Append the host portion of the Via URI to **rFormat**.
- Append "\" to **rFormat**.
- Append the relative path of the URI as defined in section 3.3 of [RFC3986] to **rFormat**.
- Set *rFormatName* to *rFormat*.
<a id="Section_3.1.7.2"></a>
#### 3.1.7.2 Construct Public Format Name

This event MUST be generated with the following argument:

- *iVia*: A URI as specified in [[RFC3986]](https://go.microsoft.com/fwlink/?LinkId=90453).
**Return Values**:

- **rReturnStatus**: A status code signifying the success or failure of the raised [MS-MQDMPR](../MS-MQDMPR/MS-MQDMPR.md) events.
- **rFormatName**: The constructed [**format name**](#gt_format-name).
The protocol MUST construct a public format name as specified in section 2.1.3 of [MS-MQMQ](../MS-MQMQ/MS-MQMQ.md), as follows:

- Initialize **rPathName** to *iVia*.
- Remove the "net.msmq://" prefix from **rPathName** to create a path name
- Generate a Read Directory event as specified in section 3.1.7.1.20 of [MS-MQDMPR], with the following arguments.
- *iDirectoryObjectType* = "Queue"
- *iFilter* = An array of the following attribute-filter expressions:
- Queue.Pathname EQUALS **rPathName**
- *iAttributeList* : = An array of the following queue attributes:
- Queue.Identifier
- Set *rReturnStatus* to **rStatus**.
- If the **rStatus** returned by the Read Directory event is not set to Success:
- Set **rReturnStatus** equal to **rStatus**.
- Set *queueIdentifier* to the Queue.Identifier of the returned queue object.
- Set *rFormat* to the following string where *queueIdentifier* is replaced by its value:
- "PUBLIC="queueIdentifier
- Set **rFormatName** to **rFormat**.
<a id="Section_3.1.7.3"></a>
#### 3.1.7.3 Construct SRMP Format Name

This event MUST be generated with the following argument:

- *iVia* : A URI, as specified in [[RFC3986]](https://go.microsoft.com/fwlink/?LinkId=90453).
- *iSecureSrmp* : A boolean value, indicating whether the transport will use "https" or "http".
**Return Values**:

- *rFormatName* : The constructed [**format name**](#gt_format-name).
The [**initiator**](#gt_initiator) MUST construct a direct format name as specified in section 2.1.2 for [MS-MQMQ](../MS-MQMQ/MS-MQMQ.md), as follows:

- Initialize *rFormat* to "DIRECT=".
- If *iSecureSrmp* is set to true:
- Append "https://" to *rFormat*.
- Otherwise:
- Append "http://" to *rFormat*.
- Append the host portion of *iVia* to *rFormat*.
- If the port number of the *iVia* URI is set:
- Append the port number to *rFormat*.
- Append "/msmq/" to *rFormat*.
- Append the relative Path of the URI as defined in section 3.3 of [RFC3986] to *rFormat*.
- Set *rFormatName* to *rFormat*.
<a id="Section_3.2"></a>
## 3.2 Initiator Details

The [**initiator**](#gt_initiator) MUST use the binding and policy assertions enforced by the [**Web service**](#gt_web-service) in the [**WSDL**](#gt_web-services-description-language-wsdl) to properly construct a valid MQPCO as specified in section [3.1.1.2](../MS-MQDMPR/MS-MQDMPR.md). To communicate with the [**receiver**](#gt_receiver) the initiator MUST send an MSMQ **Message** [MS-MQDMPR](../MS-MQDMPR/MS-MQDMPR.md) with a **NetMsmqMessage** in the **Message.Body** to an opened queue.

<a id="Section_3.2.1"></a>
### 3.2.1 Abstract Data Model

<a id="Section_3.2.1.1"></a>
#### 3.2.1.1 SendQueue

**SendQueue** is an **OpenQueueDescriptor** as defined in section 3.1.1.16 of [MS-MQDMPR](../MS-MQDMPR/MS-MQDMPR.md). The initiator MUST maintain an instance of this element referred to as **rSendQueue**.

<a id="Section_3.2.1.2"></a>
#### 3.2.1.2 SendNetMsmqMessage

**SendNetMsmqMessage** is a NetMsmqMessage structure as defined in section [3.1.1.1](#Section_3.1.1.1). The [**initiator**](#gt_initiator) MUST maintain an instance of this element referred to as **rNetMsmqMessage**.

<a id="Section_3.2.1.3"></a>
#### 3.2.1.3 UseActiveDirectory

**UseActiveDirectory** is a user-configurable element that changes how the protocol constructs a [**format name**](#gt_format-name). This element MUST be enabled for authentication to be performed as specified in section [3.2.5.1](#Section_3.2.5.1). The [**initiator**](#gt_initiator) MUST maintain an instance of this element referred to as **rUseActiveDirectory**.

Valid values for this element are:

- **True** = Use Public format names, as specified in section 2.1.3 of [MS-MQMQ](../MS-MQMQ/MS-MQMQ.md).
- **False** = Use Direct Format Names as specified in section 2.1.2 of [MS-MQMQ].
<a id="Section_3.2.1.4"></a>
#### 3.2.1.4 QueueTransferProtocol

**QueueTransferProtocol** is a user-configurable element that allows messages to be delivered using the Message Queuing (MSMQ): [**SOAP**](#gt_soap) Reliable Messaging Protocol (SRMP) [MC-MQSRM](../MC-MQSRM/MC-MQSRM.md). The [**initiator**](#gt_initiator) MUST maintain an instance of this element referred to as **rQueueTransferProtocol**.

Valid values for this element are:

- **Native** = Use native MSMQ protocols.
- **SRMP** = Use SRMP [MC-MQSRM] over [**HTTP**](#gt_hypertext-transfer-protocol-http).
- **SecureSRMP** = Use SRMP [MC-MQSRM] over HTTPS.
<a id="Section_3.2.1.5"></a>
#### 3.2.1.5 Message

**Message** is defined in section 3.1.1.12 of [MS-MQDMPR](../MS-MQDMPR/MS-MQDMPR.md). The [**initiator**](#gt_initiator) MUST maintain an instance of this element referred to as *rMsmqMessage*.

<a id="Section_3.2.1.6"></a>
#### 3.2.1.6 Transaction

**Transaction** is defined in section 3.1.1.14 of [MS-MQDMPR](../MS-MQDMPR/MS-MQDMPR.md). The [**initiator**](#gt_initiator) MUST maintain an instance of this element referred to as **rTransaction**.

<a id="Section_3.2.2"></a>
### 3.2.2 Timers

None.

<a id="Section_3.2.3"></a>
### 3.2.3 Initialization

None.

<a id="Section_3.2.4"></a>
### 3.2.4 Higher-Layer Triggered Events

<a id="Section_3.2.4.1"></a>
#### 3.2.4.1 Initialize Session

The [**initiator**](#gt_initiator) MUST open a queue by performing the following:

- Raising the Open Queue for Send event as specified in section [3.2.7.1](#Section_3.2.7.1) with the following parameters set:
- *iUseActiveDirectory* set to **rUseActiveDirectory**.
- *iQueueTransferProtocol* set to **rQueueTransferProtocol**.
- If the returned **rReturnStatus** is not equal to MQ_OK (0x00000000), then an error MUST be propagated to the higher layer, and no further processing done.
- Set **rSendQueue** to the returned **rOpenQueue** .
The initiator MUST set **rMsmqMessage** equal to NULL.

<a id="Section_3.2.4.2"></a>
#### 3.2.4.2 Send Message

The [**initiator**](#gt_initiator) MUST perform the following steps.

- If **rMsmqMessage** is equal to NULL:
- Construct an MSMQ **Message** as specified in section [3.2.5.1](#Section_3.2.5.1) with the following parameters:
- *iQueueTransferProtocol* set to **rQueueTransferProtocol.**
- Set *rMsmqMessage* equal to **rReturnMsmqMessage**.
- Set *rTransaction* equal to the returned **rReturnTransaction**.
- Construct a **Preamble Message**, referred to as **rPreamble** using the logic described in section 3.2.4.2 of [MC-NMF](../MC-NMF/MC-NMF.md).
- Set *rNetMsmqMessage.Preamble* to **rPreamble**.
- Append the [**envelope record**](#gt_envelope-record) passed from the higher level protocol to **rNetMsmqMessage**.**EnvelopeRecords**.
- If the MSMQ Session policy assertion described in section [2.2.3.2](#Section_2.2.3.2) is not set:
- Set *rMsmqMessage.Body* to **rNetMsmqMessage**.
- Deliver **rMsmqMessage** by raising the Enqueue Message event from section 3.1.7.1.9 of [MS-MQDMPR](../MS-MQDMPR/MS-MQDMPR.md) with the following parameters:
- *iQueue* set to **rSendQueue**, the opened queue from section [3.2.4.1](#Section_3.2.4.1).
- *iMessage* set to **rMsmqMessage**.
- *iTransaction* set to **rTransaction**.
- If the returned **rStatus**, is not equal to MQ_OK (0x00000000), then an error MUST be propagated to the higher layer.
- Set *rMsmqMessage* equal to NULL.
<a id="Section_3.2.4.3"></a>
#### 3.2.4.3 Session Close

If the MSMQ Session policy assertion described in section [2.2.3.2](#Section_2.2.3.2) is set, the initiator MUST deliver the [**envelope record**](#gt_envelope-record)s together as one MSMQ **Message** by performing the following:

- If **rMsmqMessage** is not equal to NULL:
- Construct an end record, referred to as **rEndRecord***,* using the logic described in section 3.2.4.5 of [MC-NMF](../MC-NMF/MC-NMF.md).
- Set *rNetMsmqMessage.EndRecord* equal to **rEndRecord**.
- Set *rMsmqMessage.Body* to **rNetMsmqMessage**.
- Raise the Enqueue Message event from section 3.1.7.1.9 of [MS-MQDMPR](../MS-MQDMPR/MS-MQDMPR.md) with the following parameters:
- *iQueue* set to **rSendQueue**, the opened queue from section [3.2.4.1](#Section_3.2.4.1).
- *iMessage* set to **rMsmqMessage**.
- *iTransaction* set to **rTransaction**.
- If the returned **rStatus** is not equal to MQ_OK (0x00000000), then an error MUST be propagated to the higher layer, and no further processing done.
The [**initiator**](#gt_initiator) MUST also close the queue by performing the following:

- Raise the Close Queue event from section 3.1.7.1.6 of [MS-MQDMPR], with the following parameters:
- *iQueueDesc* set to **rSendQueue**.
- If the returned **rStatus**, is not equal to MQ_OK (0x00000000), then an error MUST be propagated to the higher layer, and no further processing done.
<a id="Section_3.2.5"></a>
### 3.2.5 Message Processing Events and Sequencing Rules

<a id="Section_3.2.5.1"></a>
#### 3.2.5.1 Constructing an MSMQ Message

This event MUST be generated with the following arguments:

- *iQueueTransferProtocol*: A **QueueTransferProtocol** value.
**Return Values**:

- **rReturnMsmqMessage**: An MSMQ **Message**.
- **rReturnTransaction**: An MSMQ **Transaction**.
The [**initiator**](#gt_initiator) MUST construct a **Message** as defined in section 3.1.1.12 of [MS-MQDMPR](../MS-MQDMPR/MS-MQDMPR.md). The **Message** MUST be constructed as specified in the following sections.

The initiator MUST set specific properties on a **Message**, depending on the policy assertions that were set as follows:

- If the Best-Effort policy assertion described in [2.2.3.1](#Section_2.2.3.1) is not set:
- Raise the Create Transaction event, as specified in section 3.1.7.1.8 Create Transaction of [MS-MQDMPR], with the following parameters:
- *iTransactionIdentifier* set to a unique transaction identifier [**GUID**](#gt_globally-unique-identifier-guid), as specified in [MS-DTYP](../MS-DTYP/MS-DTYP.md) section 2.3.4.
- Set **rReturnTransaction** equal to **rTransaction**.
- Otherwise:
- Set **rReturnTransaction** equal to NULL
- If the Volatile policy assertion described in section [2.2.3.3](#Section_2.2.3.3) is set:
- Set **Message.DeliveryGuarantee** to **Express** for volatile messages
- Otherwise, if the Volatile policy assertion is not set:
- Set **Message.DeliveryGuarantee** to **Recoverable** for durable messages.
- If the Authenticated policy assertion described in section [2.2.3.5](#Section_2.2.3.5) is set:
- Set **Message.PrivacyLevel** to **Enhanced**.
- Set **Message.EncryptionAlgorithm** to **RC4**.
- Set **Message.HashAlgorithm** to **SHA256**.<1>
- If **iQueueTransferProtocol** is set to **SRMP** or **SecureSRMP**:
- Set **Message.AuthenticationLevel** to **XmlSig**.
- Otherwise:
- Set **Message.AuthenticationLevel** to **Sig30**.
- If the Windows Domain policy assertion described in section 2.2.3.5 is set:
- Set **Message.SenderIdentifierType** to **Sid**, as specified in [MS-MQDMPR] section 2.
- Otherwise:
- Set **Message.SenderIdentifierType** to **None**.
- Set **Message.SenderCertificate** to a user-provided [**X.509**](#gt_x509) [**certificate**](#gt_certificate) as described in [[RFC3280]](https://go.microsoft.com/fwlink/?LinkId=90414).
- Otherwise, if the Authenticated policy assertion is not set:
- Set **Message.SenderIdentifierType** to **None**.
- Set **Message.AuthenticationLevel** to **None**.
- Set **rReturnMsmqMessage** to the constructed **Message**.
<a id="Section_3.2.6"></a>
### 3.2.6 Timer Events

None.

<a id="Section_3.2.7"></a>
### 3.2.7 Other Local Events

<a id="Section_3.2.7.1"></a>
#### 3.2.7.1 Open Queue for Send

This event MUST be generated with the following arguments:

- *iUseActiveDirectory*: A **UseActiveDirectory** value.
- *iQueueTransferProtocol*: A **QueueTransferProtocol** value.
**Return Values**:

- **rOpenQueue**: An OpenQueueDescriptor value for the opened queue.
- **rReturnStatus**: A status code signifying the success or failure of the raised [MS-MQDMPR](../MS-MQDMPR/MS-MQDMPR.md) events.
The [**initiator**](#gt_initiator) MUST open the queue corresponding to the [**endpoint**](#gt_endpoint) specified in the service's [**WSDL**](#gt_web-services-description-language-wsdl), which also corresponds to the **MQPCO** Via record, referred to as *rVia*. This MUST be performed before any messages are sent. To do so, the initiator MUST perform the following:

- Construct a [**format name**](#gt_format-name), referred to as **rFormat** as follows:
- If *iQueueTransferProtocol* is set to **SRMP**
- Raise the Construct SRMP Format Name Event, as specified in section [3.1.7.3](#Section_3.1.7.3) with the following properties set:
- *iVia*: Set to **rVia**.
- *iSecureSrmp*: Set to false.
- Set *rFormat* to the returned **rFormatName**.
- If *iQueueTransferProtocol* is set to **SecureSRMP**
- Raise the Construct SRMP Format Name Event, as specified in section 3.1.7.3 with the following properties set:
- *iVia*: Set to **rVia**.
- *iSecureSrmp*: Set to true.
- Set *rFormat* to the returned **rFormatName**.
- If *iQueueTransferProtocol* is set to **Native**
- If *iUseActiveDirectory* is set to true:
- Raise the Construct Public Format Name event, as specified in section [3.1.7.2](#Section_3.1.7.2) with the following properties set:
- *iVia*: Set to **rVia**.
- If the returned **rReturnStatus** from the Construct Public Format Name event, is not equal to MQ_OK (0x00000000), then set **rReturnStatus** to the same value, and perform no further processing.
- Set *rFormat* to the returned **rFormatName**.
- Otherwise, if **iUseActiveDirectory** is set to false:
- Raise the Construct Direct Format Name event, as specified in section [3.1.7.1](#Section_3.1.7.1) with the following properties set:
- *iVia*: Set to **rVia**.
- Set *rFormat* to the returned **rFormatName**.
- Generate an Open Queue event as specified in section 3.1.7.1.5 of [MS-MQDMPR], with the following properties set:
- *iFormatName*: Set to **rFormat**.
- *iRequiredAccess*: Set to **QueueAccessType.SendAccess**.
- *iSharedMode*: Set to **QueueShareMode.DenyNone**, as specified in section 3.1.1.17 of [MS-MQDMPR].
- Set *rOpenQueue* to the returned **rOpenQueueDescriptor**.
- Set *rReturnStatus* to the returned **rStatus**.
<a id="Section_3.3"></a>
## 3.3 Receiver Details

The receiver listens on the queue discovered at the path name introduced in section [3.1.7.2](#Section_3.1.7.2). The receiver MUST open a queue at this address and process the messages as described in the following sections.

<a id="Section_3.3.1"></a>
### 3.3.1 Abstract Data Model

<a id="Section_3.3.1.1"></a>
#### 3.3.1.1 ReceiveQueue

*ReceiveQueue* is an **OpenQueueDescriptor** as defined in section 3.1.1.16 of [MS-MQDMPR](../MS-MQDMPR/MS-MQDMPR.md). The [**receiver**](#gt_receiver) MUST maintain an instance of this element referred to as **rReceiveQueue**.

<a id="Section_3.3.2"></a>
### 3.3.2 Timers

None.

<a id="Section_3.3.3"></a>
### 3.3.3 Initialization

None.

<a id="Section_3.3.4"></a>
### 3.3.4 Higher-Layer Triggered Events

<a id="Section_3.3.4.1"></a>
#### 3.3.4.1 Initialize Session

The [**receiver**](#gt_receiver) MUST open a queue by performing the following:

- Raising the Open Queue for Receive event, as specified in section [3.3.7.1](#Section_3.3.7.1).
- Set **rReceiveQueue** to the returned **rOpenQueue**.
<a id="Section_3.3.4.2"></a>
#### 3.3.4.2 Receive Message

The [**receiver**](#gt_receiver) MUST receive the MSMQ **Message**, referred to as **rMsmqMessage**, by performing the following:

- Raise the Dequeue Message event as specified in section 3.1.7.1.10 of Message Queuing (MSMQ) Common Data Model and Processing Rules [MS-MQDMPR](../MS-MQDMPR/MS-MQDMPR.md).
- Set *iQueueDesc* to **rReceiveQueue**.
- Set *iTimeout* to the amount of time to wait for message arrival in seconds.
- Set *iCursor* to NULL.
- If the Best-Effort policy assertion described in [2.2.3.1](#Section_2.2.3.1) is not set:
- Raise the Create Transaction event, as specified in section 3.1.7.1.8 Create Transaction of [MS-MQDMPR], with the following parameters:
- *iTransactionIdentifier* set to a unique transaction identifier GUID.
- Set *iTransaction* to **rTransaction**.
- If the returned **rStatus** is set to MQ_OK (0x00000000), then assign the returned **rMessage** to **rMsmqMessage**.
- Otherwise, an error MUST be propagated to the higher layer, and no further processing done.
- An error MUST be propagated to the higher layer, and no further processing done.
After the MSMQ **Message** has been received from the MSMQ protocol the receiver MUST do the following:

- Assign **rMsmqMessage**.**Body** to a **NetMsmqMessage**, referred to as **rNetMsmqMessage**.
- Perform the steps for verifying the Preamble Message as specified in section 3.3.4.2 of [MC-NMF](../MC-NMF/MC-NMF.md), on **rNetMsmqMessage**.**Preamble**.
- Read and propagate the **envelope record** in **rNetMsmqMessage**.**EnvelopeRecords** to a higher layer as specified in section 3.3.4.4 of [MC-NMF].
<a id="Section_3.3.4.3"></a>
#### 3.3.4.3 Session Close

The [**receiver**](#gt_receiver) MUST also close the queue by performing the following:

- Raise the Close Queue event from section 3.1.7.1.6 of [MS-MQDMPR](../MS-MQDMPR/MS-MQDMPR.md), with the following parameters:
- *iQueueDesc* set to **rReceiveQueue**.
- If the returned **rStatus**, is not equal to MQ_OK (0x00000000), then an error MUST be propagated to the higher layer, and no further processing done.
<a id="Section_3.3.5"></a>
### 3.3.5 Message Processing Events and Sequencing Rules

None.

<a id="Section_3.3.6"></a>
### 3.3.6 Timer Events

None.

<a id="Section_3.3.7"></a>
### 3.3.7 Other Local Events

<a id="Section_3.3.7.1"></a>
#### 3.3.7.1 Open Queue for Receive

This event is raised without any arguments supplied.

**Return Values**:

- **rOpenQueue**: An OpenQueueDescriptor value for the opened queue.
- **rReturnStatus**: A status code signifying the success or failure of the raised [MS-MQDMPR](../MS-MQDMPR/MS-MQDMPR.md) events.
The [**receiver**](#gt_receiver) MUST open the queue corresponding to the [**endpoint**](#gt_endpoint) specified in the service's WSDL, which also corresponds to the **MQPCO** Via record, referred to as **rVia**. This MUST be performed before any messages are received. The receiver MUST perform the following:

- Construct a [**format name**](#gt_format-name), referred to as **rFormat** as follows:
- Raise the Construct Direct Format Name event, as specified in section [3.1.7.1](#Section_3.1.7.1) with the following properties set:
- *iVia*: Set to **rVia**.
- Set **rFormat** to the returned **rFormatName**.
- Generate an Open Queue event as specified in section 3.1.7.1.5 of [MS-MQDMPR], with the following properties set:
- *iFormatName*: Set to **rFormat**.
- *iRequiredAccess*: Set to **QueueAccessType.SendAccess**, as specified in section 3.1.1.17 of [MS-MQDMPR].
- *iSharedMode*: Set to **QueueShareMode.DenyNone**, as specified in section 3.1.1.17 of [MS-MQDMPR].
- Set **rOpenQueue** to the returned **rOpenQueueDescriptor**.
- Set **rReturnStatus** to the returned **rStatus**.
<a id="Section_4"></a>
# 4 Protocol Examples

The following packet capture shows the message payload of the Preamble message sent out while using the .NET Message Framing MSMQ Binding Protocol. The specifics of network transport are excluded from this example.

**Raw Message**

00 01 00 01 04 02 2B 6E ......+n

65 74 2E 6D 73 6D 71 3A et.msmq:

2F 2F 6C 6F 63 61 6C 68 //localh

6F 73 74 2F 70 72 69 76 ost/priv

61 74 65 2F 74 72 61 6E ate/tran

73 61 63 74 69 6F 6E 61 sactiona

6C 71 03 07 lq..

**Parsed Message**

NMF: Preamble

-NMF: Version = 1.0

Record Type = Version Record (0X00)

Major Version = 1 (0X01)

Minor Version = 0 (0X00)

-NMF: Mode = Duplex Mode

Record Type = Mode Record (0X01)

Mode = Singleton Sized (0X04)

-NMF: Via = net.msmq://<QueuePathName>/

Record Type = Via Record (0X02)

Size = 43 (0X2B)

Via = net.tcp://localhost/private/transactionalq/

-NMF: Encoding = Binary Session Encoding

Record Type = Known Encoding Record (0X03)

Encoding = Binary Encoding (0X07)

<a id="Section_5"></a>
# 5 Security

<a id="Section_5.1"></a>
## 5.1 Security Considerations for Implementers

None.

<a id="Section_5.2"></a>
## 5.2 Index of Security Parameters

None.

<a id="Section_6"></a>
# 6 Appendix A: Full WSDL

For ease of implementation the full WSDL with schemas is provided in the following section.

<a id="Section_6.1"></a>
## 6.1 .Net Message Framing MSMQ Binding Protocol WSDL and Policy Assertions

<?xml version="1.0" encoding="utf-8"?>

<wsdl:definitions name="OrderProcessorService"

targetNamespace="http://tempuri.org/"

xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"

xmlns:wsa10="http://www.w3.org/2005/08/addressing"

xmlns:wsx="http://schemas.xmlsoap.org/ws/2004/09/mex"

xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/"

xmlns:wsu="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd"

xmlns:wsp="http://schemas.xmlsoap.org/ws/2004/09/policy"

xmlns:wsap="http://schemas.xmlsoap.org/ws/2004/08/addressing/policy"

xmlns:msc="http://schemas.microsoft.com/ws/2005/12/wsdl/contract"

xmlns:wsa="http://schemas.xmlsoap.org/ws/2004/08/addressing"

xmlns:wsam="http://www.w3.org/2007/05/addressing/metadata"

xmlns:wsaw="http://www.w3.org/2006/05/addressing/wsdl"

xmlns:tns="http://tempuri.org/"

xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/"

xmlns:i0="http://Microsoft.ServiceModel.Samples"

xmlns:xsd="http://www.w3.org/2001/XMLSchema"

xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/"

xmlns:msmq="http://schemas.microsoft.com/ws/06/2004/mspolicy/msmq">

<wsp:Policy wsu:Id="NetMsmqBinding_IOrderProcessor_policy">

<wsp:ExactlyOne>

<wsp:All>

<!-- omitted elements -->

<msmq:MsmqVolatile />

<msmq:MsmqBestEffort />

<msmq:MsmqSession />

<msmq:Authenticated />

<msmq:WindowsDomain />

<!-- omitted elements -->

</wsp:All>

</wsp:ExactlyOne>

</wsp:Policy>

<!-- omitted elements -->

<wsdl:binding name="NetMsmqBinding_IOrderProcessor" type="i0:IOrderProcessor">

<wsp:PolicyReference URI="#NetMsmqBinding_IOrderProcessor_policy"/>

<soap12:binding transport="http://schemas.microsoft.com/soap/msmq"/>

<wsdl:operation name="SubmitPurchaseOrder">

<soap12:operation soapAction="http://SampleNamespace/IOrderProcessor/SubmitPurchaseOrder" style="document"/>

<wsdl:input>

<soap12:body use="literal"/>

</wsdl:input>

</wsdl:operation>

</wsdl:binding>

<wsdl:service name="OrderProcessorService">

<wsdl:port name="NetMsmqBinding_IOrderProcessor" binding="tns:NetMsmqBinding_IOrderProcessor">

<soap12:address location="net.msmq://localhost/private/testq"/>

<wsa10:EndpointReference>

<wsa10:Address>net.msmq://localhost/private/testq</wsa10:Address>

</wsa10:EndpointReference>

</wsdl:port>

</wsdl:service>

</wsdl:definitions>

<a id="Section_7"></a>
# 7 Appendix B: Product Behavior

The information in this specification is applicable to the following Microsoft products or supplemental software. References to product versions include updates to those products.

The terms "earlier" and "later", when used with a product version, refer to either all preceding versions or all subsequent versions, respectively. The term "through" refers to the inclusive range of versions. Applicable Microsoft products are listed chronologically in this section.

This document specifies version-specific details in the Microsoft .NET Framework. For information about which versions of the .NET Framework are available in each released Windows product or as supplemental software, see [MS-NETOD](../MS-NETOD/MS-NETOD.md) section 4.

- Microsoft .NET Framework 3.0
- Microsoft .NET Framework 3.5
- Microsoft .NET Framework 4.0
- Microsoft .NET Framework 4.5
- Microsoft .NET Framework 4.6
- Microsoft .NET Framework 4.7
- Microsoft .NET Framework 4.8
Exceptions, if any, are noted in this section. If an update version, service pack or Knowledge Base (KB) number appears with a product name, the behavior changed in that update. The new behavior also applies to subsequent updates unless otherwise specified. If a product edition appears with the product version, behavior is different in that product edition.

Unless otherwise specified, any statement of optional behavior in this specification that is prescribed using the terms "SHOULD" or "SHOULD NOT" implies product behavior in accordance with the SHOULD or SHOULD NOT prescription. Unless otherwise specified, the term "MAY" implies that the product does not follow the prescription.

<1> Section 3.2.5.1: In Windows releases that support Microsoft .NET Framework 3.5 and later, the MsmqSecureHashAlgorithm enumeration enables an implementation to use any of the hash algorithms that follow, where SHA256 is the default.

public enum MsmqSecureHashAlgorithm

{

MD5,

SHA1,

SHA 256,

SHA 512

}

The underlying values of the MsmqSecureHashAlgorithm enum members are specified in the table that follows.

| **Member Name** | **Value** |
| --- | --- |
| MD5 | int32 (0x00000000) |
| SHA1 | int32 (0x00000001) |
| SHA256 | int32 (0x00000002) |
| SHA512 | int32 (0x00000003) |

For information about Windows releases that support the Microsoft .NET Framework versions, including the .NET Framework life-cycle support, see [MS-NETOD] section 4 Microsoft Implementations.

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
| [7](#Section_7) Appendix B: Product Behavior | Added .NET Framework v4.8 to the applicability list. | Major |


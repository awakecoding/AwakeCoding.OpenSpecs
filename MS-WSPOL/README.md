# [MS-WSPOL]: Web Services: Policy Assertions and WSDL Extensions

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
      - [2.2.3.1 Basic HTTP Authentication Policy Assertion](#Section_2.2.3.1)
      - [2.2.3.2 Digest HTTP Authentication Policy Assertion](#Section_2.2.3.2)
      - [2.2.3.3 NTLM HTTP Authentication Policy Assertion](#Section_2.2.3.3)
      - [2.2.3.4 Negotiate HTTP Authentication Policy Assertion](#Section_2.2.3.4)
      - [2.2.3.5 Streamed Message Framing Policy Assertion](#Section_2.2.3.5)
      - [2.2.3.6 Binary Encoding Policy Assertion](#Section_2.2.3.6)
      - [2.2.3.7 Message Framing Transport Security Policy Assertion](#Section_2.2.3.7)
      - [2.2.3.8 Message Framing Security Provider Negotiation Policy Assertion](#Section_2.2.3.8)
      - [2.2.3.9 One-way Policy Assertion](#Section_2.2.3.9)
      - [2.2.3.10 Composite Duplex Policy Assertion](#Section_2.2.3.10)
      - [2.2.3.11 UDP Retransmission-Enabled Policy Assertion](#Section_2.2.3.11)
      - [2.2.3.12 WebSocket Streamed Policy Assertion](#Section_2.2.3.12)
      - [2.2.3.13 WebSocket Streamed Request Policy Assertion](#Section_2.2.3.13)
      - [2.2.3.14 WebSocket Streamed Response Policy Assertion](#Section_2.2.3.14)
      - [2.2.3.15 SOAP-over-UDP SOAP Binding Transport URI](#Section_2.2.3.15)
    - [2.2.4 Complex Types](#Section_2.2.4)
    - [2.2.5 Simple Types](#Section_2.2.5)
    - [2.2.6 Attributes](#Section_2.2.6)
      - [2.2.6.1 Using Session WSDL Extension](#Section_2.2.6.1)
      - [2.2.6.2 Is Initiating WSDL Extension](#Section_2.2.6.2)
      - [2.2.6.3 Is Terminating WSDL Extension](#Section_2.2.6.3)
    - [2.2.7 Groups](#Section_2.2.7)
    - [2.2.8 Attribute Groups](#Section_2.2.8)
</details>

<details>
<summary>3 Protocol Details</summary>

- [3 Protocol Details](#Section_3)
  - [3.1 Server Details](#Section_3.1)
  - [3.2 Client Details](#Section_3.2)
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
  - [6.1 Basic HTTP Authentication Policy Assertion](#Section_6.1)
  - [6.2 Digest HTTP Authentication Policy Assertion](#Section_6.2)
  - [6.3 NTLM HTTP Authentication Policy Assertion](#Section_6.3)
  - [6.4 Negotiate HTTP Authentication Policy Assertion](#Section_6.4)
  - [6.5 Streamed Message Framing Policy Assertion](#Section_6.5)
  - [6.6 Binary Encoding Policy Assertion](#Section_6.6)
  - [6.7 Message Framing Transport Security Policy Assertion](#Section_6.7)
  - [6.8 Message Framing Security Provider Negotiation Policy Assertion](#Section_6.8)
  - [6.9 One-way and Composite Duplex Policy Assertions](#Section_6.9)
  - [6.10 UDP Retransmission-Enabled Policy Assertion](#Section_6.10)
  - [6.11 WebSocket Streamed Policy Assertion](#Section_6.11)
  - [6.12 WebSocket Streamed Request Policy Assertion](#Section_6.12)
  - [6.13 WebSocket Streamed Response Policy Assertion](#Section_6.13)
  - [6.14 SOAP-over-UDP Transport URI](#Section_6.14)
  - [6.15 Using Session, Is Initiating, and Is Terminating WSDL Extensions](#Section_6.15)
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

This document specifies a collection of [**Web service**](#gt_web-service) policy assertions and Web Services Description Language (WSDL) extensions, which define domain-specific behavior for the interaction between two Web service entities. This document does not define any specific Web service endpoints or message exchanges.

Sections 1.5, 1.8, 1.9, 2, and 3 of this specification are normative. All other sections and examples in this specification are informative.

<a id="Section_1.1"></a>
## 1.1 Glossary

This document uses the following terms:

<a id="gt_certificate"></a>
**certificate**: A certificate is a collection of attributes and extensions that can be stored persistently. The set of attributes in a certificate can vary depending on the intended usage of the certificate. A certificate securely binds a public key to the entity that holds the corresponding private key. A certificate is commonly used for authentication and secure exchange of information on open networks, such as the Internet, extranets, and intranets. Certificates are digitally signed by the issuing certification authority (CA) and can be issued for a user, a computer, or a service. The most widely accepted format for certificates is defined by the ITU-T X.509 version 3 international standards. For more information about attributes and extensions, see [[RFC3280]](https://go.microsoft.com/fwlink/?LinkId=90414) and [[X509]](https://go.microsoft.com/fwlink/?LinkId=90590) sections 7 and 8.

<a id="gt_client"></a>
**client**: A computer on which the remote procedure call (RPC) client is executing.

<a id="gt_initiating-operation"></a>
**initiating operation**: A WSDL operation that is the first operation sent by the client.

<a id="gt_initiating-stream"></a>
**Initiating Stream**: The protocol stream that flows from the initiator.

<a id="gt_input-message"></a>
**input message**: The [**WSDL**](#gt_web-services-description-language-wsdl) message referred to by the input element in a [**WSDL operation**](#gt_wsdl-operation).

<a id="gt_notification-operation"></a>
**notification operation**: An operation in which the endpoint sends a message, as specified in [[WSDL]](https://go.microsoft.com/fwlink/?LinkId=90577).

<a id="gt_one-way-operation"></a>
**one-way operation**: An operation in which the endpoint receives a message, as specified in [WSDL].

<a id="gt_output-message"></a>
**output message**: The [**WSDL**](#gt_web-services-description-language-wsdl) message referred to by the output element in a [**WSDL operation**](#gt_wsdl-operation).

<a id="gt_processing-operation"></a>
**processing operation**: A [**WSDL operation**](#gt_wsdl-operation) that is not a [**terminating operation**](#gt_terminating-operation).

<a id="gt_sessionful-transport"></a>
**sessionful transport**: A transport that associates messages into message groups defined by the transport.

<a id="gt_soap-message"></a>
**SOAP message**: An [**XML**](#gt_xml) document consisting of a mandatory SOAP envelope, an optional SOAP header, and a mandatory SOAP body. See [[SOAP1.2-1/2007]](https://go.microsoft.com/fwlink/?LinkId=94664) section 5 for more information.

<a id="gt_ssltls-handshake"></a>
**SSL/TLS handshake**: The process of negotiating and establishing a connection protected by Secure Sockets Layer (SSL) or Transport Layer Security (TLS). For more information, see [[SSL3]](https://go.microsoft.com/fwlink/?LinkId=90534) and [[RFC2246]](https://go.microsoft.com/fwlink/?LinkId=90324).

<a id="gt_terminating-operation"></a>
**terminating operation**: A [**WSDL operation**](#gt_wsdl-operation) that is the last operation sent by a [**client**](#gt_client).

<a id="gt_web-service"></a>
**web service**: A unit of application logic that provides data and services to other applications and can be called by using standard Internet transport protocols such as HTTP, Simple Mail Transfer Protocol (SMTP), or File Transfer Protocol (FTP). Web services can perform functions that range from simple requests to complicated business processes.

<a id="gt_web-services-description-language-wsdl"></a>
**Web Services Description Language (WSDL)**: An XML format for describing network services as a set of endpoints that operate on messages that contain either document-oriented or procedure-oriented information. The operations and messages are described abstractly and are bound to a concrete network protocol and message format in order to define an endpoint. Related concrete endpoints are combined into abstract endpoints, which describe a network service. WSDL is extensible, which allows the description of endpoints and their messages regardless of the message formats or network protocols that are used.

<a id="gt_wsdl-extension"></a>
**WSDL extension**: Represents a requirement or a capability of a [**Web service**](#gt_web-service), which is defined by using the [**WSDL**](#gt_web-services-description-language-wsdl) extensibility model.

<a id="gt_wsdl-operation"></a>
**WSDL operation**: A single action or function of a web service. The execution of a WSDL operation typically requires the exchange of messages between the service requestor and the service provider.

<a id="gt_wsdl-port-type"></a>
**WSDL port type**: A named set of logically-related, abstract [**Web Services Description Language (WSDL)**](#gt_web-services-description-language-wsdl) operations and messages.

<a id="gt_xml"></a>
**XML**: The Extensible Markup Language, as described in [[XML1.0]](https://go.microsoft.com/fwlink/?LinkId=90599).

<a id="gt_xml-namespace"></a>
**XML namespace**: A collection of names that is used to identify elements, types, and attributes in XML documents identified in a URI reference [[RFC3986]](https://go.microsoft.com/fwlink/?LinkId=90453). A combination of XML namespace and local name allows XML documents to use elements, types, and attributes that have the same names but come from different sources. For more information, see [[XMLNS-2ED]](https://go.microsoft.com/fwlink/?LinkId=90602).

<a id="gt_xml-schema"></a>
**XML schema**: A description of a type of XML document that is typically expressed in terms of constraints on the structure and content of documents of that type, in addition to the basic syntax constraints that are imposed by [**XML**](#gt_xml) itself. An XML schema provides a view of a document type at a relatively high level of abstraction.

**MAY, SHOULD, MUST, SHOULD NOT, MUST NOT:** These terms (in all caps) are used as defined in [[RFC2119]](https://go.microsoft.com/fwlink/?LinkId=90317). All statements of optional behavior use either MAY, SHOULD, or SHOULD NOT.

<a id="Section_1.2"></a>
## 1.2 References

Links to a document in the Microsoft Open Specifications library point to the correct section in the most recently published version of the referenced document. However, because individual documents in the library are not updated at the same time, the section numbers in the documents may not match. You can confirm the correct section numbering by checking the [Errata](https://go.microsoft.com/fwlink/?linkid=850906).

<a id="Section_1.2.1"></a>
### 1.2.1 Normative References

We conduct frequent surveys of the normative references to assure their continued availability. If you have any issue with finding a normative reference, please contact [dochelp@microsoft.com](mailto:dochelp@microsoft.com). We will assist you in finding the relevant information.

[MC-NBFSE] Microsoft Corporation, "[.NET Binary Format: SOAP Extension](../MC-NBFSE/MC-NBFSE.md)".

[MC-NBFS] Microsoft Corporation, "[.NET Binary Format: SOAP Data Structure](../MC-NBFS/MC-NBFS.md)".

[MC-NMF] Microsoft Corporation, "[.NET Message Framing Protocol](../MC-NMF/MC-NMF.md)".

[MC-NPR] Microsoft Corporation, "[.NET Packet Routing Protocol](../MC-NPR/MC-NPR.md)".

[MS-NNS] Microsoft Corporation, "[.NET NegotiateStream Protocol](../MS-NNS/MS-NNS.md)".

[MS-NTHT] Microsoft Corporation, "[NTLM Over HTTP Protocol](../MS-NTHT/MS-NTHT.md)".

[RFC2119] Bradner, S., "Key words for use in RFCs to Indicate Requirement Levels", BCP 14, RFC 2119, March 1997, [http://www.rfc-editor.org/rfc/rfc2119.txt](https://go.microsoft.com/fwlink/?LinkId=90317)

[RFC2617] Franks, J., Hallam-Baker, P., Hostetler, J., et al., "HTTP Authentication: Basic and Digest Access Authentication", RFC 2617, June 1999, [http://www.rfc-editor.org/rfc/rfc2617.txt](https://go.microsoft.com/fwlink/?LinkId=90373)

[RFC4346] Dierks, T., and Rescorla, E., "The Transport Layer Security (TLS) Protocol Version 1.1", RFC 4346, April 2006, [http://www.ietf.org/rfc/rfc4346.txt](https://go.microsoft.com/fwlink/?LinkId=90474)

[RFC4559] Jaganathan, K., Zhu, L., and Brezak, J., "SPNEGO-based Kerberos and NTLM HTTP Authentication in Microsoft Windows", RFC 4559, June 2006, [http://www.rfc-editor.org/rfc/rfc4559.txt](https://go.microsoft.com/fwlink/?LinkId=90483)

[RFC6455] Fette, I., and Melnikov, A., "The WebSocket Protocol", RFC 6455, December 2011, [http://www.ietf.org/rfc/rfc6455.txt](https://go.microsoft.com/fwlink/?LinkId=252388)

[SOAP-UDP] Combs, H., Justice, J., Kakivaya, G., et al., "SOAP-over-UDP", September 2004, [http://specs.xmlsoap.org/ws/2004/09/soap-over-udp/soap-over-udp.pdf](https://go.microsoft.com/fwlink/?LinkId=90523)

[WS-Policy] Siddharth, B., Box, D., Chappell, D., et al., "Web Services Policy 1.2 - Framework (WS-Policy)", April 2006, [http://www.w3.org/Submission/2006/SUBM-WS-Policy-20060425/](https://go.microsoft.com/fwlink/?LinkId=92757)

[WSAddressing] Box, D., et al., "Web Services Addressing (WS-Addressing)", August 2004, [http://www.w3.org/Submission/ws-addressing/](https://go.microsoft.com/fwlink/?LinkId=90575)

[WSDL] Christensen, E., Curbera, F., Meredith, G., and Weerawarana, S., "Web Services Description Language (WSDL) 1.1", W3C Note, March 2001, [http://www.w3.org/TR/2001/NOTE-wsdl-20010315](https://go.microsoft.com/fwlink/?LinkId=90577)

[WSPolicyAtt] BEA Systems, IBM, Microsoft Corporation, SAP, Sonic Software, VeriSign, "Web Services Policy 1.2 - Attachment (WS-PolicyAttachment)", April 2006, [http://www.w3.org/Submission/WS-PolicyAttachment/](https://go.microsoft.com/fwlink/?LinkId=90583)

[WSSP1.2] OASIS Standard, "WS-SecurityPolicy 1.2", July 2007, [http://docs.oasis-open.org/ws-sx/ws-securitypolicy/200702/ws-securitypolicy-1.2-spec-os.pdf](https://go.microsoft.com/fwlink/?LinkId=178724)

[WSS] OASIS, "Web Services Security: SOAP Message Security 1.1 (WS-Security 2004)", February 2006, [http://www.oasis-open.org/committees/download.php/16790/wss-v1.1-spec-os-SOAPMessageSecurity.pdf](https://go.microsoft.com/fwlink/?LinkId=130727)

[XMLNS-2ED] Bray, T., Hollander, D., Layman, A., and Tobin, R., Eds., "Namespaces in XML 1.0 (Second Edition)", W3C Recommendation, August 2006, [http://www.w3.org/TR/2006/REC-xml-names-20060816/](https://go.microsoft.com/fwlink/?LinkId=90602)

[XMLSCHEMA1] Thompson, H., Beech, D., Maloney, M., and Mendelsohn, N., Eds., "XML Schema Part 1: Structures", W3C Recommendation, May 2001, [http://www.w3.org/TR/2001/REC-xmlschema-1-20010502/](https://go.microsoft.com/fwlink/?LinkId=90608)

<a id="Section_1.2.2"></a>
### 1.2.2 Informative References

[MS-NETOD] Microsoft Corporation, "[Microsoft .NET Framework Protocols Overview](../MS-NETOD/MS-NETOD.md)".

<a id="Section_1.3"></a>
## 1.3 Overview

WS-Policy (Web Services Policy Framework) [[WS-Policy]](https://go.microsoft.com/fwlink/?LinkId=92757) and WS-PolicyAttachment (Web Services Policy Attachment) [[WSPolicyAtt]](https://go.microsoft.com/fwlink/?LinkId=90583) collectively define a framework, model, and grammar for expressing the requirements and general characteristics of entities in an [**XML**](#gt_xml) [**web services**](#gt_web-service)-based system. This document specifies the following policy assertions as defined in [WS-Policy]:

- Basic HTTP Authentication
The Basic HTTP Authentication policy assertion indicates that a Web service endpoint requires authentication using the Basic Authentication scheme, as specified in [[RFC2617]](https://go.microsoft.com/fwlink/?LinkId=90373) section 2.

- Digest HTTP Authentication
The Digest HTTP Authentication policy assertion indicates that a Web service endpoint requires authentication using the Digest Access Authentication scheme, as specified in [RFC2617] section 3.

- NTLM HTTP Authentication
The NTLM HTTP Authentication policy assertion indicates that a Web service endpoint requires authentication using the NTLM over HTTP Protocol, as specified in [MS-NTHT](../MS-NTHT/MS-NTHT.md).

- Negotiate HTTP Authentication
The Negotiate HTTP Authentication policy assertion indicates that a Web service endpoint requires authentication using the HTTP Negotiate Authentication scheme, as specified in [[RFC4559]](https://go.microsoft.com/fwlink/?LinkId=90483) section 4.

- Streamed Message Framing
The Streamed Message Framing policy assertion indicates that a Web service endpoint requires messages to be transferred to it using the framing protocol specified in [MC-NMF](../MC-NMF/MC-NMF.md) with "Singleton Unsized" mode, as specified in [MC-NMF] section 2.2.3.2.

- Binary Encoding
The Binary Encoding policy assertion indicates that [**SOAP messages**](#gt_soap-message) are required to be formatted as specified in [MC-NBFS](../MC-NBFS/MC-NBFS.md) or [MC-NBFSE](../MC-NBFSE/MC-NBFSE.md).

- Message Framing Transport Security
The Message Framing Transport Security policy assertion indicates that a Web service endpoint requires messages to be transferred to it using the framing protocol specified in [MC-NMF] with an "application/ssl-tls" protocol upgrade, as specified in [MC-NMF] section 2.2.3.5.

- Message Framing Security Provider Negotiation
The Message Framing Security Provider Negotiation policy assertion indicates that a Web service endpoint requires messages to be transferred to it using the framing protocol specified in [MC-NMF] with an "application/negotiate" protocol upgrade, as specified in [MC-NMF] section 2.2.3.5.

- One-way
The One-way policy assertion indicates that a Web service endpoint treats all [**input messages**](#gt_input-message) as [**one-way operations**](#gt_one-way-operation) and all [**output messages**](#gt_output-message) as [**notification operations**](#gt_notification-operation). This policy assertion also indicates whether to send messages as .NET packets, as specified in [MC-NPR](../MC-NPR/MC-NPR.md) section 2.2.2.

- Composite Duplex
The Composite Duplex policy assertion indicates that a Web service endpoint requires two separate transport connections for messages to and from it.

- UDP Retransmission Enabled
The UDP Retransmission Enabled policy assertion indicates that a Web service endpoint has enabled retransmission, as specified in [[SOAP-UDP]](https://go.microsoft.com/fwlink/?LinkId=90523).

- WebSocket Streamed
The WebSocket Streamed policy assertion indicates that a Web service endpoint intends to send and receive messages as a stream of bytes, as specified in [[RFC6455]](https://go.microsoft.com/fwlink/?LinkId=252388).

- WebSocket Streamed Request
The WebSocket Streamed Request policy assertion indicates that a Web service endpoint intends to receive messages as a stream of bytes.

- WebSocket Streamed Response
The WebSocket Streamed Response policy assertion indicates that a Web service endpoint intends to send messages as a stream of bytes.

This document specifies the following [**WSDL extensions**](#gt_wsdl-extension) using the extensibility model described in [[WSDL]](https://go.microsoft.com/fwlink/?LinkId=90577):

- Using Session
The Using Session WSDL extension, applicable over a [**WSDL port type**](#gt_wsdl-port-type), indicates whether a port type defines any [**initiating operations**](#gt_initiating-operation).

- Is Initiating
The Is Initiating WSDL extension, applicable over a [**WSDL operation**](#gt_wsdl-operation), indicates whether this operation is an initiating operation.

- Is Terminating
The Is Terminating WSDL extension, applicable over a WSDL operation, indicates whether this operation is a [**terminating operation**](#gt_terminating-operation).

This document specifies the following [**WSDL**](#gt_web-services-description-language-wsdl) URIs using the extensibility model described in [WSDL]:

- SOAP-over-UDP -- http://schemas.microsoft.com/soap/udp
The SOAP-over-UDP transport defines the following URI: http://schemas.microsoft.com/soap/udp, which indicates that a Web service endpoint requires messages to be transferred using the [SOAP-UDP] protocol.

<a id="Section_1.4"></a>
## 1.4 Relationship to Other Protocols

This document only defines policy assertions and [**WSDL extensions**](#gt_wsdl-extension) for existing protocols and does not define any new protocols.

<a id="Section_1.5"></a>
## 1.5 Prerequisites/Preconditions

None.

<a id="Section_1.6"></a>
## 1.6 Applicability Statement

None.

<a id="Section_1.7"></a>
## 1.7 Versioning and Capability Negotiation

None.

<a id="Section_1.8"></a>
## 1.8 Vendor-Extensible Fields

None.

<a id="Section_1.9"></a>
## 1.9 Standards Assignments

None.

<a id="Section_2"></a>
# 2 Messages

This document only defines policy assertions and [**WSDL extensions**](#gt_wsdl-extension) for existing protocols and does not define any new messages.

<a id="Section_2.1"></a>
## 2.1 Transport

None.

<a id="Section_2.2"></a>
## 2.2 Common Message Syntax

<a id="Section_2.2.1"></a>
### 2.2.1 Namespaces

This specification defines and references the following [**XML namespaces**](#gt_xml-namespace) using the mechanisms specified in [[XMLNS-2ED]](https://go.microsoft.com/fwlink/?LinkId=90602), which MUST be used by the implementations of this specification.

| Prefix | Namespace URI | Reference |
| --- | --- | --- |
| http | http://schemas.microsoft.com/ws/06/2004/policy/http | - |
| msf | http://schemas.microsoft.com/ws/2006/05/framing/policy | - |
| msb | http://schemas.microsoft.com/ws/06/2004/mspolicy/netbinary1 | - |
| ow | http://schemas.microsoft.com/ws/2005/05/routing/policy | - |
| cdp | http://schemas.microsoft.com/net/2006/06/duplex | - |
| msc | http://schemas.microsoft.com/ws/2005/12/wsdl/contract | - |
| wsdl | http://schemas.xmlsoap.org/wsdl/ | [[WSDL]](https://go.microsoft.com/fwlink/?LinkId=90577) |
| wsp | http://schemas.xmlsoap.org/ws/2004/09/policy | [[WS-Policy]](https://go.microsoft.com/fwlink/?LinkId=92757) |
| sp | http://schemas.xmlsoap.org/ws/2005/07/securitypolicy | [[WSSP1.2]](https://go.microsoft.com/fwlink/?LinkId=178724) |
| wsu | http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd | [[WSS]](https://go.microsoft.com/fwlink/?LinkId=130727) |
| xs | http://www.w3.org/2001/XMLSchema | [[XMLSCHEMA1]](https://go.microsoft.com/fwlink/?LinkId=90608) |
| sud | http://schemas.microsoft.com/ws/06/2010/policy/soap/udp | - |
| mswsp | http://schemas.microsoft.com/soap/websocket/policy | - |

<a id="Section_2.2.2"></a>
### 2.2.2 Messages

This specification does not define any messages.

<a id="Section_2.2.3"></a>
### 2.2.3 Elements

The following table summarizes the set of common XML Schema element definitions defined by this specification.

| Element | Description |
| --- | --- |
| BasicAuthentication | Indicates that [**clients**](#gt_client) are authenticated using the Basic Authentication scheme. |
| DigestAuthentication | Indicates that clients are authenticated using the Digest Access Authentication scheme. |
| NtlmAuthentication | Indicates that clients are authenticated using the NTLM over HTTP Protocol. |
| NegotiateAuthentication | Indicates that clients are authenticated using the HTTP Negotiate Authentication scheme. |
| Streamed | Indicates that messages are exchanged using the .NET Message Framing Protocol with a particular framing mode. |
| BinaryEncoding | Indicates that messages are exchanged using the binary format with in-band dictionary specified. |
| SslTransportSecurity | Indicates that messages are exchanged using the .NET Message Framing Protocol with a particular preamble. |
| WindowsTransportSecurity | Indicates that messages are exchanged using the .NET Message Framing Protocol with a particular preamble. |
| OneWay | Indicates that all input messages are treated as input messages in [**one-way operations**](#gt_one-way-operation) and all output messages as notification operations. |
| CompositeDuplex | Indicates that messages sent back to the client are sent using the endpoint reference provided by the client in the ReplyTo header. |
| RetransmissionEnabled | Indicates that the Web service endpoint has enabled retransmission of SOAP-over-UDP messages. |
| Streamed | Indicates that the Web service endpoint intends to send and receive messages as a stream of bytes over the WebSockets protocol. |
| StreamedRequest | Indicates that the Web service endpoint intends to receive messages as a stream of bytes over the WebSockets protocol. |
| StreamedResponse | Indicates that the Web service endpoint intends to send messages as a stream of bytes over the WebSockets protocol. |

The following sections contain the [**XML schema**](#gt_xml-schema) description for the policy assertions and [**WSDL extensions**](#gt_wsdl-extension) specified in this document.

<a id="Section_2.2.3.1"></a>
#### 2.2.3.1 Basic HTTP Authentication Policy Assertion

<xs:schema

attributeFormDefault="unqualified"

elementFormDefault="qualified"

targetNamespace="http://schemas.microsoft.com/ws/06/2004/policy/http"

xmlns:xs="http://www.w3.org/2001/XMLSchema">

<xs:element name="BasicAuthentication" />

</xs:schema>

The following describes the content model of the **BasicAuthentication** element.

**/http:BasicAuthentication:** A Web service endpoint with Basic HTTP Authentication policy assertion MUST authenticate [**clients**](#gt_client) using the Basic Authentication scheme, as specified in [[RFC2617]](https://go.microsoft.com/fwlink/?LinkId=90373) section 2.

<a id="Section_2.2.3.2"></a>
#### 2.2.3.2 Digest HTTP Authentication Policy Assertion

<xs:schema

attributeFormDefault="unqualified"

elementFormDefault="qualified"

targetNamespace="http://schemas.microsoft.com/ws/06/2004/policy/http"

xmlns:xs="http://www.w3.org/2001/XMLSchema">

<xs:element name="DigestAuthentication" />

</xs:schema>

The following describes the content model of the **DigestAuthentication** element.

**/http:DigestAuthentication:** A Web service endpoint with Digest HTTP Authentication policy assertion MUST authenticate [**clients**](#gt_client) using the Digest Access Authentication scheme, as specified in [[RFC2617]](https://go.microsoft.com/fwlink/?LinkId=90373) section 3.

<a id="Section_2.2.3.3"></a>
#### 2.2.3.3 NTLM HTTP Authentication Policy Assertion

<xs:schema

attributeFormDefault="unqualified"

elementFormDefault="qualified"

targetNamespace="http://schemas.microsoft.com/ws/06/2004/policy/http"

xmlns:xs="http://www.w3.org/2001/XMLSchema">

<xs:element name="NtlmAuthentication" />

</xs:schema>

The following describes the content model of the **NtlmAuthentication** element.

**/http:NtlmAuthentication:** A Web service endpoint with NTLM HTTP Authentication policy assertion MUST authenticate [**clients**](#gt_client) using the NTLM over HTTP Protocol, as specified in [MS-NTHT](../MS-NTHT/MS-NTHT.md).

<a id="Section_2.2.3.4"></a>
#### 2.2.3.4 Negotiate HTTP Authentication Policy Assertion

<xs:schema

attributeFormDefault="unqualified"

elementFormDefault="qualified"

targetNamespace="http://schemas.microsoft.com/ws/06/2004/policy/http"

xmlns:xs="http://www.w3.org/2001/XMLSchema">

<xs:element name="NegotiateAuthentication" />

</xs:schema>

The following describes the content model of the **NegotiateAuthentication** element.

**/http:NegotiateAuthentication:** A Web service endpoint with Negotiate HTTP Authentication policy assertion MUST authenticate [**clients**](#gt_client) using the HTTP Negotiate Authentication scheme, as specified in [[RFC4559]](https://go.microsoft.com/fwlink/?LinkId=90483) section 4.

<a id="Section_2.2.3.5"></a>
#### 2.2.3.5 Streamed Message Framing Policy Assertion

<xs:schema

attributeFormDefault="unqualified"

elementFormDefault="qualified"

targetNamespace="http://schemas.microsoft.com/ws/2006/05/framing/policy"

xmlns:xs="http://www.w3.org/2001/XMLSchema">

<xs:element name="Streamed" />

</xs:schema>

The following describes the content model of the **Streamed** element.

**/msf:Streamed:** A Web service endpoint with Streamed Message Framing policy assertion MUST exchange messages using the .NET Message Framing Protocol [MC-NMF](../MC-NMF/MC-NMF.md). The framing mode MUST be Singleton Unsized (as described in [MC-NMF] section 2.2.3.2).

<a id="Section_2.2.3.6"></a>
#### 2.2.3.6 Binary Encoding Policy Assertion

<xs:schema

attributeFormDefault="unqualified"

elementFormDefault="qualified"

targetNamespace="http://schemas.microsoft.com/ws/06/2004/mspolicy/netbinary1"

xmlns:xs="http://www.w3.org/2001/XMLSchema">

<xs:element name="BinaryEncoding" />

</xs:schema>

The following describes the content model of the **BinaryEncoding** element.

**/msb:BinaryEncoding:** A Web service endpoint with a Binary Encoding policy assertion and configured with a [**sessionful transport**](#gt_sessionful-transport) MUST exchange messages using the binary format with in-band dictionary specified in [MC-NBFSE](../MC-NBFSE/MC-NBFSE.md). A Web service endpoint with a Binary Encoding policy assertion and configured with a transport that is not a sessionful transport MUST exchange messages using the binary format specified in [MC-NBFS](../MC-NBFS/MC-NBFS.md).<1>

<a id="Section_2.2.3.7"></a>
#### 2.2.3.7 Message Framing Transport Security Policy Assertion

<xs:schema

attributeFormDefault="unqualified"

elementFormDefault="qualified"

targetNamespace="http://schemas.microsoft.com/ws/2006/05/framing/policy"

xmlns:xs="http://www.w3.org/2001/XMLSchema">

<xs:element name="SslTransportSecurity">

<xs:complexType>

<xs:sequence>

<xs:element name="RequireClientCertificate" />

</xs:sequence>

</xs:complexType>

</xs:element>

</xs:schema>

The following describes the content model of the **SslTransportSecurity** element.

**/msf:SslTransportSecurity:** A Web service endpoint with the Message Framing Transport Security policy assertion MUST exchange messages using the .NET Message Framing Protocol [MC-NMF](../MC-NMF/MC-NMF.md). The preamble MUST include an upgrade request for "application/ssl-tls", as specified in [MC-NMF] section 2.2.3.5. The Web service endpoint MUST accept an upgrade request for "application/ssl-tls".

**/msf:SslTransportSecurity/msf:RequireClientCertificate:** A parameter that specifies that a [**client**](#gt_client) MUST provide a server-recognizable [**certificate**](#gt_certificate), as specified in [[RFC4346]](https://go.microsoft.com/fwlink/?LinkId=90474) section 7.4.6, during the initial [**SSL/TLS handshake**](#gt_ssltls-handshake) described in [RFC4346] section 7.3.

The SslTransportSecurity element is nested inside the sp:TransportBinding/wsp:Policy/sp:TransportToken/wsp:Policy element of the TransportBinding Assertion, as specified in [[WSSP1.2]](https://go.microsoft.com/fwlink/?LinkId=178724), to indicate that the [**SOAP message**](#gt_soap-message) protection is provided by the Transport Layer Security Protocol [RFC4346].

<a id="Section_2.2.3.8"></a>
#### 2.2.3.8 Message Framing Security Provider Negotiation Policy Assertion

<xs:schema

attributeFormDefault="unqualified"

elementFormDefault="qualified"

targetNamespace="http://schemas.microsoft.com/ws/2006/05/framing/policy"

xmlns:xs="http://www.w3.org/2001/XMLSchema">

<xs:element name="WindowsTransportSecurity">

<xs:complexType>

<xs:sequence>

<xs:element name="ProtectionLevel">

<xs:simpleType>

<xs:restriction base="xs:string">

<xs:enumeration value="None"/>

<xs:enumeration value="Sign"/>

<xs:enumeration value="EncryptAndSign"/>

</xs:restriction>

</xs:simpleType>

</xs:element>

</xs:sequence>

</xs:complexType>

</xs:element>

</xs:schema>

The following describes the content model of the **WindowsTransportSecurity** element.

**/msf:WindowsTransportSecurity:** A Web service endpoint with the Message Framing Security Provider Negotiation policy assertion MUST exchange messages using the .NET Message Framing Protocol [MC-NMF](../MC-NMF/MC-NMF.md). The preamble MUST include an upgrade request for "application/negotiate", as specified in [MC-NMF] section 2.2.3.5. The Web service endpoint MUST accept an upgrade request for "application/negotiate".

**/msf:WindowsTransportSecurity/msf:ProtectionLevel:** A parameter that specifies the minimal level of protection that MUST be applied to protect the [**Initiating Stream**](#gt_initiating-stream).

The protection level MUST be set to one of the following values:

| Value | Meaning |
| --- | --- |
| None | Specifies that the Initiating Stream SHOULD be unsigned and SHOULD be unencrypted. The Initiating Stream MAY be signed and MAY be encrypted. |
| Sign | Specifies that the Initiating Stream MUST be signed. The signed Initiating Stream SHOULD be unencrypted. The signed Initiating Stream MAY be encrypted. |
| EncryptAndSign | Specifies that the Initiating Stream MUST be encrypted and then signed. |

The WindowsTransportSecurity element is nested inside the sp:TransportBinding/wsp:Policy/sp:TransportToken/wsp:Policy element of the TransportBinding Assertion, as specified in [[WSSP1.2]](https://go.microsoft.com/fwlink/?LinkId=178724), to indicate that the [**SOAP message**](#gt_soap-message) protection is provided by the .NET NegotiateStream Protocol [MS-NNS](../MS-NNS/MS-NNS.md).

<a id="Section_2.2.3.9"></a>
#### 2.2.3.9 One-way Policy Assertion

<xs:schema

attributeFormDefault="unqualified"

elementFormDefault="qualified"

targetNamespace="http://schemas.microsoft.com/ws/2005/05/routing/policy"

xmlns:xs="http://www.w3.org/2001/XMLSchema">

<xs:element name="OneWay">

<xs:complexType>

<xs:sequence>

<xs:element name="PacketRoutable" />

</xs:sequence>

</xs:complexType>

</xs:element>

</xs:schema>

The following describes the content model of the **OneWay** element.

**/ow:OneWay:** A Web service endpoint with a One-way policy assertion MUST treat all [**input messages**](#gt_input-message) as input messages in [**one-way operations**](#gt_one-way-operation). The Web service endpoint MUST NOT send replies to a received message. The Web service endpoint MUST treat all [**output messages**](#gt_output-message) as output messages in [**notification operations**](#gt_notification-operation). The Web service endpoint MUST NOT accept replies from sent messages.

**/ow:OneWay/ow:PacketRoutable:** When present, indicates that messages sent to the Web service endpoint MUST be sent as .NET packets, as specified in [MC-NPR](../MC-NPR/MC-NPR.md) section 2.2.2.

<a id="Section_2.2.3.10"></a>
#### 2.2.3.10 Composite Duplex Policy Assertion

<xs:schema

attributeFormDefault="unqualified"

elementFormDefault="qualified"

targetNamespace="http://schemas.microsoft.com/net/2006/06/duplex"

xmlns:xs="http://www.w3.org/2001/XMLSchema">

<xs:element name="CompositeDuplex" />

</xs:schema>

The following describes the content model of the **CompositeDuplex** element.

**/cdp:CompositeDuplex**: A Web service endpoint with a Composite Duplex policy assertion MUST send any messages intended for the [**client**](#gt_client) to the endpoint reference provided by the client in the ReplyTo header. Messages sent to the Web service endpoint MUST specify an endpoint reference in the ReplyTo header [[WSAddressing]](https://go.microsoft.com/fwlink/?LinkId=90575) of each request message. Messages sent by the Web service endpoint to the client MUST be sent using the WSDL binding for the Web service endpoint.

<a id="Section_2.2.3.11"></a>
#### 2.2.3.11 UDP Retransmission-Enabled Policy Assertion

<xs:schema

attributeFormDefault="unqualified"

elementFormDefault="qualified"

targetNamespace="http://schemas.microsoft.com/ws/06/2010/policy/soap/udp"

xmlns:xs="http://www.w3.org/2001/XMLSchema">

<xs:element name="RetransmissionEnabled" />

</xs:schema>

The following describes the content model of the **RetransmissionEnabled** element.

**/sud:RetransmissionEnabled**: A Web service endpoint with retransmission enabled MUST retransmit messages. A [**client**](#gt_client) SHOULD enable a mechanism to detect duplicates and take appropriate action as messages are received from this Web service endpoint.<2>

<a id="Section_2.2.3.12"></a>
#### 2.2.3.12 WebSocket Streamed Policy Assertion

<xs:schema

attributeFormDefault="unqualified"

elementFormDefault="qualified"

targetNamespace="http://schemas.microsoft.com/soap/websocket/policy"

xmlns:xs="http://www.w3.org/2001/XMLSchema">

<xs:element name="Streamed" />

</xs:schema>

The following describes the content model of the **Streamed** element.

**/mswsp:Streamed:** A Web service endpoint with WebSocket Streamed policy assertion MUST send and receive messages as a stream of bytes.<3>

<a id="Section_2.2.3.13"></a>
#### 2.2.3.13 WebSocket Streamed Request Policy Assertion

<xs:schema

attributeFormDefault="unqualified"

elementFormDefault="qualified"

targetNamespace="http://schemas.microsoft.com/soap/websocket/policy"

xmlns:xs="http://www.w3.org/2001/XMLSchema">

<xs:element name="StreamedRequest" />

</xs:schema>

The following describes the content model of the **StreamedRequest** element.

**/mswsp:StreamedRequest:** A client SHOULD send a message to a Web service endpoint with WebSocket Streamed Request policy assertion as a stream of bytes.<4>

<a id="Section_2.2.3.14"></a>
#### 2.2.3.14 WebSocket Streamed Response Policy Assertion

<xs:schema

attributeFormDefault="unqualified"

elementFormDefault="qualified"

targetNamespace="http://schemas.microsoft.com/soap/websocket/policy"

xmlns:xs="http://www.w3.org/2001/XMLSchema">

<xs:element name="StreamedResponse" />

</xs:schema>

The following describes the content model of the **StreamedResponse** element.

**/mswsp:StreamedResponse:** A Web service endpoint with WebSocket Streamed Response policy assertion MUST send messages as a stream of bytes.<5>

<a id="Section_2.2.3.15"></a>
#### 2.2.3.15 SOAP-over-UDP SOAP Binding Transport URI

This protocol does not define any new element. However, this protocol defines a new transport URI, http://schemas.microsoft.com/soap/udp, which specifies that a Web service endpoint requires messages to be transferred using the [[SOAP-UDP]](https://go.microsoft.com/fwlink/?LinkId=90523) protocol.<6>

<a id="Section_2.2.4"></a>
### 2.2.4 Complex Types

This specification does not define any common XML Schema complex type definitions.

<a id="Section_2.2.5"></a>
### 2.2.5 Simple Types

This specification does not define any common XML Schema simple type definitions.

<a id="Section_2.2.6"></a>
### 2.2.6 Attributes

The following table summarizes the set of common XML Schema attribute definitions defined by this specification.

| Attribute | Description |
| --- | --- |
| usingSession | Specifies that session semantics are required. |
| isInitiating | Indicates that an operation is an [**initiating operation**](#gt_initiating-operation). |
| isTerminating | Indicates that an operation is a [**terminating operation**](#gt_terminating-operation). |

The following sections contain the [**XML schema**](#gt_xml-schema) description for the [**WSDL extensions**](#gt_wsdl-extension) specified in this document.

<a id="Section_2.2.6.1"></a>
#### 2.2.6.1 Using Session WSDL Extension

<xs:schema

attributeFormDefault="unqualified"

elementFormDefault="qualified"

targetNamespace="http://schemas.microsoft.com/ws/2005/12/wsdl/contract/"

xmlns:xs="http://www.w3.org/2001/XMLSchema">

<xs:attribute name="usingSession" type="xs:boolean" />

</xs:schema>

The following describes the content model of the **usingSession** attribute.

**/msc:usingSession**: A [**WSDL port type**](#gt_wsdl-port-type) having a Using Session [**WSDL extension**](#gt_wsdl-extension) with a true value specifies that:

- At least one [**initiating operation**](#gt_initiating-operation) MUST be present.
- At least one [**terminating operation**](#gt_terminating-operation) MAY be present.
- A [**client**](#gt_client) MUST request one or more initiating operations, followed by zero or more [**processing operations**](#gt_processing-operation), followed by zero or one terminating operations.
- The Web service endpoint MUST process all operations in the order they were sent by the client.
<a id="Section_2.2.6.2"></a>
#### 2.2.6.2 Is Initiating WSDL Extension

<xs:schema

attributeFormDefault="unqualified"

elementFormDefault="qualified"

targetNamespace="http://schemas.microsoft.com/ws/2005/12/wsdl/contract/"

xmlns:xs="http://www.w3.org/2001/XMLSchema">

<xs:attribute name="isInitiating" type="xs:boolean" />

</xs:schema>

The following describes the content model of the **isInitiating** attribute.

**/msc:isInitiating:** A [**WSDL operation**](#gt_wsdl-operation) having an Is Initiating [**WSDL extension**](#gt_wsdl-extension) with a true value indicates that this operation is an [**initiating operation**](#gt_initiating-operation).

<a id="Section_2.2.6.3"></a>
#### 2.2.6.3 Is Terminating WSDL Extension

<xs:schema

attributeFormDefault="unqualified"

elementFormDefault="qualified"

targetNamespace="http://schemas.microsoft.com/ws/2005/12/wsdl/contract/"

xmlns:xs="http://www.w3.org/2001/XMLSchema">

<xs:attribute name="isTerminating" type="xs:boolean"/>

</xs:schema>

The following describes the content model of the **isTerminating** attribute.

**/msc:isTerminating:** A [**WSDL operation**](#gt_wsdl-operation) having an Is Terminating [**WSDL extension**](#gt_wsdl-extension) that has a true value indicates that the operation is a [**terminating operation**](#gt_terminating-operation).

<a id="Section_2.2.7"></a>
### 2.2.7 Groups

This specification does not define any common XML Schema group definitions.

<a id="Section_2.2.8"></a>
### 2.2.8 Attribute Groups

This specification does not define any common XML Schema attribute group definitions.

<a id="Section_3"></a>
# 3 Protocol Details

The policy assertions defined in this document specify behavior over all messages sent to and from a Web service endpoint and so they MUST have the following policy subjects, as defined in [[WS-Policy]](https://go.microsoft.com/fwlink/?LinkId=92757):

- Endpoint policy subject
[[WSPolicyAtt]](https://go.microsoft.com/fwlink/?LinkId=90583) defines a set of [**WSDL**](#gt_web-services-description-language-wsdl)/1.1 [[WSDL]](https://go.microsoft.com/fwlink/?LinkId=90577) policy attachment points for the policy subject noted previously.

The following is the list of WSDL/1.1 [WSDL] elements whose scope contains the policy subject for the policy assertions defined in this document, but which MUST NOT have the policy assertions attached:

- wsdl:portType
- wsdl:port
The following is the list of WSDL/1.1 [WSDL] elements whose scope contains the policy subject for the policy assertions defined in this document, and which MAY have the policy assertions attached:

- wsdl:binding
The assertions defined in this document MUST NOT contain a nested policy expression.

The assertions defined in this document MUST NOT be specified multiple times in the same policy alternative, as defined in [WS-Policy].

The Using Session [**WSDL extension**](#gt_wsdl-extension) defined in this document MAY be used on the following list of WSDL/1.1 [WSDL] elements:

- wsdl:portType
The Is Initiating and Is Terminating WSDL extensions defined in this document MAY be used on the following list of WSDL/1.1 [WSDL] elements:

- wsdl:operation
<a id="Section_3.1"></a>
## 3.1 Server Details

None.

<a id="Section_3.2"></a>
## 3.2 Client Details

None.

<a id="Section_4"></a>
# 4 Protocol Examples

Section [6](#Section_6), Appendix A: Full WSDL, provides examples of all of the policy assertions specified in this document.

<a id="Section_5"></a>
# 5 Security

<a id="Section_5.1"></a>
## 5.1 Security Considerations for Implementers

Security considerations are discussed in detail under the security considerations section in [[WS-Policy]](https://go.microsoft.com/fwlink/?LinkId=92757).

<a id="Section_5.2"></a>
## 5.2 Index of Security Parameters

None.

<a id="Section_6"></a>
# 6 Appendix A: Full WSDL

For ease of implementation the full WSDLs with schemas are provided in the following sections.

| WSDL or schema name | Assertion/WSDL extension/Transport URI | Section |
| --- | --- | --- |
| Basic HTTP Authentication Policy Assertion | http:BasicAuthentication | [6.1](#Section_6.1) |
| Digest HTTP Authentication Policy Assertion | http:DigestAuthentication | [6.2](#Section_6.2) |
| NTLM HTTP Authentication Policy Assertion | http:NtlmAuthentication | [6.3](#Section_6.3) |
| Negotiate HTTP Authentication Policy Assertion | http:NegotiateAuthentication | [6.4](#Section_6.4) |
| Streamed Message Framing Policy Assertion | msf:Streamed | [6.5](#Section_6.5) |
| Binary Encoding Policy Assertion | msb:BinaryEncoding | [6.6](#Section_6.6) |
| Message Framing Transport Security Policy Assertion | msf:SslTransportSecurity | [6.7](#Section_6.7) |
| Message Framing Security Provider Negotiation Policy Assertion | msf:WindowsTransportSecurity | [6.8](#Section_6.8) |
| One-way Policy Assertion | ow:OneWay | [6.9](#Section_6.9) |
| Composite Duplex Policy Assertion | cdp:CompositeDuplex | 6.9 |
| UDP Retransmission Enabled Policy Assertion | sud:RetransmissionEnabled | [6.10](#Section_6.10) |
| WebSocket Streamed Policy Assertion | mswsp:Streamed | [6.11](#Section_6.11) |
| WebSocket Streamed Request Policy Assertion | mswsp:StreamedRequest | [6.12](#Section_6.12) |
| WebSocket Streamed Response Policy Assertion | mswsp:StreamedResponse | [6.13](#Section_6.13) |
| SOAP-over-UDP transport URI | http://schemas.microsoft.com/soap/udp | [6.14](#Section_6.14) |
| Using Session WSDL Extension | msc:UsingSession | [6.15](#Section_6.15) |
| Is Initiating WSDL Extension | msc:IsInitiating | 6.15 |
| Is Terminating WSDL Extension | msc:IsTerminating | 6.15 |

<a id="Section_6.1"></a>
## 6.1 Basic HTTP Authentication Policy Assertion

<?xml version="1.0" encoding="utf-8"?>

<wsdl:definitions

targetNamespace="http://tempuri.org/"

xmlns:tns="http://tempuri.org/"

xmlns:wsp="http://schemas.xmlsoap.org/ws/2004/09/policy"

xmlns:wsu="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd"

xmlns:wsdl=http://schemas.xmlsoap.org/wsdl/

xmlns:http="http://schemas.microsoft.com/ws/06/2004/policy/http">

<wsp:Policy wsu:Id="MyPolicy">

<wsp:ExactlyOne>

<wsp:All>

<!-- omitted elements -->

<http:BasicAuthentication />

<!-- omitted elements -->

</wsp:All>

</wsp:ExactlyOne>

</wsp:Policy>

<!-- omitted elements -->

<wsdl:binding name="MyBinding" type="tns:MyPortType">

<wsp:PolicyReference URI="#MyPolicy" />

<!-- omitted elements -->

</wsdl:binding>

<!-- omitted elements -->

</wsdl:definitions>

<a id="Section_6.2"></a>
## 6.2 Digest HTTP Authentication Policy Assertion

<?xml version="1.0" encoding="utf-8"?>

<wsdl:definitions

targetNamespace="http://tempuri.org/"

xmlns:tns="http://tempuri.org/"

xmlns:wsp="http://schemas.xmlsoap.org/ws/2004/09/policy"

xmlns:wsu="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd"

xmlns:wsdl=http://schemas.xmlsoap.org/wsdl/

xmlns:http="http://schemas.microsoft.com/ws/06/2004/policy/http">

<wsp:Policy wsu:Id="MyPolicy">

<wsp:ExactlyOne>

<wsp:All>

<!-- omitted elements -->

<http:DigestAuthentication />

<!-- omitted elements -->

</wsp:All>

</wsp:ExactlyOne>

</wsp:Policy>

<!-- omitted elements -->

<wsdl:binding name="MyBinding" type="tns:MyPortType">

<wsp:PolicyReference URI="#MyPolicy" />

<!-- omitted elements -->

</wsdl:binding>

<!-- omitted elements -->

</wsdl:definitions>

<a id="Section_6.3"></a>
## 6.3 NTLM HTTP Authentication Policy Assertion

<?xml version="1.0" encoding="utf-8"?>

<wsdl:definitions

targetNamespace="http://tempuri.org/"

xmlns:tns="http://tempuri.org/"

xmlns:wsp="http://schemas.xmlsoap.org/ws/2004/09/policy"

xmlns:wsu="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd"

xmlns:wsdl=http://schemas.xmlsoap.org/wsdl/

xmlns:http="http://schemas.microsoft.com/ws/06/2004/policy/http">

<wsp:Policy wsu:Id="MyPolicy">

<wsp:ExactlyOne>

<wsp:All>

<!-- omitted elements -->

<http:NtlmAuthentication />

<!-- omitted elements -->

</wsp:All>

</wsp:ExactlyOne>

</wsp:Policy>

<!-- omitted elements -->

<wsdl:binding name="MyBinding" type="tns:MyPortType">

<wsp:PolicyReference URI="#MyPolicy" />

<!-- omitted elements -->

</wsdl:binding>

<!-- omitted elements -->

</wsdl:definitions>

<a id="Section_6.4"></a>
## 6.4 Negotiate HTTP Authentication Policy Assertion

<?xml version="1.0" encoding="utf-8"?>

<wsdl:definitions

targetNamespace="http://tempuri.org/"

xmlns:tns="http://tempuri.org/"

xmlns:wsp="http://schemas.xmlsoap.org/ws/2004/09/policy"

xmlns:wsu="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd"

xmlns:wsdl=http://schemas.xmlsoap.org/wsdl/

xmlns:http="http://schemas.microsoft.com/ws/06/2004/policy/http">

<wsp:Policy wsu:Id="MyPolicy">

<wsp:ExactlyOne>

<wsp:All>

<!-- omitted elements -->

<http:NegotiateAuthentication />

<!-- omitted elements -->

</wsp:All>

</wsp:ExactlyOne>

</wsp:Policy>

<!-- omitted elements -->

<wsdl:binding name="MyBinding" type="tns:MyPortType">

<wsp:PolicyReference URI="#MyPolicy" />

<!-- omitted elements -->

</wsdl:binding>

<!-- omitted elements -->

</wsdl:definitions>

<a id="Section_6.5"></a>
## 6.5 Streamed Message Framing Policy Assertion

<?xml version="1.0" encoding="utf-8"?>

<wsdl:definitions

targetNamespace="http://tempuri.org/"

xmlns:tns="http://tempuri.org/"

xmlns:wsp="http://schemas.xmlsoap.org/ws/2004/09/policy"

xmlns:wsu="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd"

xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"

xmlns:msf=http://schemas.microsoft.com/ws/2006/05/framing/policy>

<wsp:Policy wsu:Id="MyPolicy">

<wsp:ExactlyOne>

<wsp:All>

<!-- omitted elements -->

<msf:Streamed/>

<!-- omitted elements -->

</wsp:All>

</wsp:ExactlyOne>

</wsp:Policy>

<!-- omitted elements -->

<wsdl:binding name="MyBinding" type="tns:MyPortType">

<wsp:PolicyReference URI="#MyPolicy"></wsp:PolicyReference>

<!-- omitted elements -->

</wsdl:binding>

<!-- omitted elements -->

</wsdl:definitions>

<a id="Section_6.6"></a>
## 6.6 Binary Encoding Policy Assertion

<?xml version="1.0" encoding="utf-8"?>

<wsdl:definitions

targetNamespace="http://tempuri.org/"

xmlns:tns="http://tempuri.org/"

xmlns:wsp="http://schemas.xmlsoap.org/ws/2004/09/policy"

xmlns:wsu="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd"

xmlns:wsdl=http://schemas.xmlsoap.org/wsdl/

xmlns:msb="http://schemas.microsoft.com/ws/06/2004/mspolicy/netbinary1>

<wsp:Policy wsu:Id="MyPolicy">

<wsp:ExactlyOne>

<wsp:All>

<!-- omitted elements -->

<msb:BinaryEncoding />

<!-- omitted elements -->

</wsp:All>

</wsp:ExactlyOne>

</wsp:Policy>

<!-- omitted elements -->

<wsdl:binding name="MyBinding" type="tns:MyPortType">

<wsp:PolicyReference URI="#MyPolicy"></wsp:PolicyReference>

<!-- omitted elements -->

</wsdl:binding>

<!-- omitted elements -->

</wsdl:definitions>

<a id="Section_6.7"></a>
## 6.7 Message Framing Transport Security Policy Assertion

<?xml version="1.0" encoding="utf-8"?>

<wsdl:definitions

targetNamespace="http://tempuri.org/"

xmlns:tns="http://tempuri.org/"

xmlns:wsp="http://schemas.xmlsoap.org/ws/2004/09/policy"

xmlns:wsu="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd"

xmlns:wsdl=http://schemas.xmlsoap.org/wsdl/

xmlns:msf="http://schemas.microsoft.com/ws/2006/05/framing/policy"

xmlns:sp=http://schemas.xmlsoap.org/ws/2005/07/securitypolicy>

<wsp:Policy wsu:Id="MyPolicy">

<wsp:ExactlyOne>

<wsp:All>

<!-- omitted elements -->

<sp:TransportBinding >

<wsp:Policy>

<sp:TransportToken>

<wsp:Policy>

<msf:SslTransportSecurity >

<msf:RequireClientCertificate>

</msf:RequireClientCertificate>

</msf:SslTransportSecurity>

</wsp:Policy>

</sp:TransportToken>

<!-- omitted elements -->

</wsp:Policy>

</sp:TransportBinding>

<!-- omitted elements -->

</wsp:All>

</wsp:ExactlyOne>

</wsp:Policy>

<!-- omitted elements -->

<wsdl:binding name="MyBinding" type="tns:MyPortType">

<wsp:PolicyReference URI="#MyPolicy"></wsp:PolicyReference>

<!-- omitted elements -->

</wsdl:binding>

<!-- omitted elements -->

</wsdl:definitions>

<a id="Section_6.8"></a>
## 6.8 Message Framing Security Provider Negotiation Policy Assertion

<?xml version="1.0" encoding="utf-8"?>

<wsdl:definitions

targetNamespace="http://tempuri.org/"

xmlns:tns="http://tempuri.org/"

xmlns:wsp="http://schemas.xmlsoap.org/ws/2004/09/policy"

xmlns:wsu="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd"

xmlns:wsdl=http://schemas.xmlsoap.org/wsdl/

xmlns:msf=http://schemas.microsoft.com/ws/2006/05/framing/policy

xmlns:sp="http://schemas.xmlsoap.org/ws/2005/07/securitypolicy">

<wsp:Policy wsu:Id="MyPolicy">

<wsp:ExactlyOne>

<wsp:All>

<!-- omitted elements -->

<sp:TransportBinding >

<wsp:Policy>

<sp:TransportToken>

<wsp:Policy>

<msf:WindowsTransportSecurity >

<msf:ProtectionLevel>EncryptAndSign</msf:ProtectionLevel>

</msf:WindowsTransportSecurity>

</wsp:Policy>

</sp:TransportToken>

<!-- omitted elements -->

</wsp:Policy>

</sp:TransportBinding>

<!-- omitted elements -->

</wsp:All>

</wsp:ExactlyOne>

</wsp:Policy>

<!-- omitted elements -->

<wsdl:binding name="MyBinding" type="tns:MyPortType">

<wsp:PolicyReference URI="#MyPolicy"></wsp:PolicyReference>

<!-- omitted elements -->

</wsdl:binding>

<!-- omitted elements -->

</wsdl:definitions>

<a id="Section_6.9"></a>
## 6.9 One-way and Composite Duplex Policy Assertions

<?xml version="1.0" encoding="utf-8"?>

<wsdl:definitions

targetNamespace="http://tempuri.org/"

xmlns:tns="http://tempuri.org/"

xmlns:wsp="http://schemas.xmlsoap.org/ws/2004/09/policy"

xmlns:wsu="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd"

xmlns:wsdl=http://schemas.xmlsoap.org/wsdl/

xmlns:cdp="http://schemas.microsoft.com/net/2006/06/duplex"

xmlns:ow="http://schemas.microsoft.com/ws/2005/05/routing/policy">

<wsp:Policy wsu:Id="MyPolicy">

<wsp:ExactlyOne>

<wsp:All>

<!-- omitted elements -->

<cdp:CompositeDuplex />

<ow:OneWay />

<!-- omitted elements -->

</wsp:All>

</wsp:ExactlyOne>

</wsp:Policy>

<!-- omitted elements -->

<wsdl:binding name="MyBinding" type="tns:MyPortType">

<wsp:PolicyReference URI="#MyPolicy" />

<!-- omitted elements -->

</wsdl:binding>

<!-- omitted elements -->

</wsdl:definitions>

<a id="Section_6.10"></a>
## 6.10 UDP Retransmission-Enabled Policy Assertion

<?xml version="1.0" encoding="utf-8"?>

<wsdl:definitions

targetNamespace="http://tempuri.org/"

xmlns:tns="http://tempuri.org/"

xmlns:wsp="http://schemas.xmlsoap.org/ws/2004/09/policy"

xmlns:wsu="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd"

xmlns:wsdl=http://schemas.xmlsoap.org/wsdl/

xmlns:sud="http://schemas.microsoft.com/ws/06/2010/policy/soap/udp">

<wsp:Policy wsu:Id="MyPolicy">

<wsp:ExactlyOne>

<wsp:All>

<!-- omitted elements -->

<sud:RetransmissionEnabled />

<!-- omitted elements -->

</wsp:All>

</wsp:ExactlyOne>

</wsp:Policy>

<!-- omitted elements -->

<wsdl:binding name="MyBinding" type="tns:MyPortType">

<wsp:PolicyReference URI="#MyPolicy" />

<!-- omitted elements -->

</wsdl:binding>

<!-- omitted elements -->

</wsdl:definitions>

<a id="Section_6.11"></a>
## 6.11 WebSocket Streamed Policy Assertion

<?xml version="1.0" encoding="utf-8"?>

<wsdl:definitions

targetNamespace="http://tempuri.org/"

xmlns:tns="http://tempuri.org/"

xmlns:wsp="http://schemas.xmlsoap.org/ws/2004/09/policy"

xmlns:wsu="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd"

xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"

xmlns:mswsp=”http://schemas.microsoft.com/soap/websocket/policy”>

<wsp:Policy wsu:Id="MyPolicy">

<wsp:ExactlyOne>

<wsp:All>

<!-- omitted elements -->

<mswsp:Streamed/>

<!-- omitted elements -->

</wsp:All>

</wsp:ExactlyOne>

</wsp:Policy>

<!-- omitted elements -->

<wsdl:binding name="MyBinding" type="tns:MyPortType">

<wsp:PolicyReference URI="#MyPolicy"></wsp:PolicyReference>

<!-- omitted elements -->

</wsdl:binding>

<!-- omitted elements -->

</wsdl:definitions>

<a id="Section_6.12"></a>
## 6.12 WebSocket Streamed Request Policy Assertion

<?xml version="1.0" encoding="utf-8"?>

<wsdl:definitions

targetNamespace="http://tempuri.org/"

xmlns:tns="http://tempuri.org/"

xmlns:wsp="http://schemas.xmlsoap.org/ws/2004/09/policy"

xmlns:wsu="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd"

xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"

xmlns:mswsp="http://schemas.microsoft.com/soap/websocket/policy">

<wsp:Policy wsu:Id="MyPolicy">

<wsp:ExactlyOne>

<wsp:All>

<!-- omitted elements -->

<mswsp:StreamedRequest/>

<!-- omitted elements -->

</wsp:All>

</wsp:ExactlyOne>

</wsp:Policy>

<!-- omitted elements -->

<wsdl:binding name="MyBinding" type="tns:MyPortType">

<wsp:PolicyReference URI="#MyPolicy"></wsp:PolicyReference>

<!-- omitted elements -->

</wsdl:binding>

<!-- omitted elements -->

</wsdl:definitions>

<a id="Section_6.13"></a>
## 6.13 WebSocket Streamed Response Policy Assertion

<?xml version="1.0" encoding="utf-8"?>

<wsdl:definitions

targetNamespace="http://tempuri.org/"

xmlns:tns="http://tempuri.org/"

xmlns:wsp="http://schemas.xmlsoap.org/ws/2004/09/policy"

xmlns:wsu="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd"

xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"

xmlns:mswsp="http://schemas.microsoft.com/soap/websocket/policy">

<wsp:Policy wsu:Id="MyPolicy">

<wsp:ExactlyOne>

<wsp:All>

<!-- omitted elements -->

<mswsp:StreamedResponse/>

<!-- omitted elements -->

</wsp:All>

</wsp:ExactlyOne>

</wsp:Policy>

<!-- omitted elements -->

<wsdl:binding name="MyBinding" type="tns:MyPortType">

<wsp:PolicyReference URI="#MyPolicy"></wsp:PolicyReference>

<!-- omitted elements -->

</wsdl:binding>

<!-- omitted elements -->

</wsdl:definitions>

<a id="Section_6.14"></a>
## 6.14 SOAP-over-UDP Transport URI

<?xml version="1.0" encoding="utf-8"?>

<wsdl:definitions xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"

xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/">

<!-- ommitted elements -->

<wsdl:binding name="MyBinding" type="MyPortType">

<soap12:binding transport="http://schemas.microsoft.com/soap/udp"/>

<wsdl:operation name="MyOperation">

<!-- ommitted elements -->

</wsdl:operation>

</wsdl:binding>

<wsdl:service name="MyService">

<wsdl:port name="MyPort" binding="MyBinding">

<soap12:address location="soap.udp://myhost/" />

</wsdl:port>

</wsdl:service>

</wsdl:definitions>

<a id="Section_6.15"></a>
## 6.15 Using Session, Is Initiating, and Is Terminating WSDL Extensions

<?xml version="1.0" encoding="utf-8"?>

<wsdl:definitions

targetNamespace="http://tempuri.org/"

xmlns:msc="http://schemas.microsoft.com/ws/2005/12/wsdl/contract"

xmlns:wsdl=http://schemas.xmlsoap.org/wsdl/>

<!-- omitted elements -->

<wsdl:portType msc:usingSession="true" name="IContractName">

<wsdl:operation msc:isInitiating="true" msc:isTerminating="false" name="A">

<!-- omitted elements -->

</wsdl:operation>

<wsdl:operation msc:isInitiating="false" msc:isTerminating="false" name="B">

<!-- omitted elements -->

</wsdl:operation>

<wsdl:operation msc:isInitiating="false" msc:isTerminating="true" name="C">

<!-- omitted elements -->

</wsdl:operation>

<!-- omitted elements -->

</wsdl:portType>

<!-- omitted elements -->

</wsdl:definitions>

<a id="Section_7"></a>
# 7 Appendix B: Product Behavior

The information in this specification is applicable to the following Microsoft products or supplemental software. References to product versions include updates to those products.

This document specifies version-specific details in the Microsoft .NET Framework. For information about which versions of .NET Framework are available in each released windows product or as supplemental software, see [MS-NETOD](../MS-NETOD/MS-NETOD.md) section 4.

- Microsoft .NET Framework 3.0
- Microsoft .NET Framework 3.5
- Microsoft .NET Framework 4.0
- Microsoft .NET Framework 4.5
- Microsoft .NET Framework 4.6
- Microsoft .NET Framework 4.7
- Microsoft .NET Framework 4.8
Exceptions, if any, are noted in this section. If an update version, service pack or Knowledge Base (KB) number appears with a product name, the behavior changed in that update. The new behavior also applies to subsequent updates unless otherwise specified. If a product edition appears with the product version, behavior is different in that product edition.

Unless otherwise specified, any statement of optional behavior in this specification that is prescribed using the terms "SHOULD" or "SHOULD NOT" implies product behavior in accordance with the SHOULD or SHOULD NOT prescription. Unless otherwise specified, the term "MAY" implies that the product does not follow the prescription.

<1> Section 2.2.3.6: The Windows implementation of this protocol uses a transport that is not a [**sessionful transport**](#gt_sessionful-transport) for the "http" and "https" schemes.

<2> Section 2.2.3.11: UDP retransmission-enabled policy assertion is not available in .NET Framework 3.0, .NET Framework 3.5, or .NET Framework 4.0.

<3> Section 2.2.3.12: WebSocket Streamed policy assertions are not available in .NET Framework 3.0, .NET Framework 3.5, or .NET Framework 4.0.

<4> Section 2.2.3.13: WebSocket Streamed Request policy assertions are not available in .NET Framework 3.0, .NET Framework 3.5, or .NET Framework 4.0.

<5> Section 2.2.3.14: WebSocket Streamed Response policy assertions are not available in .NET Framework 3.0, .NET Framework 3.5, or .NET Framework 4.0.

<6> Section 2.2.3.15: SOAP-over-UDP transport URI is not available in .NET Framework 3.0, .NET Framework 3.5, or .NET Framework 4.0.

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
| [7](#Section_7) Appendix B: Product Behavior | Added .NET 4.8 to the list of applicable products. | Major |


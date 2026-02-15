# [MS-N2HT]: Negotiate and Nego2 HTTP Authentication Protocol

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
  - [2.2 Message Syntax](#Section_2.2)
    - [2.2.1 The WWW-Authenticate Response Header](#Section_2.2.1)
    - [2.2.2 The Persistent-Auth Response Header](#Section_2.2.2)
    - [2.2.3 The WWW-Authorization Request Header](#Section_2.2.3)
</details>

<details>
<summary>3 Protocol Details</summary>

- [3 Protocol Details](#Section_3)
  - [3.1 Common Details](#Section_3.1)
    - [3.1.1 Abstract Data Model](#Section_3.1.1)
    - [3.1.2 Timers](#Section_3.1.2)
    - [3.1.3 Initialization](#Section_3.1.3)
    - [3.1.4 Higher-Layer Triggered Events](#Section_3.1.4)
    - [3.1.5 Processing Events and Sequencing Rules](#Section_3.1.5)
    - [3.1.6 Timer Events](#Section_3.1.6)
    - [3.1.7 Other Local Events](#Section_3.1.7)
  - [3.2 Client Details](#Section_3.2)
    - [3.2.1 Abstract Data Model](#Section_3.2.1)
    - [3.2.2 Timers](#Section_3.2.2)
    - [3.2.3 Initialization](#Section_3.2.3)
    - [3.2.4 Higher-Layer Triggered Events](#Section_3.2.4)
    - [3.2.5 Message Processing Events and Sequencing Rules](#Section_3.2.5)
    - [3.2.6 Timer Events](#Section_3.2.6)
    - [3.2.7 Other Local Events](#Section_3.2.7)
  - [3.3 Server Details](#Section_3.3)
    - [3.3.1 Abstract Data Model](#Section_3.3.1)
    - [3.3.2 Timers](#Section_3.3.2)
    - [3.3.3 Initialization](#Section_3.3.3)
    - [3.3.4 Higher-Layer Triggered Events](#Section_3.3.4)
    - [3.3.5 Message Processing Events and Sequencing Rules](#Section_3.3.5)
    - [3.3.6 Timer Events](#Section_3.3.6)
    - [3.3.7 Other Local Events](#Section_3.3.7)
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
<summary>6 Appendix A: Product Behavior</summary>

- [6 Appendix A: Product Behavior](#Section_6)
</details>

<details>
<summary>7 Change Tracking</summary>

- [7 Change Tracking](#Section_7)
</details>
<a id="Section_1"></a>
# 1 Introduction

Support for SPNEGO authentication is as specified in [[RFC4559]](https://go.microsoft.com/fwlink/?LinkId=90483). The tokens are transmitted using base64-encoding. This document will call out the differences in the Microsoft implementation from what is specified in [RFC4559], where applicable.

Sections 1.5, 1.8, 1.9, 2, and 3 of this specification are normative. All other sections and examples in this specification are informative.

<a id="Section_1.1"></a>
## 1.1 Glossary

This document uses the following terms:

<a id="gt_backus-naur-form-bnf"></a>
**Backus-Naur Form (BNF)**: A syntax used to describe context-free grammars, which is a prescribed way to describe languages ([[RFC2616]](https://go.microsoft.com/fwlink/?LinkId=90372) section 2.1). See also "Augmented Backus-Naur Form (ABNF)".

**MAY, SHOULD, MUST, SHOULD NOT, MUST NOT:** These terms (in all caps) are used as defined in [[RFC2119]](https://go.microsoft.com/fwlink/?LinkId=90317). All statements of optional behavior use either MAY, SHOULD, or SHOULD NOT.

<a id="Section_1.2"></a>
## 1.2 References

Links to a document in the Microsoft Open Specifications library point to the correct section in the most recently published version of the referenced document. However, because individual documents in the library are not updated at the same time, the section numbers in the documents may not match. You can confirm the correct section numbering by checking the [Errata](https://go.microsoft.com/fwlink/?linkid=850906).

<a id="Section_1.2.1"></a>
### 1.2.1 Normative References

We conduct frequent surveys of the normative references to assure their continued availability. If you have any issue with finding a normative reference, please contact [dochelp@microsoft.com](mailto:dochelp@microsoft.com). We will assist you in finding the relevant information.

[MS-SPNG] Microsoft Corporation, "[Simple and Protected GSS-API Negotiation Mechanism (SPNEGO) Extension](../MS-SPNG/MS-SPNG.md)".

[RFC2119] Bradner, S., "Key words for use in RFCs to Indicate Requirement Levels", BCP 14, RFC 2119, March 1997, [https://www.rfc-editor.org/info/rfc2119](https://go.microsoft.com/fwlink/?LinkId=90317)

[RFC2616] Fielding, R., Gettys, J., Mogul, J., et al., "Hypertext Transfer Protocol -- HTTP/1.1", RFC 2616, June 1999, [https://www.rfc-editor.org/info/rfc2616](https://go.microsoft.com/fwlink/?LinkId=90372)

[RFC2617] Franks, J., Hallam-Baker, P., Hostetler, J., et al., "HTTP Authentication: Basic and Digest Access Authentication", RFC 2617, June 1999, [https://www.rfc-editor.org/info/rfc2617](https://go.microsoft.com/fwlink/?LinkId=90373)

[RFC4559] Jaganathan, K., Zhu, L., and Brezak, J., "SPNEGO-based Kerberos and NTLM HTTP Authentication in Microsoft Windows", RFC 4559, June 2006, [https://www.rfc-editor.org/info/rfc4559](https://go.microsoft.com/fwlink/?LinkId=90483)

<a id="Section_1.2.2"></a>
### 1.2.2 Informative References

None.

<a id="Section_1.3"></a>
## 1.3 Overview

The SPNEGO HTTP (as specified in [[RFC4559]](https://go.microsoft.com/fwlink/?LinkId=90483)) authentication mechanism is used to authenticate a web client to a web server. Any security protocol negotiated under SPNEGO can work under this authentication scheme.

<a id="Section_1.4"></a>
## 1.4 Relationship to Other Protocols

This document is a companion to the SPNEGO HTTP authentication document, as specified in [[RFC4559]](https://go.microsoft.com/fwlink/?LinkId=90483). It uses the augmented [**Backus-Naur Form (BNF)**](#gt_backus-naur-form-bnf), as described in [RFC4559], section 4, and relies on both the non-terminals defined in that document and other aspects of the specification HTTP/1.1, as specified in [[RFC2617]](https://go.microsoft.com/fwlink/?LinkId=90373). For more information, see [[RFC2616]](https://go.microsoft.com/fwlink/?LinkId=90372).

<a id="Section_1.5"></a>
## 1.5 Prerequisites/Preconditions

SPNEGO HTTP authentication assumes the following in addition to any assumptions specified in [MS-SPNG](../MS-SPNG/MS-SPNG.md).

It is assumed that the web server is capable of authenticating users as specified by [MS-SPNG].

The web client has implemented specification [MS-SPNG] so that it can participate in user authentication to the web server.

<a id="Section_1.6"></a>
## 1.6 Applicability Statement

SPNEGO HTTP authentication is used in environments where the client and server support specification [MS-SPNG](../MS-SPNG/MS-SPNG.md).

<a id="Section_1.7"></a>
## 1.7 Versioning and Capability Negotiation

Versioning and capability negotiation is handled by the HTTP protocols specified in [[RFC2617]](https://go.microsoft.com/fwlink/?LinkId=90373) (for more information, see [[RFC2616]](https://go.microsoft.com/fwlink/?LinkId=90372)). This protocol has no additional versioning or capability negotiation.

<a id="Section_1.8"></a>
## 1.8 Vendor-Extensible Fields

None.

<a id="Section_1.9"></a>
## 1.9 Standards Assignments

| Parameter | Value | Reference |
| --- | --- | --- |
| HTTP auth-scheme | "Negotiate" "Nego2" | [[RFC2617]](https://go.microsoft.com/fwlink/?LinkId=90373), section 1.2 |

<a id="Section_2"></a>
# 2 Messages

<a id="Section_2.1"></a>
## 2.1 Transport

SPNEGO messages are carried in the HTTP authentication exchanges as auth-data (as specified in [[RFC4559]](https://go.microsoft.com/fwlink/?LinkId=90483) sections 4.1 and 4.2) and auth-data2. This document extends RFC 4559 such that the initial challenge contains GSS-API data.

<a id="Section_2.2"></a>
## 2.2 Message Syntax

The usage of SPNEGO authentication is indicated by the WWW-Authenticate Response Header (as specified in section [2.2.1](#Section_2.2.1)) with HTTP auth-scheme (as specified in [[RFC2617]](https://go.microsoft.com/fwlink/?LinkId=90373), section 1.2) "Negotiate" or "Nego2". The auth-params (as specified in [RFC2617], section 1.2) exchanged are base64-encoded messages.

<a id="Section_2.2.1"></a>
### 2.2.1 The WWW-Authenticate Response Header

If the server receives a request for an access-protected object, and if an acceptable Authorization header has not been sent, the server responds with a "401 Unauthorized" status code (for more information, see [[RFC2616]](https://go.microsoft.com/fwlink/?LinkId=90372), section 10.4.2) and a "WWW-Authenticate" header, per the framework specified in [RFC2616]. The initial WWW-Authenticate header does not carry any auth-data when the header is "WWW-Authenticate:negotiate"; it does carry data when the header is "WWW-Authenticate:Nego2". WWW-Authenticate response values MAY be spread across multiple WWW-Authenticate headers, as specified in [RFC2616] section 14.47.

The SPNEGO scheme operates as follows.

challenge = "Negotiate" "Nego2" auth-data

auth-data = 1#(gssapi-data)

<a id="Section_2.2.2"></a>
### 2.2.2 The Persistent-Auth Response Header

If the server successfully authenticates the request, it MAY indicate whether the Authorization header will be required for the next request on the connection. This is part of performance optimization and does not guarantee that an Authorization header will or will not be required.

The Persistent-Auth header has the following grammar:

Persistent-Auth = "Persistent-Auth" ":" 1#(persistent-auth-token)

persistent-auth-token = token

The Persistent-Auth-token has two possible values: "true" and "false". The client behavior in response to this header is specified in section [3.2.5](#Section_3.2.5).

<a id="Section_2.2.3"></a>
### 2.2.3 The WWW-Authorization Request Header

Upon receipt of the response containing a "WWW-Authenticate" header from the server, the client is expected to retry the HTTP request.

credentials= ("Negotiate" | "Nego2") auth-data2

auth-data2= 1encoded-GSSAPI-token

This auth-data2 directive contains the base64-encoding of an SPNEGO token returned by GSS_Init_sec_context() with the input token as the token from the WWW-Authenticate header if present.

The "Nego2" authentication scheme is used when and only when the server's WWW-Authenticate header contains "Nego2"; otherwise the "Negotiate" authentication scheme is used.

Only "401" represents an authentication error. For the meaning of any return code other than a success HTTP 2xx code, refer to [[RFC2616]](https://go.microsoft.com/fwlink/?LinkId=90372), section 10.2.

<a id="Section_3"></a>
# 3 Protocol Details

<a id="Section_3.1"></a>
## 3.1 Common Details

<a id="Section_3.1.1"></a>
### 3.1.1 Abstract Data Model

The abstract data model for common elements is specified in [[RFC2616]](https://go.microsoft.com/fwlink/?LinkId=90372) and [[RFC2617]](https://go.microsoft.com/fwlink/?LinkId=90373).

<a id="Section_3.1.2"></a>
### 3.1.2 Timers

None.

<a id="Section_3.1.3"></a>
### 3.1.3 Initialization

None.

<a id="Section_3.1.4"></a>
### 3.1.4 Higher-Layer Triggered Events

None.

<a id="Section_3.1.5"></a>
### 3.1.5 Processing Events and Sequencing Rules

None.

<a id="Section_3.1.6"></a>
### 3.1.6 Timer Events

None.

<a id="Section_3.1.7"></a>
### 3.1.7 Other Local Events

No local events, other than those specified in [[RFC4559]](https://go.microsoft.com/fwlink/?LinkId=90483).

<a id="Section_3.2"></a>
## 3.2 Client Details

<a id="Section_3.2.1"></a>
### 3.2.1 Abstract Data Model

The client-side abstract data model has one abstract data element in addition to those specified in [[RFC2616]](https://go.microsoft.com/fwlink/?LinkId=90372) and [[RFC2617]](https://go.microsoft.com/fwlink/?LinkId=90373):

**persistent-auth-value:** A flag for each connection indicating whether authentication will be persisted for a given connection. A value of 1 for this flag signifies that authentication to this server was persisted, and a value of 0 signifies that the authentication to this server was not persisted.

<a id="Section_3.2.2"></a>
### 3.2.2 Timers

None

<a id="Section_3.2.3"></a>
### 3.2.3 Initialization

The **persistent-auth-value** flag MUST (section [3.2.1](#Section_3.2.1)) be initialized to 0.

<a id="Section_3.2.4"></a>
### 3.2.4 Higher-Layer Triggered Events

None.

<a id="Section_3.2.5"></a>
### 3.2.5 Message Processing Events and Sequencing Rules

The Authorization header is only sent by the client. For more information, see [[RFC2616]](https://go.microsoft.com/fwlink/?LinkId=90372) section 14.8.

The Persistent-Auth header is a hint from the HTTP server to the HTTP client. The Persistent-Auth header is only valid when sent with the final response from the server after authentication has completed, and in all other cases it MUST be ignored. After the client has completed authentication with the server it SHOULD process the Persistent-Auth header.

If the persistent-auth-token is set to "true", then the client SHOULD set persistent-auth-value to 1 for the current connection.

If the persistent-auth-token is set to "false", then the client SHOULD set persistent-auth-value to 0 for the current connection.

If the persistent-auth-token is set to any value other than "true" or "false", then the Persistent-Auth header MUST be ignored.

When the Persistent-Auth header is not present and the authentication has completed, then the client SHOULD set persistent-auth-value to 1 if the underlying authentication protocol is NTLM.

When the client sends a request on a connection, then the client SHOULD use the value of persistent-auth-value to determine when to authenticate.

When persistent-auth-value is 1, then authentication SHOULD NOT be performed.

When persistent-auth-value is 0, then authentication SHOULD be performed whenever permitted under the conditions specified by [[RFC2617]](https://go.microsoft.com/fwlink/?LinkId=90373) and [[RFC4559]](https://go.microsoft.com/fwlink/?LinkId=90483).

When the client receives a "401" status code in the response, it MUST set persistent-auth-value to 0.

All other messages are handled by the client as specified in [RFC2616].

<a id="Section_3.2.6"></a>
### 3.2.6 Timer Events

None

<a id="Section_3.2.7"></a>
### 3.2.7 Other Local Events

Here are no other local events beyond those specified in [[RFC4559]](https://go.microsoft.com/fwlink/?LinkId=90483).

<a id="Section_3.3"></a>
## 3.3 Server Details

<a id="Section_3.3.1"></a>
### 3.3.1 Abstract Data Model

The server-side abstract data model has no abstract data elements beyond those specified in [[RFC2616]](https://go.microsoft.com/fwlink/?LinkId=90372) and [[RFC2617]](https://go.microsoft.com/fwlink/?LinkId=90373).

<a id="Section_3.3.2"></a>
### 3.3.2 Timers

None.

<a id="Section_3.3.3"></a>
### 3.3.3 Initialization

None.

<a id="Section_3.3.4"></a>
### 3.3.4 Higher-Layer Triggered Events

None.

<a id="Section_3.3.5"></a>
### 3.3.5 Message Processing Events and Sequencing Rules

The WWW-Authenticate header is only sent from the server. For more information, see [[RFC2616]](https://go.microsoft.com/fwlink/?LinkId=90372) sections 14.47.

Upon successful completion of authentication, the server SHOULD emit a Persistent-Auth header in the response. When the server is configured for connection-based authentication and the current connection is authenticated, then persistent-auth-token SHOULD be set to "true"; otherwise it SHOULD be set to "false".

All other messages are handled by the server as specified in [RFC2616].

<a id="Section_3.3.6"></a>
### 3.3.6 Timer Events

None.

<a id="Section_3.3.7"></a>
### 3.3.7 Other Local Events

Here are no other local events beyond those specified in [[RFC4559]](https://go.microsoft.com/fwlink/?LinkId=90483).

<a id="Section_4"></a>
# 4 Protocol Examples

An HTTP 1.1 client requests a resource from a server by sending an HTTP GET request as shown in the example below:

GET /test.htm HTTP/1.1

User-Agent: WHttpTst Test Harness

Host: webctestlive.ntdev.corp.microsoft.com:543

In this message the client is issuing an HTTP GET request to the server for the resource "test.htm".

The resource requested by the client requires client authentication. The server sends an HTTP response indicating this to the client, as shown in the example below:

HTTP/1.1 401 Unauthorized

Server: CHATS

Content-Length: 0

WWW-Authenticate: Nego2 YIIBpAYGKwYBBQUCoIIBmDCCAZSgGjAYB ...

In this message the server sends an HTTP 401 response to tell the client that it has to authenticate in order to access the requested resource. The server sets the value of the WWW-Authenticate header to "Nego 2" to indicate to the client that this is the scheme that will be used to authenticate.

Subsequently, the HTTP 1.1 client requests a resource from a server by issuing an HTTP GET request. The client also provides authentication information to the server as shown in the example below:

GET /test.htm HTTP/1.1

User-Agent: WHttpTst Test Harness

Host: webctestlive.ntdev.corp.microsoft.com:543

Authorization: Nego2 YIIEawYGKwYBBQUCoIIEXzCCBFugDjAMBgorBg ...

In this message the client is issuing an HTTP GET request to the server for the resource "test.htm". The client also sets the Authorization header to "Nego 2" and provides the necessary authentication information to authenticate to the server using this scheme.

<a id="Section_5"></a>
# 5 Security

<a id="Section_5.1"></a>
## 5.1 Security Considerations for Implementers

The Simple and Protected Generic Security Service Application Program Interface Negotiation Mechanism (SPNEGO) Protocol Extensions require the client to request mutual authentication services via the mutual authentication flag (as specified in [MS-SPNG](../MS-SPNG/MS-SPNG.md) section 3.3.3).

<a id="Section_5.2"></a>
## 5.2 Index of Security Parameters

None.

<a id="Section_6"></a>
# 6 Appendix A: Product Behavior

The information in this specification is applicable to the following Microsoft products or supplemental software. References to product versions include updates to those products.

**Windows Releases**

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

<a id="Section_7"></a>
# 7 Change Tracking

This section identifies changes that were made to this document since the last release. Changes are classified as Major, Minor, or None.

The revision class **Major** means that the technical content in the document was significantly revised. Major changes affect protocol interoperability or implementation. Examples of major changes are:

- A document revision that incorporates changes to interoperability requirements.
- A document revision that captures changes to protocol functionality.
The revision class **Minor** means that the meaning of the technical content was clarified. Minor changes do not affect protocol interoperability or implementation. Examples of minor changes are updates to clarify ambiguity at the sentence, paragraph, or table level.

The revision class **None** means that no new technical changes were introduced. Minor editorial and formatting changes may have been made, but the relevant technical content is identical to the last released version.

The changes made to this document are listed in the following table. For more information, please contact [dochelp@microsoft.com](mailto:dochelp@microsoft.com).

| Section | Description | Revision class |
| --- | --- | --- |
| [6](#Section_6) Appendix A: Product Behavior | Added Windows Server 2025 to the list of applicable products. | Major |


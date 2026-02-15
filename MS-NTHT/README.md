# [MS-NTHT]: NTLM Over HTTP Protocol

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
    - [2.2.1 WWW-Authenticate Response Header](#Section_2.2.1)
    - [2.2.2 Authorization Request Header](#Section_2.2.2)
    - [2.2.3 Proxy-Authenticate Response Header](#Section_2.2.3)
    - [2.2.4 Proxy-Authorization Request Header](#Section_2.2.4)
</details>

<details>
<summary>3 Protocol Details</summary>

- [3 Protocol Details](#Section_3)
  - [3.1 Common Details](#Section_3.1)
    - [3.1.1 Abstract Data Model](#Section_3.1.1)
    - [3.1.2 Timers](#Section_3.1.2)
    - [3.1.3 Initialization](#Section_3.1.3)
    - [3.1.4 Higher-Layer Triggered Events](#Section_3.1.4)
    - [3.1.5 Message Processing Events and Sequencing Rules](#Section_3.1.5)
      - [3.1.5.1 Unexpected Messages](#Section_3.1.5.1)
    - [3.1.6 Timer Events](#Section_3.1.6)
    - [3.1.7 Other Local Events](#Section_3.1.7)
  - [3.2 Server Details](#Section_3.2)
    - [3.2.1 Abstract Data Model](#Section_3.2.1)
    - [3.2.2 Timers](#Section_3.2.2)
    - [3.2.3 Initialization](#Section_3.2.3)
    - [3.2.4 Higher-Layer Triggered Events](#Section_3.2.4)
    - [3.2.5 Message Processing Events and Sequencing Rules](#Section_3.2.5)
    - [3.2.6 Timer Events](#Section_3.2.6)
    - [3.2.7 Other Local Events](#Section_3.2.7)
  - [3.3 Client Details](#Section_3.3)
    - [3.3.1 Abstract Data Model](#Section_3.3.1)
    - [3.3.2 Timers](#Section_3.3.2)
    - [3.3.3 Initialization](#Section_3.3.3)
    - [3.3.4 Higher-Layer Triggered Events](#Section_3.3.4)
    - [3.3.5 Message Processing Events and Sequencing Rules](#Section_3.3.5)
    - [3.3.6 Timer Events](#Section_3.3.6)
    - [3.3.7 Other Local Events](#Section_3.3.7)
  - [3.4 Proxy Details](#Section_3.4)
    - [3.4.1 Abstract Data Model](#Section_3.4.1)
    - [3.4.2 Timers](#Section_3.4.2)
    - [3.4.3 Initialization](#Section_3.4.3)
    - [3.4.4 Higher-Layer Triggered Events](#Section_3.4.4)
    - [3.4.5 Message Processing Events and Sequencing Rules](#Section_3.4.5)
    - [3.4.6 Timer Events](#Section_3.4.6)
    - [3.4.7 Other Local Events](#Section_3.4.7)
</details>

<details>
<summary>4 Protocol Examples</summary>

- [4 Protocol Examples](#Section_4)
  - [4.1 Server Examples](#Section_4.1)
  - [4.2 Proxy Examples](#Section_4.2)
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

Microsoft provides support for NT LAN Manager (NTLM) (as specified in [MS-NLMP](../MS-NLMP/MS-NLMP.md)) authentication in Microsoft Internet Explorer and Microsoft Internet Information Services (IIS) that uses the HTTP Protocol (for more information, see [[RFC2616]](https://go.microsoft.com/fwlink/?LinkId=90372)) in addition to other standard authentication mechanisms. This provides the benefits of the NTLM Authentication Protocol for web applications when other authentication mechanisms (such as those specified in [[RFC4559]](https://go.microsoft.com/fwlink/?LinkId=90483) and [[RFC2617]](https://go.microsoft.com/fwlink/?LinkId=90373)) are not available.

Support for NTLM authentication is as specified in [RFC4559], using native NTLM Authentication Protocol (as specified in [MS-NLMP]) data units instead of encoded tokens (as specified in [[RFC4178]](https://go.microsoft.com/fwlink/?LinkId=90461)). The tokens are still transmitted using base64 encoding. This document calls out the differences in the Microsoft implementation from what is specified in [RFC4559], where applicable.

Sections 1.5, 1.8, 1.9, 2, and 3 of this specification are normative. All other sections and examples in this specification are informative.

<a id="Section_1.1"></a>
## 1.1 Glossary

This document uses the following terms:

<a id="gt_backus-naur-form-bnf"></a>
**Backus-Naur Form (BNF)**: A syntax used to describe context-free grammars, which is a prescribed way to describe languages ([[RFC2616]](https://go.microsoft.com/fwlink/?LinkId=90372) section 2.1). See also "Augmented Backus-Naur Form (ABNF)".

<a id="gt_client"></a>
**client**: A program that establishes connections for the purpose of sending requests (see [RFC2616] section 1.3).

<a id="gt_proxy"></a>
**proxy**: An intermediary program that acts as both a server and a client for the purpose of making requests on behalf of other clients (see [RFC2616] section 1.3).

<a id="gt_server"></a>
**server**: An application program that accepts connections in order to service requests by sending back responses (see [RFC2616] section 1.3).

**MAY, SHOULD, MUST, SHOULD NOT, MUST NOT:** These terms (in all caps) are used as defined in [[RFC2119]](https://go.microsoft.com/fwlink/?LinkId=90317). All statements of optional behavior use either MAY, SHOULD, or SHOULD NOT.

<a id="Section_1.2"></a>
## 1.2 References

Links to a document in the Microsoft Open Specifications library point to the correct section in the most recently published version of the referenced document. However, because individual documents in the library are not updated at the same time, the section numbers in the documents may not match. You can confirm the correct section numbering by checking the [Errata](https://go.microsoft.com/fwlink/?linkid=850906).

<a id="Section_1.2.1"></a>
### 1.2.1 Normative References

We conduct frequent surveys of the normative references to assure their continued availability. If you have any issue with finding a normative reference, please contact [dochelp@microsoft.com](mailto:dochelp@microsoft.com). We will assist you in finding the relevant information.

[MS-NLMP] Microsoft Corporation, "[NT LAN Manager (NTLM) Authentication Protocol](../MS-NLMP/MS-NLMP.md)".

[RFC2119] Bradner, S., "Key words for use in RFCs to Indicate Requirement Levels", BCP 14, RFC 2119, March 1997, [https://www.rfc-editor.org/info/rfc2119](https://go.microsoft.com/fwlink/?LinkId=90317)

[RFC2616] Fielding, R., Gettys, J., Mogul, J., et al., "Hypertext Transfer Protocol -- HTTP/1.1", RFC 2616, June 1999, [https://www.rfc-editor.org/info/rfc2616](https://go.microsoft.com/fwlink/?LinkId=90372)

[RFC2617] Franks, J., Hallam-Baker, P., Hostetler, J., et al., "HTTP Authentication: Basic and Digest Access Authentication", RFC 2617, June 1999, [https://www.rfc-editor.org/info/rfc2617](https://go.microsoft.com/fwlink/?LinkId=90373)

[RFC4178] Zhu, L., Leach, P., Jaganathan, K., and Ingersoll, W., "The Simple and Protected Generic Security Service Application Program Interface (GSS-API) Negotiation Mechanism", RFC 4178, October 2005, [https://www.rfc-editor.org/info/rfc4178](https://go.microsoft.com/fwlink/?LinkId=90461)

[RFC4559] Jaganathan, K., Zhu, L., and Brezak, J., "SPNEGO-based Kerberos and NTLM HTTP Authentication in Microsoft Windows", RFC 4559, June 2006, [https://www.rfc-editor.org/info/rfc4559](https://go.microsoft.com/fwlink/?LinkId=90483)

<a id="Section_1.2.2"></a>
### 1.2.2 Informative References

None.

<a id="Section_1.3"></a>
## 1.3 Overview

The NTLM over HTTP Protocol authentication variant is similar to the SPNEGO HTTP (as specified in [[RFC4559]](https://go.microsoft.com/fwlink/?LinkId=90483)) authentication mechanism. Both are used to authenticate a web [**client**](#gt_client) to a web [**server**](#gt_server). Although SPNEGO HTTP (as specified in [RFC4559]) works with both Kerberos and NTLM authentication, the NTLM over HTTP Protocol authentication variant only works with NTLM. The Kerberos protocol is not supported.

<a id="Section_1.4"></a>
## 1.4 Relationship to Other Protocols

This document is a companion to the SPNEGO HTTP authentication document, as specified in [[RFC4559]](https://go.microsoft.com/fwlink/?LinkId=90483). It uses the augmented [**Backus-Naur Form (BNF)**](#gt_backus-naur-form-bnf), as specified in [RFC4559] section 4, and relies on both the non-terminals defined in that document and other aspects of the specification HTTP/1.1, as specified in [[RFC2617]](https://go.microsoft.com/fwlink/?LinkId=90373). For more information, see [[RFC2616]](https://go.microsoft.com/fwlink/?LinkId=90372).

<a id="Section_1.5"></a>
## 1.5 Prerequisites/Preconditions

NTLM over HTTP Protocol authentication assumes the following in addition to any assumptions specified in [MS-NLMP](../MS-NLMP/MS-NLMP.md).

- The web [**server**](#gt_server) is operating in an environment with a database of user identities, and the NT LAN Manager (NTLM) Authentication Protocol, as specified in [MS-NLMP], is available to authenticate those users.
- The web [**client**](#gt_client) has implemented the NT LAN Manager (NTLM) Authentication Protocol, as specified in [MS-NLMP], so that it can participate in user authentication to the web server.
<a id="Section_1.6"></a>
## 1.6 Applicability Statement

NTLM HTTP authentication is used in environments where SPNEGO-based Kerberos and NTLM HTTP authentication, as specified in [[RFC4559]](https://go.microsoft.com/fwlink/?LinkId=90483), are not available, and the web [**client**](#gt_client) and [**server**](#gt_server) support NTLM authentication, as specified in [MS-NLMP](../MS-NLMP/MS-NLMP.md).

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
| HTTP auth-scheme | NTLM | [[RFC2617]](https://go.microsoft.com/fwlink/?LinkId=90373) section 1.2 |

<a id="Section_2"></a>
# 2 Messages

<a id="Section_2.1"></a>
## 2.1 Transport

NTLM over HTTP Protocol messages are carried in the HTTP authentication exchanges as authentication data (auth-data), as specified in [[RFC4559]](https://go.microsoft.com/fwlink/?LinkId=90483) sections 4.1 and 4.2.

<a id="Section_2.2"></a>
## 2.2 Message Syntax

The use of NTLM over HTTP Protocol authentication is indicated by an HTTP authentication scheme (auth-scheme) NTLM. The authentication parameters (auth-params) that are exchanged are base64-encoded messages. For more details about auth-scheme and auth-params, see [[RFC2617]](https://go.microsoft.com/fwlink/?LinkId=90373) section 1.2.

<a id="Section_2.2.1"></a>
### 2.2.1 WWW-Authenticate Response Header

If the [**server**](#gt_server) receives a request for an access-protected object and an acceptable Authorization Request Header has not been sent, the server MUST respond with a "401 Unauthorized" status code and a WWW-Authenticate Response Header, per the framework in [[RFC2616]](https://go.microsoft.com/fwlink/?LinkId=90372). The initial WWW-Authenticate Response Header MUST NOT carry any auth-data. For more details about the text in this section, see [RFC2616], and specifically for the 401 status code, see [RFC2616] section 10.4.2.

The NTLM scheme operates as follows.

challenge= "NTLM" auth-data

auth-data = 1#( [ntlm-data] )

The meaning of the value of the directive used above is as follows:

ntlm-data

The ntlm-data directive contains the base64 encoding of a CHALLENGE_MESSAGE, as specified in [MS-NLMP](../MS-NLMP/MS-NLMP.md) section 2.2.1.2.

<a id="Section_2.2.2"></a>
### 2.2.2 Authorization Request Header

Upon receipt of the response containing a WWW-Authenticate header from the [**server**](#gt_server), the [**client**](#gt_client) is expected to retry the HTTP request with the authorization header, per the framework in [[RFC2616]](https://go.microsoft.com/fwlink/?LinkId=90372) in the following.

credentials= "NTLM" auth-data2

auth-data2= 1#( [ntlm-data] )

The meaning of the value of the directive used above is as follows:

ntlm-data

The ntlm-data directive contains the base64 encoding of either an AUTHENTICATE_MESSAGE, as specified in [MS-NLMP](../MS-NLMP/MS-NLMP.md) section 2.2.1.3, or a NEGOTIATE_MESSAGE, as specified in [MS-NLMP] section 2.2.1.1.

Any return code other than a client error HTTP 401 status code (for more information, see [RFC2616] section 10.4.2), represents successful authentication. If the client is not able to access the requested resource and the response status code is not HTTP 401, the problem is HTTP protocol-specific (for more information, see [RFC2616] section 10).

<a id="Section_2.2.3"></a>
### 2.2.3 Proxy-Authenticate Response Header

If the [**client**](#gt_client) must authenticate itself to a [**proxy**](#gt_proxy) and an acceptable proxy-authorization header has not been sent, the proxy MUST respond with a "407 Proxy Authentication Required" status code (for more information, see [[RFC2616]](https://go.microsoft.com/fwlink/?LinkId=90372) section 10.4.8) and a "Proxy-Authenticate" header, per the framework in [RFC2616]. The initial proxy-authenticate header MUST NOT carry any auth-data.

The NTLM scheme operates as follows.

challenge= "NTLM" auth-data3

auth-data3= 1#( [ntlm-data] )

The meanings of the values of the directives used above are as follows:

ntlm-data

The ntlm-data directive contains the base64 encoding of a CHALLENGE_MESSAGE, as specified in [MS-NLMP](../MS-NLMP/MS-NLMP.md) section 2.2.1.2.

<a id="Section_2.2.4"></a>
### 2.2.4 Proxy-Authorization Request Header

Upon receipt of the response containing a proxy-authenticate header from the [**proxy**](#gt_proxy), the [**client**](#gt_client) is expected to retry the HTTP request with the proxy-authorization header, per the framework in [[RFC2616]](https://go.microsoft.com/fwlink/?LinkId=90372).

credentials= "NTLM" auth-data4

auth-data4= 1#( [ntlm-data] )

The meanings of the values of the directives used above are as follows:

ntlm-data

The ntlm_data directive contains the base64 encoding of either an AUTHENTICATE_MESSAGE, as specified in [MS-NLMP](../MS-NLMP/MS-NLMP.md) section 2.2.1.3, or a NEGOTIATE_MESSAGE, as specified in [MS-NLMP] section 2.2.1.1.

Any return code other than a client error HTTP 407 status code ([RFC2616] section 10.4.2), represents successful authentication. If the client is not able to access the requested resource and the response status code is not HTTP 407, the reason is HTTP protocol-specific. For details, see [RFC2616] section 10.

<a id="Section_3"></a>
# 3 Protocol Details

<a id="Section_3.1"></a>
## 3.1 Common Details

<a id="Section_3.1.1"></a>
### 3.1.1 Abstract Data Model

The abstract data model follows the specifications in [[RFC4559]](https://go.microsoft.com/fwlink/?LinkId=90483).

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
### 3.1.5 Message Processing Events and Sequencing Rules

The WWW-Authenticate header is only sent from the [**server**](#gt_server). The Authorization header is only sent by the [**client**](#gt_client). (For details, see [[RFC2617]](https://go.microsoft.com/fwlink/?LinkId=90373) and also see [[RFC2616]](https://go.microsoft.com/fwlink/?LinkId=90372) sections 14.47 and 14.8.) Clients, servers, and [**proxies**](#gt_2b529701-3e64-4bf8-97ec-15afbba18b73) MUST be compliant with [RFC2617] and [RFC2616].

The Proxy-Authenticate header is only sent from the proxy. The Proxy-Authorization header is only sent by the client. (For more information, see [RFC2617] and [RFC2616] sections 14.33 and 14.34.) Clients, servers, and proxies MUST be compliant with [RFC2617] and [RFC2616].

<a id="Section_3.1.5.1"></a>
#### 3.1.5.1 Unexpected Messages

Unexpected messages cause the authentication to fail.

- If the [**server**](#gt_server) receives an unexpected message, it sends an HTTP 401 message to the [**client**](#gt_client).
- If the client receives an unexpected message, it does not send a new request to the server.
<a id="Section_3.1.6"></a>
### 3.1.6 Timer Events

None.

<a id="Section_3.1.7"></a>
### 3.1.7 Other Local Events

There are no local events other than those specified in [[RFC4559]](https://go.microsoft.com/fwlink/?LinkId=90483).

<a id="Section_3.2"></a>
## 3.2 Server Details

<a id="Section_3.2.1"></a>
### 3.2.1 Abstract Data Model

The abstract data model follows the specifications in [[RFC4559]](https://go.microsoft.com/fwlink/?LinkId=90483).

<a id="Section_3.2.2"></a>
### 3.2.2 Timers

None.

<a id="Section_3.2.3"></a>
### 3.2.3 Initialization

None.

<a id="Section_3.2.4"></a>
### 3.2.4 Higher-Layer Triggered Events

None.

<a id="Section_3.2.5"></a>
### 3.2.5 Message Processing Events and Sequencing Rules

The WWW-Authenticate header is only sent from the [**server**](#gt_server). The Authorization header is only sent by the [**client**](#gt_client). (For more information, see [[RFC2617]](https://go.microsoft.com/fwlink/?LinkId=90373) and [[RFC2616]](https://go.microsoft.com/fwlink/?LinkId=90372) section 14.47.) Servers MUST be compliant with [RFC2617] and [RFC2616].

The Proxy-Authenticate header is only sent from the [**proxy**](#gt_proxy). The Proxy-Authorization header is only sent by the client. (For more information, see [RFC2617] and [RFC2616] sections 14.33 and 14.34.) Servers MUST be compliant with [RFC2617] and [RFC2616].

<a id="Section_3.2.6"></a>
### 3.2.6 Timer Events

None.

<a id="Section_3.2.7"></a>
### 3.2.7 Other Local Events

There are no local events other than those specified in [[RFC4559]](https://go.microsoft.com/fwlink/?LinkId=90483).

<a id="Section_3.3"></a>
## 3.3 Client Details

<a id="Section_3.3.1"></a>
### 3.3.1 Abstract Data Model

The abstract data model follows the specifications in [[RFC4559]](https://go.microsoft.com/fwlink/?LinkId=90483).

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

The WWW-Authenticate header is only sent from the [**server**](#gt_server). The Authorization header is only sent by the [**client**](#gt_client). (For more information, see [[RFC2617]](https://go.microsoft.com/fwlink/?LinkId=90373) and [[RFC2616]](https://go.microsoft.com/fwlink/?LinkId=90372) section 14.47.) Servers MUST be compliant with [RFC2617] and [RFC2616].

The Proxy-Authenticate header is only sent from the [**proxy**](#gt_proxy). The Proxy-Authorization header is only sent by the client. (For more information, see [RFC2617] and [RFC2616] sections 14.33 and 14.34.) Servers MUST be compliant with [RFC2617] and [RFC2616].

<a id="Section_3.3.6"></a>
### 3.3.6 Timer Events

None.

<a id="Section_3.3.7"></a>
### 3.3.7 Other Local Events

There are no local events other than those specified in [[RFC4559]](https://go.microsoft.com/fwlink/?LinkId=90483).

<a id="Section_3.4"></a>
## 3.4 Proxy Details

<a id="Section_3.4.1"></a>
### 3.4.1 Abstract Data Model

The abstract data model follows the specifications in [[RFC4559]](https://go.microsoft.com/fwlink/?LinkId=90483).

<a id="Section_3.4.2"></a>
### 3.4.2 Timers

None.

<a id="Section_3.4.3"></a>
### 3.4.3 Initialization

None.

<a id="Section_3.4.4"></a>
### 3.4.4 Higher-Layer Triggered Events

None.

<a id="Section_3.4.5"></a>
### 3.4.5 Message Processing Events and Sequencing Rules

The WWW-Authenticate header is only sent from the [**server**](#gt_server). The Authorization header is only sent by the [**client**](#gt_client). (For more information, see [[RFC2617]](https://go.microsoft.com/fwlink/?LinkId=90373) and [[RFC2616]](https://go.microsoft.com/fwlink/?LinkId=90372) section 14.47.) Servers MUST be compliant with [RFC2617] and [RFC2616].

The Proxy-Authenticate header is only sent from the [**proxy**](#gt_proxy). The Proxy-Authorization header is only sent by the client. (For more information, see [RFC2617] and [RFC2616] sections 14.33 and 14.34.) Servers MUST be compliant with [RFC2617] and [RFC2616].

<a id="Section_3.4.6"></a>
### 3.4.6 Timer Events

None.

<a id="Section_3.4.7"></a>
### 3.4.7 Other Local Events

There are no local events other than those specified in [[RFC4559]](https://go.microsoft.com/fwlink/?LinkId=90483).

<a id="Section_4"></a>
# 4 Protocol Examples

<a id="Section_4.1"></a>
## 4.1 Server Examples

This scenario shows the messages exchanged when a web [**client**](#gt_client) requests an access-protected document from a web [**server**](#gt_server) using a GET method request at the URL: http://www.nowhere.org/dir/index.html.

C: GET dir/index.html

The first time the client requests the document, no Authorization header is sent; so the server responds with the following.

S: HTTP/1.1 401 Unauthorized

S: WWW-Authenticate: NTLM

The client obtains the local user credentials by using the [MS-NLMP](../MS-NLMP/MS-NLMP.md) security package and then generates a new GET request to the server. The request contains an Authorization header with an NTLM NEGOTIATE_MESSAGE (as specified in [MS-NLMP] section 2.2.1.1) in ntlm-data.

C: GET dir/index.html

C: Authorization: NTLM tESsBmE/yNY3lb6a0L6vVQEZNqwQn0s8Unew

The server decodes the ntlm-data that is contained in the auth-data2 base64-encoded data and passes this to its implementation of [MS-NLMP]. If the server accepts this authentication data from the client, it responds with an HTTP 401 code (for more information, see [[RFC2616]](https://go.microsoft.com/fwlink/?LinkId=90372) section 10.2) and a WWW-Authenticate header with an NTLM CHALLENGE_MESSAGE (as specified in [MS-NLMP] section 2.2.1.2) in ntlm-data.

S: HTTP/1.1 401 Unauthorized

S: WWW-Authenticate: NTLM yNY3lb6a0L6vVQEZNqwQn0s8UNew33KdKZvG+Onv

The client decodes the ntlm-data that is contained in the auth-data base64-encoded data and passes this to its implementation of [MS-NLMP]. If this authentication data is valid, the client responds by reissuing the GET request with an Authorization header that contains an NTLM AUTHENTICATE_MESSAGE (as specified in [MS-NLMP] section 2.2.1.3) in ntlm-data.

C: GET dir/index.html

C: Authorization: NTLM kGaXHz6/owHcWRlvGFk8ReUZKHo=QEZNqwQn0s8U

The server decodes the ntlm-data that is contained in the auth-data2 base64-encoded data and passes this to its implementation of [MS-NLMP]. If the server accepts this authentication data from the client, it responds with an HTTP 2xx code (for more information, see [RFC2616] section 10.2) indicating success. The requested content is also included in the server response.

**Note** The base64 values used previously are for illustrative purposes only and do not represent valid base64-encoded NTLM messages.

<a id="Section_4.2"></a>
## 4.2 Proxy Examples

This scenario shows the messages that are exchanged when a web [**client**](#gt_client) requests an access-protected document from a [**proxy**](#gt_proxy) using a GET method request at the URL: http://www.nowhere.org/dir/index.html.

C: GET dir/index.html

The first time the client requests the document, no Proxy-Authorization header is sent; so the proxy responds with the following.

S: HTTP/1.1 407 Proxy Authentication Required

S: Proxy-Authenticate: NTLM

The client obtains the local user credentials using the [MS-NLMP](../MS-NLMP/MS-NLMP.md) security package and then generates a new GET request to the proxy. The request contains a Proxy-Authorization header with an NTLM NEGOTIATE_MESSAGE (as specified in [MS-NLMP] section 2.2.1.1) in ntlm-data.

C: GET dir/index.html

C: Proxy-Authorization: NTLM tESsBmE/yNY3lb6a0L6vVQEZNqwQn0s8Unew

The proxy decodes the ntlm-data that is contained in the auth-data2 base64-encoded data and passes this to its implementation of [MS-NLMP]. If the proxy accepts this authentication data from the client, it responds with an HTTP 407 code (for more information, see [[RFC2616]](https://go.microsoft.com/fwlink/?LinkId=90372) section 10.2) and a Proxy-Authenticate header with an NTLM CHALLENGE_MESSAGE (as specified in [MS-NLMP] section 2.2.1.2) in ntlm-data.

S: HTTP/1.1 407 Proxy Authentication Required

S: Proxy-Authenticate: NTLM yNY3lb6a0L6vVQEZNqwQn0s8UNew33KdKZvG+Onv

The client decodes the ntlm-data that is contained in the auth-data base64-encoded data and passes this to its implementation of [MS-NLMP]. If this authentication data is valid, the client responds by reissuing the GET request with a Proxy-Authorization header that contains an NTLM AUTHENTICATE_MESSAGE (as specified in [MS-NLMP] section 2.2.1.3) in ntlm-data.

C: GET dir/index.html

C: Proxy-Authorization: NTLM kGaXHz6/owHcWRlvGFk8ReUZKHo=QEZNqwQn0s8U

The proxy decodes the ntlm-data that is contained in the auth-data2 base64-encoded data and passes this to its implementation of [MS-NLMP]. If the proxy accepts this authentication data from the client, it responds with an HTTP 2xx code (for more information, see [RFC2616] section 10.2) indicating success. The requested content is also included in the proxy response.

**Note** The base64 values used previously are for illustrative purposes only and do not represent valid base64-encoded NTLM messages.

<a id="Section_5"></a>
# 5 Security

<a id="Section_5.1"></a>
## 5.1 Security Considerations for Implementers

The NTLM Authentication Protocol (see [MS-NLMP](../MS-NLMP/MS-NLMP.md)) does not provide any facilities for mutual authentication; therefore, [**server**](#gt_server) identities cannot be verified. Other security considerations are as specified in [[RFC4559]](https://go.microsoft.com/fwlink/?LinkId=90483) section 6.

<a id="Section_5.2"></a>
## 5.2 Index of Security Parameters

None.

<a id="Section_6"></a>
# 6 Appendix A: Product Behavior

The information in this specification is applicable to the following Microsoft products or supplemental software. References to product versions include updates to those products.

**Windows Releases**

- Windows NT operating system
- Windows 2000 operating system
- Windows XP operating system
- Windows Server 2003 operating system
- Windows Vista operating system
- Windows Server 2008 operating system
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


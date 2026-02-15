# [MS-WDVSE]: Web Distributed Authoring and Versioning (WebDAV) Protocol: Server Extensions

Last updated: 9/16/2024

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
    - [2.2.1 Translate Request Header](#Section_2.2.1)
    - [2.2.2 MS-Author-Via Response Header](#Section_2.2.2)
    - [2.2.3 Depth "noroot" Request Header Extension](#Section_2.2.3)
    - [2.2.4 SEARCH Method](#Section_2.2.4)
    - [2.2.5 Deviations from RFC4918](#Section_2.2.5)
      - [2.2.5.1 Additional "Live" Properties](#Section_2.2.5.1)
      - [2.2.5.2 Collections and Locking](#Section_2.2.5.2)
      - [2.2.5.3 Multiple Property Elements](#Section_2.2.5.3)
</details>

<details>
<summary>3 Protocol Details</summary>

- [3 Protocol Details](#Section_3)
  - [3.1 WebDAV Client Details](#Section_3.1)
    - [3.1.1 Abstract Data Model](#Section_3.1.1)
    - [3.1.2 Timers](#Section_3.1.2)
    - [3.1.3 Initialization](#Section_3.1.3)
    - [3.1.4 Higher-Layer Triggered Events](#Section_3.1.4)
    - [3.1.5 Processing Events and Sequencing Rules](#Section_3.1.5)
      - [3.1.5.1 Translate Request Header](#Section_3.1.5.1)
      - [3.1.5.2 MS-Author-Via Response Header](#Section_3.1.5.2)
      - [3.1.5.3 Depth "noroot" Request Header Extension](#Section_3.1.5.3)
      - [3.1.5.4 SEARCH Method](#Section_3.1.5.4)
    - [3.1.6 Timer Events](#Section_3.1.6)
    - [3.1.7 Other Local Events](#Section_3.1.7)
  - [3.2 WebDAV Server Details](#Section_3.2)
    - [3.2.1 Abstract Data Model](#Section_3.2.1)
    - [3.2.2 Timers](#Section_3.2.2)
    - [3.2.3 Initialization](#Section_3.2.3)
    - [3.2.4 Higher-Layer Triggered Events](#Section_3.2.4)
    - [3.2.5 Processing Events and Sequencing Rules](#Section_3.2.5)
      - [3.2.5.1 Translate Request Header](#Section_3.2.5.1)
      - [3.2.5.2 MS-Author-Via Response Header](#Section_3.2.5.2)
      - [3.2.5.3 Depth "noroot" Request Header Extension](#Section_3.2.5.3)
      - [3.2.5.4 SEARCH Method](#Section_3.2.5.4)
    - [3.2.6 Timer Events](#Section_3.2.6)
    - [3.2.7 Other Local Events](#Section_3.2.7)
</details>

<details>
<summary>4 Protocol Examples</summary>

- [4 Protocol Examples](#Section_4)
  - [4.1 MS-Author-Via Response Header](#Section_4.1)
  - [4.2 Translate Request Header](#Section_4.2)
  - [4.3 Depth "noroot" Request Header Extension](#Section_4.3)
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

The Web Distributed Authoring and Versioning (WebDAV) Protocol defined in [[RFC4918]](https://go.microsoft.com/fwlink/?LinkId=151240) extends the standard Hypertext Transfer Protocol (HTTP) mechanisms defined in [[RFC2068]](https://go.microsoft.com/fwlink/?LinkId=90310) to provide file access and content management over the Internet. The WebDAV Protocol enables an Internet–based file system. However, some types of files (for example, files with programmatically derived content) are not easily managed by WebDAV and some protocol interactions are suboptimal for file system usage.

These WebDAV protocol server extensions (WDVSE) extend WebDAV by introducing new HTTP request and response headers that both enable the file types that are not currently manageable and optimize protocol interactions for file system clients. These extensions also introduce a new WebDAV method that is used to send search queries to disparate search providers.

Sections 1.5, 1.8, 1.9, 2, and 3 of this specification are normative. All other sections and examples in this specification are informative.

<a id="Section_1.1"></a>
## 1.1 Glossary

This document uses the following terms:

<a id="gt_augmented-backus-naur-form-abnf"></a>
**Augmented Backus-Naur Form (ABNF)**: A modified version of Backus-Naur Form (BNF), commonly used by Internet specifications. ABNF notation balances compactness and simplicity with reasonable representational power. ABNF differs from standard BNF in its definitions and uses of naming rules, repetition, alternatives, order-independence, and value ranges. For more information, see [[RFC5234]](https://go.microsoft.com/fwlink/?LinkId=123096).

<a id="gt_collection"></a>
**collection**: A resource that contains a set of URIs that identify member resources. Use of this term is consistent with what is specified in [[RFC4918]](https://go.microsoft.com/fwlink/?LinkId=151240) section 5.2.

<a id="gt_entity"></a>
**entity**: Any document on a server that is accessible by using a [**Hypertext Transfer Protocol (HTTP)**](#gt_hypertext-transfer-protocol-http) URL.

<a id="gt_hypertext-transfer-protocol-http"></a>
**Hypertext Transfer Protocol (HTTP)**: An application-level protocol for distributed, collaborative, hypermedia information systems (text, graphic images, sound, video, and other multimedia files) on the World Wide Web.

<a id="gt_hypertext-transfer-protocol-secure-https"></a>
**Hypertext Transfer Protocol Secure (HTTPS)**: An extension of HTTP that securely encrypts and decrypts web page requests. In some older protocols, "Hypertext Transfer Protocol over Secure Sockets Layer" is still used (Secure Sockets Layer has been deprecated). For more information, see [[SSL3]](https://go.microsoft.com/fwlink/?LinkId=90534) and [[RFC5246]](https://go.microsoft.com/fwlink/?LinkId=129803).

<a id="gt_locking"></a>
**locking**: A mechanism that is used for overwrite protection. [**Locking**](#gt_locking) can be applied to individual resources or to entire collection hierarchies (see [RFC4918] sections 6 and 7).

<a id="gt_property"></a>
**property**: A name/value pair that associates metadata with a resource. This term is used as specified in [RFC4918] section 4.

<a id="gt_secure-sockets-layer-ssl"></a>
**Secure Sockets Layer (SSL)**: A security protocol that supports confidentiality and integrity of messages in client and server applications that communicate over open networks. SSL supports server and, optionally, client authentication using X.509 certificates [[X509]](https://go.microsoft.com/fwlink/?LinkId=90590) and [[RFC5280]](https://go.microsoft.com/fwlink/?LinkId=131034). SSL is superseded by [**Transport Layer Security (TLS)**](#gt_transport-layer-security-tls). TLS version 1.0 is based on SSL version 3.0 [SSL3].

<a id="gt_transport-layer-security-tls"></a>
**Transport Layer Security (TLS)**: A security protocol that supports confidentiality and integrity of messages in client and server applications communicating over open networks. TLS supports server and, optionally, client authentication by using X.509 certificates (as specified in [X509]). TLS is standardized in the IETF TLS working group.

<a id="gt_uniform-resource-locator-url"></a>
**Uniform Resource Locator (URL)**: A string of characters in a standardized format that identifies a document or resource on the World Wide Web. The format is as specified in [[RFC1738]](https://go.microsoft.com/fwlink/?LinkId=90287).

<a id="gt_web-distributed-authoring-and-versioning-protocol-webdav"></a>
**Web Distributed Authoring and Versioning Protocol (WebDAV)**: The Web Distributed Authoring and Versioning Protocol, as described in [[RFC2518]](https://go.microsoft.com/fwlink/?LinkId=90363) or [RFC4918].

<a id="gt_web-server"></a>
**web server**: A server computer that hosts websites and responds to requests from applications.

<a id="gt_webdav-client"></a>
**WebDAV client**: A computer that uses [**WebDAV**](#gt_web-distributed-authoring-and-versioning-protocol-webdav), as described in [RFC2518] or [RFC4918], to retrieve data from a [**WebDAV server**](#gt_webdav-server).

<a id="gt_webdav-server"></a>
**WebDAV server**: A computer that supports [**WebDAV**](#gt_web-distributed-authoring-and-versioning-protocol-webdav), as described in [RFC2518] or [RFC4918], and responds to requests from [**WebDAV clients**](#gt_webdav-client).

**MAY, SHOULD, MUST, SHOULD NOT, MUST NOT:** These terms (in all caps) are used as defined in [[RFC2119]](https://go.microsoft.com/fwlink/?LinkId=90317). All statements of optional behavior use either MAY, SHOULD, or SHOULD NOT.

<a id="Section_1.2"></a>
## 1.2 References

Links to a document in the Microsoft Open Specifications library point to the correct section in the most recently published version of the referenced document. However, because individual documents in the library are not updated at the same time, the section numbers in the documents may not match. You can confirm the correct section numbering by checking the [Errata](https://go.microsoft.com/fwlink/?linkid=850906).

<a id="Section_1.2.1"></a>
### 1.2.1 Normative References

We conduct frequent surveys of the normative references to assure their continued availability. If you have any issue with finding a normative reference, please contact [dochelp@microsoft.com](mailto:dochelp@microsoft.com). We will assist you in finding the relevant information.

[RFC2068] Fielding, R., Gettys, J., Mogul, J., et al., "Hypertext Transfer Protocol -- HTTP/1.1", RFC 2068, January 1997, [https://www.rfc-editor.org/info/rfc2068](https://go.microsoft.com/fwlink/?LinkId=90310)

[RFC2119] Bradner, S., "Key words for use in RFCs to Indicate Requirement Levels", BCP 14, RFC 2119, March 1997, [https://www.rfc-editor.org/info/rfc2119](https://go.microsoft.com/fwlink/?LinkId=90317)

[RFC2246] Dierks, T., and Allen, C., "The TLS Protocol Version 1.0", RFC 2246, January 1999, [https://www.rfc-editor.org/info/rfc2246](https://go.microsoft.com/fwlink/?LinkId=90324)

[RFC2291] Slein, J., Vitali, F., Whitehead, E., et al., "Requirements for a Distributed Authoring and Versioning Protocol for the World Wide Web", RFC 2291, February 1998, [https://www.rfc-editor.org/info/rfc2291](https://go.microsoft.com/fwlink/?LinkId=93031)

[RFC2616] Fielding, R., Gettys, J., Mogul, J., et al., "Hypertext Transfer Protocol -- HTTP/1.1", RFC 2616, June 1999, [https://www.rfc-editor.org/info/rfc2616](https://go.microsoft.com/fwlink/?LinkId=90372)

[RFC4234] Crocker, D., Ed., and Overell, P., "Augmented BNF for Syntax Specifications: ABNF", RFC 4234, October 2005, [https://www.rfc-editor.org/info/rfc4234](https://go.microsoft.com/fwlink/?LinkId=90462)

[RFC4918] Dusseault, L, Ed., "HTTP Extensions for Web Distributed Authoring and Versioning (WebDAV)", RFC 4918, June 2007, [https://www.rfc-editor.org/info/rfc4918](https://go.microsoft.com/fwlink/?LinkId=151240)

<a id="Section_1.2.2"></a>
### 1.2.2 Informative References

[MSASP] Microsoft Corporation, "Active Server Pages", [http://msdn.microsoft.com/en-us/library/aa286483.aspx](https://go.microsoft.com/fwlink/?LinkId=89942)

[MSDN-FP] Microsoft Corporation, "FrontPage", [http://msdn.microsoft.com/en-us/library/aa167865(office.11).aspx](https://go.microsoft.com/fwlink/?LinkId=90009)

[RFC2518] Goland, Y., Whitehead, E., Faizi, A., et al., "HTTP Extensions for Distributed Authoring - WebDAV", RFC 2518, February 1999, [http://www.ietf.org/rfc/rfc2518.txt](https://go.microsoft.com/fwlink/?LinkId=90363)

[RFC2818] Rescorla, E., "HTTP Over TLS", RFC 2818, May 2000, [https://www.rfc-editor.org/info/rfc2818](https://go.microsoft.com/fwlink/?LinkId=90383)

<a id="Section_1.3"></a>
## 1.3 Overview

The Web Distributed Authoring and Versioning (WebDAV) Protocol described in [[RFC2518]](https://go.microsoft.com/fwlink/?LinkId=90363) and in [[RFC4918]](https://go.microsoft.com/fwlink/?LinkId=151240) is a set of methods, headers, and content types that extend the HTTP 1.1 Protocol described in [[RFC2068]](https://go.microsoft.com/fwlink/?LinkId=90310) and in [[RFC2616]](https://go.microsoft.com/fwlink/?LinkId=90372). WebDAV allows data to be written to Internet servers and is an Internet standard for collaborative authoring.

WebDAV expands the basic support in HTTP 1.1 for content authoring by introducing additional methods and headers to provide support for resource [**properties**](#gt_f930baab-25f1-4142-bced-5effc9f62d45) and other base functions, such as resource [**locking**](#gt_locking). A resource is a network data object or service that can be identified by a URI, as described in HTTP 1.1 specifications' section 1.3. These new capabilities make the WebDAV Protocol suitable for basic remotely mountable file systems.

These protocol server extensions specify the following extensions to the base WebDAV Protocol.

- An [**HTTP**](#gt_hypertext-transfer-protocol-http) method that serves as the transport vehicle for search functionality in external processes.
- An HTTP request header that indicates whether an [**entity**](#gt_entity) is to be returned as-is, or whether any associated programmatic processing is to be performed and the result returned.
- The [MS-Author-Via Response header](#Section_2.2.2), which specifies to the client application what the preferred protocol mechanism is for authoring documents in a specific namespace. The namespace is the entire collection of items under a request URI ([RFC4918] section 5.2). For example, a client might have multiple authoring tools available to it, each possibly supported by a different network authoring protocol.
- An extension to the existing Depth HTTP request header that indicates whether the root of a resource is to be included in the results.
- Additional properties in the DAV namespace that describe additional file characteristics.
<a id="Section_1.4"></a>
## 1.4 Relationship to Other Protocols

The WebDAV Protocol: Server Extensions rely on [**WebDAV**](#gt_web-distributed-authoring-and-versioning-protocol-webdav) which, in turn, relies on HTTP 1.1 described in [[RFC2616]](https://go.microsoft.com/fwlink/?LinkId=90372) and in [[RFC2068]](https://go.microsoft.com/fwlink/?LinkId=90310). These extensions can use [**HTTPS**](#gt_hypertext-transfer-protocol-secure-https) over [**Transport Layer Security (TLS)**](#gt_transport-layer-security-tls) for data protection services, as described in [[RFC2818]](https://go.microsoft.com/fwlink/?LinkId=90383).

<a id="Section_1.5"></a>
## 1.5 Prerequisites/Preconditions

These protocol server extensions require a [**WebDAV server**](#gt_webdav-server), as defined in [[RFC2291]](https://go.microsoft.com/fwlink/?LinkId=93031), support the WebDAV OPTIONS command.

These protocol server extensions also require that [**WebDAV clients**](#gt_webdav-client) have [**URLs**](#gt_uniform-resource-locator-url) that point to WebDAV servers. The client has to obtain the URLs through some out-of-band mechanism.

<a id="Section_1.6"></a>
## 1.6 Applicability Statement

WebDAV Protocol: Server Extensions applies in scenarios that require efficient file operations. Note that only those extensions specific to enabling efficient file system clients are specified. These extensions do not add any functionality. They instead help reduce the network traffic and increase the performance of clients that use the [**WebDAV**](#gt_web-distributed-authoring-and-versioning-protocol-webdav) Protocol.

<a id="Section_1.7"></a>
## 1.7 Versioning and Capability Negotiation

Supported Transports: WebDAV Protocol: Server Extensions use [**HTTP**](#gt_hypertext-transfer-protocol-http) as the only transport.

Versioning: No new versioning mechanisms have been introduced beyond those that already exist in [**WebDAV**](#gt_web-distributed-authoring-and-versioning-protocol-webdav) and HTTP.

Capability Negotiation: Negotiation of WebDAV and HTTP capabilities is via the OPTIONS method. These server extensions extends the OPTIONS method that uses an HTTP response header to indicate which authoring tools are to be used. For more information about authoring, see section [2.2.2](#Section_2.2.2).

<a id="Section_1.8"></a>
## 1.8 Vendor-Extensible Fields

These protocol server extensions can be extended by adding new tokens to the [MS-Author-Via](../MS-Author-Via/MS-Author-Via.md) field value, section 2.2.2.

These protocol server extensions use [**HTTP**](#gt_hypertext-transfer-protocol-http) status codes [[RFC2068]](https://go.microsoft.com/fwlink/?LinkId=90310) section 10 and [[RFC4918]](https://go.microsoft.com/fwlink/?LinkId=151240) section 11.

<a id="Section_1.9"></a>
## 1.9 Standards Assignments

No standards body has approved or governs these server extensions or its header names, values, methods, and deviations. This specification conforms to the form and behavior of other custom [**HTTP**](#gt_hypertext-transfer-protocol-http) headers.

<a id="Section_2"></a>
# 2 Messages

The following section describes transport requirements and the syntax of the WebDAV Protocol: Server Extensions.

<a id="Section_2.1"></a>
## 2.1 Transport

Messages are transported using [**HTTP**](#gt_hypertext-transfer-protocol-http) as specified in [[RFC4918]](https://go.microsoft.com/fwlink/?LinkId=151240) and [[RFC2068]](https://go.microsoft.com/fwlink/?LinkId=90310).

This protocol can be used with [**Secure Sockets Layer (SSL)**](#gt_secure-sockets-layer-ssl) or [**Transport Layer Security (TLS)**](#gt_transport-layer-security-tls), as specified in [[RFC2246]](https://go.microsoft.com/fwlink/?LinkId=90324).

Port 80 is the standard port assignment for HTTP, and port 443 is the standard port assignment for HTTP over SSL or TLS; however, individual implementations can support other ports.

<a id="Section_2.2"></a>
## 2.2 Message Syntax

The extension headers in this protocol conform to the form and behavior of other custom [**HTTP**](#gt_hypertext-transfer-protocol-http) headers, as specified in [[RFC2068]](https://go.microsoft.com/fwlink/?LinkId=90310) section 4.2, and are consistent with the [**WebDAV**](#gt_web-distributed-authoring-and-versioning-protocol-webdav) verbs and headers as defined in [[RFC4918]](https://go.microsoft.com/fwlink/?LinkId=151240) sections 9 and 10.

This section specifies the following header extensions:

- The [Translate request header (section 2.2.1)](#Section_501879f938754d7aab883cecab440034) allows the [**WebDAV client**](#gt_webdav-client) to request the source of an [**entity**](#gt_entity).
- The header field [MS-Author-Via](../MS-Author-Via/MS-Author-Via.md) is returned as a response-header field to a client that has issued an **OPTIONS** command to the server. The syntax of the **OPTIONS** command is specified in [[RFC2616]](https://go.microsoft.com/fwlink/?LinkId=90372) section 9.2. The syntax of the MS-Author-Via header is specified using the [**Augmented Backus-Naur Form (ABNF)**](#gt_augmented-backus-naur-form-abnf), as defined in [RFC2616] section 2.1.
- The "[noroot (section 2.2.3)](#Section_6f06d666b52e43caa0db9a7885f6df7e)" extension to the Depth request header extends the functionality that is specified in [RFC4918] section 10.2, allowing a WebDAV client to request the children of a requested entity, but not to include the requested entity itself.
This section specifies the following method:

- The [SEARCH method (section 2.2.4)](#Section_1c98c3f2d12f4ae197a988b643314898) is used to transport search-related commands to external search providers.
This section specifies the following deviations from [RFC4918] in the [**WebDAV server**](#gt_webdav-server) implementation:

- WebDAV [**property**](#gt_property) retrieval, as specified in [RFC4918] section 9.1, can include additional "live" property settings, as specified in section [2.2.5.1](#Section_2.2.5.1).
- WebDAV [**locks**](#gt_db2534c4-5111-4094-a01a-6df7e8eee1ad), as specified in [RFC4918] sections 6 and 7, might not be supported on WebDAV [**collections**](#gt_collection), as specified in section [2.2.5.2](#Section_2.2.5.2) and in [RFC4918] section 7.4.
- The WebDAV property setting, as specified in [RFC4918] section 9.2, can include multiple un-nested property settings, as specified in section [2.2.5.3](#Section_2.2.5.3).
<a id="Section_2.2.1"></a>
### 2.2.1 Translate Request Header

Many resources obtained from a [**WebDAV server**](#gt_webdav-server) are returned exactly as-is. However, some resources are programmatically interpreted by the [**web server**](#gt_web-server) and the result of that interpretation is returned instead of the source representation. For instance, a request to retrieve an Active Server Page (ASP) (as described in [[MSASP]](https://go.microsoft.com/fwlink/?LinkId=89942)) from the web server would return the processed HTML file rather than the actual source of the ASP page. A resource is an entity that can be identified by a URI. A resource is used as specified in [[RFC2616]](https://go.microsoft.com/fwlink/?LinkId=90372) section 1.3.

In order for a [**WebDAV client**](#gt_webdav-client) to indicate the required representation, WebDAV Protocol: Server Extensions introduces a new Translate request header. This header requests that the web server perform "translation" (programmatic interpretation) of the file.

This new request header is defined as follows, using the ABNF syntax, as specified in [[RFC2068]](https://go.microsoft.com/fwlink/?LinkId=90310) section 2.1.

Translate-header = "Translate" ":" Translate-value

Translate-value = "t" / "f" / "F"

If the Translate value is "t", the web server is to process the content before returning it to the WebDAV client; if "f" | "F", the web server is to return the unprocessed (or source) content to the WebDAV client. The values "f" and "F" are synonymous. All other values SHOULD be ignored by the web server. For more details about processing of this request header, see section [3.1.5](#Section_3.1.5).<1>

This request header MUST be supported on the GET verb and MAY be supported on other verbs.<2>

<a id="Section_2.2.2"></a>
### 2.2.2 MS-Author-Via Response Header

This extension MUST have the following format:

MS-Author-Via = "MS-Author-Via" ": " ("MS-FP/4.0" / "MS-FP/4.0,DAV" / "DAV" / "DAV,MS-FP/4.0" / token ",DAV")

This header field indicates to the issuer of an **HTTP OPTIONS** command what protocol mechanism is preferred for authoring documents in this particular namespace. The preference MUST be ordered so the first mechanism listed is the one most preferred by the server.

**Note** The "token" definition in the preceding grammar is specified in [[RFC2616]](https://go.microsoft.com/fwlink/?LinkId=90372) section 2.2. Its purpose in the grammar is to allow for future extensibility. The WebDAV Server Extensions protocol MAY be extended by adding new tokens to the MS-Author-Via field. Clients MUST ignore tokens in this field that they do not recognize.

The following table lists the values that are currently defined for this header.

| Value | Meaning |
| --- | --- |
| MS-FP/4.0 | The server's preferred method for authoring is the FrontPage Server Extensions. |
| MS-FP/4.0,DAV | The server's protocol preference for authoring is first the FrontPage Server Extensions (for more information, see [[MSDN-FP]](https://go.microsoft.com/fwlink/?LinkId=90009)), and then [**WebDAV**](#gt_web-distributed-authoring-and-versioning-protocol-webdav). |
| DAV | The server's preferred method for authoring is WebDAV. |
| DAV,MS-FP/4.0 | The server's protocol preference for authoring is first WebDAV, and then the FrontPage Server Extensions (for more information, see [MSDN-FP]). |
| Token,DAV | The server's protocol preference for authoring is an extensible token, and then WebDAV. |

- MS-FP/4.0 refers to Microsoft FrontPage Server protocol version 4.0 enabled on the [**web server**](#gt_web-server). Some applications look for this string and use that protocol to communicate with this web server.
- DAV is used to indicate that WebDAV is enabled on the [**WebDAV server**](#gt_webdav-server), and a [**WebDAV client**](#gt_webdav-client) MAY use WebDAV commands to communicate with this WebDAV server.
<a id="Section_2.2.3"></a>
### 2.2.3 Depth "noroot" Request Header Extension

This header extension is defined as follows, using the ABNF syntax defined in [[RFC4234]](https://go.microsoft.com/fwlink/?LinkId=90462) section 2.1:

Depth = "Depth" ": " ("0" / "1" / "infinity" / "1,noroot" / "infinity,noroot")

The following values are associated with the Depth header.

| Value | Meaning |
| --- | --- |
| 0 | The command applies only to the specified resource. |
| 1 | The command applies to the specified resource and the next level of resources that it contains. |
| infinity | The command applies to the specified resource and all the resources that it contains. |
| 1,noroot | The command applies to the next level of resources in the container but not to the container itself. |
| infinity,noroot | The command applies to all the resources in the container but not to the container itself. |

The noroot extension is present if the "1,noroot" value is set or if the "infinity,noroot" value is set.<3>

<a id="Section_2.2.4"></a>
### 2.2.4 SEARCH Method

This method extension allows a [**WebDAV client**](#gt_webdav-client) to request search results from an external search provider. A [**WebDAV server**](#gt_webdav-server) SHOULD advertise support for the SEARCH method in the response to an OPTIONS request. The SEARCH method is simply a delivery mechanism for passing queries to external search providers.<4>

The following example shows the syntax for the SEARCH method, which conforms to the [**HTTP**](#gt_hypertext-transfer-protocol-http) syntax as defined in [[RFC2068]](https://go.microsoft.com/fwlink/?LinkId=90310).

SEARCH /[resource] HTTP/1.1

Host: www.example.com

Content-type: text/xml; charset="utf-8"

Content-Length: nnn

<?xml version="1.0" encoding="utf-8" ?>

<D:searchrequest xmlns:D = "DAV:">

<D:sql>

[implementation-specific content for a search provider]

</D:sql>

</D:searchrequest>

<a id="Section_2.2.5"></a>
### 2.2.5 Deviations from RFC4918

<a id="Section_2.2.5.1"></a>
#### 2.2.5.1 Additional "Live" Properties

[[RFC4918]](https://go.microsoft.com/fwlink/?LinkId=151240) sections 4 and 15 define the "live" [**properties**](#gt_f930baab-25f1-4142-bced-5effc9f62d45) that a [**WebDAV server**](#gt_webdav-server) SHOULD implement.<5>

<a id="Section_2.2.5.2"></a>
#### 2.2.5.2 Collections and Locking

[[RFC4918]](https://go.microsoft.com/fwlink/?LinkId=151240) sections 7 and 9 define how [**WebDAV servers**](#gt_webdav-server) SHOULD implement [**locking**](#gt_locking) for [**collections**](#gt_collection).<6>

<a id="Section_2.2.5.3"></a>
#### 2.2.5.3 Multiple Property Elements

[[RFC4918]](https://go.microsoft.com/fwlink/?LinkId=151240) section 9.2 defines the message syntax for setting [**properties**](#gt_f930baab-25f1-4142-bced-5effc9f62d45) by using the PROPPATCH method. A property or group of properties for a resource MAY be enclosed within a single <d:prop></d:prop> element,<7> as shown in the following example.

PROPPATCH /[resource] HTTP/1.1

Host: www.example.com

Content-type: text/xml; charset="utf-8"

Content-Length: nnn

<?xml version="1.0" encoding="utf-8" ?>

<d:propertyupdate xmlns:d='DAV:'>

<d:set>

<d:prop>

<d:owner>Owner's Name</d:owner>

</d:prop>

</d:set>

</d:propertyupdate>

<a id="Section_3"></a>
# 3 Protocol Details

As specified in [[RFC4918]](https://go.microsoft.com/fwlink/?LinkId=151240), [**WebDAV**](#gt_web-distributed-authoring-and-versioning-protocol-webdav) operates between an initiator (a [**WebDAV client**](#gt_webdav-client)) and a responder (a [**WebDAV server**](#gt_webdav-server)). This section specifies the client and the server behaviors with respect to the WebDAV extensions.

<a id="Section_3.1"></a>
## 3.1 WebDAV Client Details

<a id="Section_3.1.1"></a>
### 3.1.1 Abstract Data Model

A [**WebDAV client**](#gt_webdav-client) SHOULD maintain a variable for each server with which it communicates that contains the value of the [MS-Author-Via response header](#Section_2.2.2).

<a id="Section_3.1.2"></a>
### 3.1.2 Timers

No new timers are required beyond those specified in [[RFC2068]](https://go.microsoft.com/fwlink/?LinkId=90310).

<a id="Section_3.1.3"></a>
### 3.1.3 Initialization

Prior to general interaction with a [**WebDAV server**](#gt_webdav-server), the [**WebDAV client**](#gt_webdav-client) SHOULD perform an OPTIONS request to determine the current authoring implementation using the [MS-Author-Via response header](#Section_2.2.2).<8>

<a id="Section_3.1.4"></a>
### 3.1.4 Higher-Layer Triggered Events

No new events are triggered beyond those specified in [[RFC2068]](https://go.microsoft.com/fwlink/?LinkId=90310).

<a id="Section_3.1.5"></a>
### 3.1.5 Processing Events and Sequencing Rules

A [**WebDAV client**](#gt_webdav-client) SHOULD send an OPTIONS request to the server and query the response headers for the presence of the [**WebDAV server's**](#gt_1e9c849f-b5d1-41a0-b964-7d10ca0e5a21) supported features. When sending an OPTIONS request, the WebDAV client SHOULD send the OPTIONS request before sending any other requests to the WebDAV server. The information returned SHOULD be used by the WebDAV client to specialize requests to this server.

<a id="Section_3.1.5.1"></a>
#### 3.1.5.1 Translate Request Header

The [**WebDAV client**](#gt_webdav-client) SHOULD add the [Translate request header](#Section_2.2.1) with an "f" or "F" flag to a request if the WebDAV client needs the source of a file without any translation; otherwise this header SHOULD be omitted.

<a id="Section_3.1.5.2"></a>
#### 3.1.5.2 MS-Author-Via Response Header

A [**WebDAV client**](#gt_webdav-client) MAY send an OPTIONS request to the server and query the response headers for the presence of the MS-Author-Via header. The WebDAV client SHOULD use the following information to determine the best method to send requests to the server:

- The WebDAV client SHOULD NOT use [**WebDAV**](#gt_web-distributed-authoring-and-versioning-protocol-webdav) commands when communicating with a server that responds to the OPTIONS command with only the MS-Author-Via: MS-FP/4.0 response header.
- The WebDAV client MAY use WebDAV commands when communicating with a server that responds to the OPTIONS command with any of the following [MS-Author-Via response header](#Section_2.2.2) values:
- MS-Author-Via: DAV
- MS-Author-Via: DAV, MS-FP/4.0
- MS-Author-Via: MS-FP/4.0, DAV
- MS-Author-Via: MS-FP
- MS-Author-Via: Token,DAV
<a id="Section_3.1.5.3"></a>
#### 3.1.5.3 Depth "noroot" Request Header Extension

The [**WebDAV client**](#gt_webdav-client) SHOULD add the [Depth request header](#Section_6f06d666b52e43caa0db9a7885f6df7e) with a value of '1,noroot' or 'infinity,noroot' to a request if the WebDAV client needs the resources that are in the container, but not in the container itself; otherwise this header SHOULD be omitted.<9> A resource is an entity that can be identified by a URI. A resource is used as specified in [[RFC2616]](https://go.microsoft.com/fwlink/?LinkId=90372) section 1.3.

<a id="Section_3.1.5.4"></a>
#### 3.1.5.4 SEARCH Method

A [**WebDAV client**](#gt_webdav-client) SHOULD send a SEARCH request to a [**WebDAV server**](#gt_webdav-server) that advertises support for the SEARCH method through the response to an OPTIONS request from the WebDAV client. If the WebDAV server does not advertise support for the SEARCH method, the WebDAV client SHOULD NOT send a SEARCH request.

<a id="Section_3.1.6"></a>
### 3.1.6 Timer Events

No new timers are required beyond those in the base protocol.

<a id="Section_3.1.7"></a>
### 3.1.7 Other Local Events

There are no new local events other than those described in the base protocol.

<a id="Section_3.2"></a>
## 3.2 WebDAV Server Details

<a id="Section_3.2.1"></a>
### 3.2.1 Abstract Data Model

No new abstract data model is needed other than that described in the base protocol.

<a id="Section_3.2.2"></a>
### 3.2.2 Timers

No new timers are required beyond those in the base protocol.

<a id="Section_3.2.3"></a>
### 3.2.3 Initialization

No initialization is required beyond that in the base protocol.

<a id="Section_3.2.4"></a>
### 3.2.4 Higher-Layer Triggered Events

No new events are triggered beyond that in the base protocol.

<a id="Section_3.2.5"></a>
### 3.2.5 Processing Events and Sequencing Rules

A [**WebDAV server**](#gt_webdav-server) can advertise support for [**WebDAV**](#gt_web-distributed-authoring-and-versioning-protocol-webdav) authoring by adding the MS-Author-Via: DAV response header to the response to the OPTIONS command. If the server does not support WebDAV authoring, the OPTIONS response SHOULD omit the MS-Author-Via: DAV response header. A WebDAV server MAY add the MS-Author-Via: DAV header to other responses.

<a id="Section_3.2.5.1"></a>
#### 3.2.5.1 Translate Request Header

The [**WebDAV server**](#gt_webdav-server) MUST respond with the actual source of the file if the translate request header exists with a flag value starting with "f" or "F". The WebDAV server SHOULD perform access checks when processing a command with a [Translate request header](#Section_2.2.1).<10>

To maintain consistency with web browsers, the default behavior if this request header is omitted is to translate the file; omission of this header SHOULD be the same as sending Translate: t.<11>

<a id="Section_3.2.5.2"></a>
#### 3.2.5.2 MS-Author-Via Response Header

The [**WebDAV server**](#gt_webdav-server) SHOULD respond with the [MS-Author-Via response header](#Section_2.2.2) when a [**WebDAV client**](#gt_webdav-client) sends an OPTIONS request.<12> The WebDAV server responds with the appropriate information when the following conditions are true:

- "MS-Author-Via: DAV" The WebDAV server responds with this header when [**WebDAV**](#gt_web-distributed-authoring-and-versioning-protocol-webdav) is enabled and the FrontPage Server Extensions protocol is not enabled.
- "MS-Author-Via: MS-FP/4.0" The [**web server**](#gt_web-server) responds with this header when the FrontPage Server Extensions protocol is enabled and WebDAV is not enabled.
- "MS-Author-Via: DAV,MS-FP/4.0" The WebDAV server responds with this header when both WebDAV and the FrontPage Server Extensions protocol are enabled, and WebDAV is preferred over the FrontPage Server Extensions protocol.
- "MS-Author-Via: MS-FP/4.0,DAV" The WebDAV server responds with this header when both the FrontPage Server Extensions protocol and WebDAV are enabled, and the FrontPage Server Extensions protocol is preferred over WebDAV.
- "MS-Author-Via: Token,DAV" The WebDAV server responds with this header when both the WebDAV and an extensible token are enabled.
<a id="Section_3.2.5.3"></a>
#### 3.2.5.3 Depth "noroot" Request Header Extension

If the [**WebDAV server**](#gt_webdav-server) supports the [Depth "noroot" request header extension](#Section_2.2.3), the WebDAV server SHOULD respond appropriately depending on the [**WebDAV**](#gt_web-distributed-authoring-and-versioning-protocol-webdav) command that the [**WebDAV client**](#gt_webdav-client) is sending.<13>

<a id="Section_3.2.5.4"></a>
#### 3.2.5.4 SEARCH Method

A [**WebDAV server**](#gt_webdav-server) advertises support for the SEARCH method through the response to an OPTIONS request from the [**WebDAV client**](#gt_webdav-client). If a WebDAV client sends a SEARCH request, the WebDAV server SHOULD send the request to the appropriate search provider on the server.<14>

<a id="Section_3.2.6"></a>
### 3.2.6 Timer Events

No new timers are required beyond those in the base protocol.

<a id="Section_3.2.7"></a>
### 3.2.7 Other Local Events

There are no new local events other than those described in the base protocol.

<a id="Section_4"></a>
# 4 Protocol Examples

This section provides examples of the protocol extensions.

<a id="Section_4.1"></a>
## 4.1 MS-Author-Via Response Header

The following example shows an OPTIONS request from a [**WebDAV client**](#gt_webdav-client) and the response from the [**WebDAV server**](#gt_webdav-server) that contains the [MS-Author-Via response header](#Section_2.2.2).

Request:

OPTIONS / HTTP/1.1

Host: localhost

Accept: */*

Response:

HTTP/1.1 200 OK

Server: Microsoft-IIS/6.0

Date: Wed, 28 Jun 2006 00:06:21 GMT

MS-Author-Via: DAV

Allow: OPTIONS, TRACE, GET, HEAD, POST, LOCK, UNLOCK, MKCOL,

PROPFIND, PROPPATCH, COPY, MOVE

Public: OPTIONS, TRACE, GET, HEAD, POST, LOCK, UNLOCK, MKCOL,

PROPFIND, PROPPATCH, COPY, MOVE

MS-Author-Via: DAV

Content-Length: 0

<a id="Section_4.2"></a>
## 4.2 Translate Request Header

The following examples show the difference between requesting an [**entity**](#gt_entity) and the source of an entity. The first example is a typical [**HTTP**](#gt_hypertext-transfer-protocol-http) GET command as issued by a browser such as Internet Explorer.

Request:

GET /Temp/world.asp HTTP/1.1

Translate: t

Host: localhost

Accept: */*

Response:

HTTP/1.1 200 OK

Server: Microsoft-IIS/5.1

Date: Wed, 28 Jun 2006 00:06:21 GMT

Content-Length: 129

Content-Type: text/html

Set-Cookie: ASPSESSIONIDCSSTSCQB=IEEJDPNAAIJECIOOBLMMGDJM; path=/

Cache-control: private

<FONT SIZE="1">Hello World</FONT>

<FONT SIZE="2">Hello World</FONT>

<FONT SIZE="3">Hello World</FONT>

An authoring application might want to retrieve the source of an entity, and it would issue the same request asking for the source of the entity as follows:

Request:

GET /Temp/world.asp HTTP/1.1

Translate: f

Host: localhost

Accept: */*

Response:

HTTP/1.1 200 OK

Server: Microsoft-IIS/5.1

Date: Wed, 28 Jun 2006 00:16:34 GMT

Content-Type: text/plain

Content-Length: 497

ETag: "22a87614489ac61:c02"

Last-Modified: Wed, 28 Jun 2006 00:16:19 GMT

Accept-Ranges: bytes

<%

'***********************************************

'* Sample ASP Code *

'* *

'***********************************************

' Declare loop variable.

Dim I

' Loop 3 times, adjusting the

' font size in each loop.

For I = 1 To 3 Step 1

' Output our HTML and text using the value

' of I as the FONT TAG's SIZE attribute.

%>

<FONT SIZE="<%=I%>">Hello World</FONT>

<%

Next ' continue looping

%>

The difference between these two requests is that the second one is requesting the source of an entity. This is a typical example of how the [Translate request header](#Section_2.2.1) is used.

<a id="Section_4.3"></a>
## 4.3 Depth "noroot" Request Header Extension

The following example shows a PROPFIND request from a [**WebDAV client**](#gt_webdav-client) and the response from the [**WebDAV server**](#gt_webdav-server) that contains the [Depth "noroot" Request Header Extension](#Section_2.2.3).

PROPFIND request with Depth: 1

PROPFIND /dav/ HTTP/1.1

Depth: 1

Content-Type: text/xml

Host: localhost

Accept: */*

Content-Length:104

<?xml version="1.0"?>

<D:propfind xmlns:D="DAV:">

<D:prop>

<D:displayname/>

</D:prop>

</D:propfind>

Response:

HTTP/1.1 207 Multi-Status

Date: Fri, 17 Aug 2007 20:24:20 GMT

Server: Microsoft-IIS/6.0

X-Powered-By: ASP.NET

Content-Type: text/xml

Transfer-Encoding: chunked

<?xml version="1.0"?>

<a:multistatus xmlns:b="urn:uuid:c2f41010-65b3-11d1-a29f-00aa00c14882/"

xmlns:c="xml:" xmlns:a="DAV:">

<a:response>

<a:href>http://localhost/dav/</a:href>

<a:propstat>

<a:status>HTTP/1.1 200 OK</a:status>

<a:prop>

<a:displayname>dav</a:displayname>

</a:prop>

</a:propstat>

</a:response>

<a:response>

<a:href>http://localhost/dav/pagerror.gif</a:href>

<a:propstat>

<a:status>HTTP/1.1 200 OK</a:status>

<a:prop>

<a:displayname>pagerror.gif</a:displayname>

</a:prop>

</a:propstat>

</a:response>

<a:response>

<a:href>http://localhost/dav/script.asp</a:href>

<a:propstat>

<a:status>HTTP/1.1 200 OK</a:status>

<a:prop>

<a:displayname>script.asp</a:displayname>

</a:prop>

</a:propstat>

</a:response>

<a:response>

<a:href>http://localhost/dav/textfile.txt</a:href>

<a:propstat>

<a:status>HTTP/1.1 200 OK</a:status>

<a:prop>

<a:displayname>textfile.txt</a:displayname>

</a:prop>

</a:propstat>

</a:response>

</a:multistatus>

PROPFIND request with Depth: 1,noroot

PROPFIND /dav/ HTTP/1.1

Depth: 1,noroot

Content-Type: text/xml

Host: localhost

Accept: */*\r\n

Content-Length:104

<?xml version="1.0"?>

<D:propfind xmlns:D="DAV:">

<D:prop>

<D:displayname/>

</D:prop>

</D:propfind>

Response:

HTTP/1.1 207 Multi-Status

Date: Fri, 17 Aug 2007 20:28:15 GMT

Server: Microsoft-IIS/6.0

X-Powered-By: ASP.NET

Content-Type: text/xml

Transfer-Encoding: chunked

<?xml version="1.0"?>

<a:multistatus xmlns:b="urn:uuid:c2f41010-65b3-11d1-a29f-00aa00c14882/"

xmlns:c="xml:" xmlns:a="DAV:">

<a:response>

<a:href>http://localhost/dav/pagerror.gif</a:href>

<a:propstat>

<a:status>HTTP/1.1 200 OK</a:status>

<a:prop>

<a:displayname>pagerror.gif</a:displayname>

</a:prop>

</a:propstat>

</a:response>

<a:response>

<a:href>http://localhost/dav/script.asp</a:href>

<a:propstat>

<a:status>HTTP/1.1 200 OK</a:status>

<a:prop>

<a:displayname>script.asp</a:displayname>

</a:prop>

</a:propstat>

</a:response>

<a:response>

<a:href>http://localhost/dav/textfile.txt</a:href>

<a:propstat>

<a:status>HTTP/1.1 200 OK</a:status>

<a:prop>

<a:displayname>textfile.txt</a:displayname>

</a:prop>

</a:propstat>

</a:response>

</a:multistatus>

<a id="Section_5"></a>
# 5 Security

<a id="Section_5.1"></a>
## 5.1 Security Considerations for Implementers

[**WebDAV servers**](#gt_webdav-server) that support the [Translate request header](#Section_2.2.1) can perform access checks before returning the source of the file, as specified in section [3.2.5.1](#Section_3.2.5.1), in order to protect any source content (for example, database passwords).<15>

<a id="Section_5.2"></a>
## 5.2 Index of Security Parameters

No new security parameters are required beyond those in the base protocol.

<a id="Section_6"></a>
# 6 Appendix A: Product Behavior

The information in this specification is applicable to the following Microsoft products or supplemental software. References to product versions include updates to those products.

The terms "earlier" and "later", when used with a product version, refer to either all preceding versions or all subsequent versions, respectively. The term "through" refers to the inclusive range of versions. Applicable Microsoft products are listed chronologically in this section.

**Windows Client**

- Windows 2000 Professional operating system
- Windows XP operating system
- Windows Vista operating system
- Windows 7 operating system
- Windows 8 operating system
- Windows 8.1
- Windows 10 operating system
- Windows 11 operating system
**Windows Server**

- Windows 2000 Server operating system
- Windows Server 2003 operating system
- Windows Server 2003 R2 operating system
- Windows Server 2008 operating system
- Windows Server 2008 R2 operating system
- Microsoft SharePoint Foundation 2010
- Windows Server 2012 operating system
- Windows Server 2012 R2
- Windows Server 2016 operating system
- Windows Server operating system
- Windows Server 2019 operating system
- Windows Server 2022 operating system
- Windows Server 2025 operating system
Exceptions, if any, are noted in this section. If an update version, service pack or Knowledge Base (KB) number appears with a product name, the behavior changed in that update. The new behavior also applies to subsequent updates unless otherwise specified. If a product edition appears with the product version, behavior is different in that product edition.

Unless otherwise specified, any statement of optional behavior in this specification that is prescribed using the terms "SHOULD" or "SHOULD NOT" implies product behavior in accordance with the SHOULD or SHOULD NOT prescription. Unless otherwise specified, the term "MAY" implies that the product does not follow the prescription.

<1> Section 2.2.1: The [**web server**](#gt_web-server) in IIS for Windows 2000 operating system, Windows XP, and Windows based servers Windows Server 2003 and later can accept the [Translate request header](#Section_2.2.1). This implementation accepts "f" and "F" as FALSE. Everything else, including omission of the header, is accepted as TRUE.

<2> Section 2.2.1: The web server in IIS for Windows 2000, Windows XP, and Windows based servers Windows Server 2003 and later can accept this header on all commands, while only honoring this header on GET commands.

<3> Section 2.2.3: This request header can be supported by the [**WebDAV server**](#gt_webdav-server) in IIS for Windows 2000, Windows XP, and Windows Server 2003.

<4> Section 2.2.4: This method can be supported by the WebDAV server in IIS for Windows 2000, Windows XP, and Windows Server 2003, and is used to pass queries to Windows Index Server.

<5> Section 2.2.5.1: The WebDAV server in IIS for Windows 2000, Windows XP, and Windows based servers Windows Server 2003 and later return the additional iscollection and ishidden [**properties**](#gt_f930baab-25f1-4142-bced-5effc9f62d45) as "live" properties.

<6> Section 2.2.5.2: The WebDAV server in IIS for Windows 2000, Windows XP, and Windows Server 2003 does not support [**locking**](#gt_locking) [**collections**](#gt_collection).

<7> Section 2.2.5.3: The WebDAV server in IIS for Windows 2000, Windows XP, and Windows based servers Windows Server 2003 and later allows the use of multiple <d:prop></d:prop> elements to encapsulate multiple properties.

<8> Section 3.1.3: The WebDAV server in Windows 2000, Windows XP, and Windows based servers Windows Server 2003 and later can return the MS-Author-Via: DAV response header if [**WebDAV**](#gt_web-distributed-authoring-and-versioning-protocol-webdav) is enabled on the server.

<9> Section 3.1.5.3: The Depth header field is used with several WebDAV commands. However, Windows implementations only support the "noroot" extension on two verbs: **DELETE** and **PROPFIND**. "1,noroot" is supported for **PROPFIND** and "infinity,noroot" is supported on **DELETE**. Attempting to specify "noroot" on other verbs that support the [Depth header](#Section_6f06d666b52e43caa0db9a7885f6df7e) field will result in a "400 Bad Request" error being returned.

<10> Section 3.2.5.1: The WebDAV server in IIS for Windows 2000, Windows XP, and Windows Server 2003 requires WRITE access to the file to return the source of the file.

<11> Section 3.2.5.1: The WebDAV server in IIS for Windows 2000, Windows XP, and Windows based servers Windows Server 2003 and later assumes the header as Translate: t by default.

<12> Section 3.2.5.2: The WebDAV server in IIS for Windows 2000, Windows XP, and Windows based servers Windows Server 2003 and later can return the [MS-Author-Via response header](#Section_2.2.2) in response to an OPTIONS request.

<13> Section 3.2.5.3: The WebDAV server in IIS for Windows 2000, Windows XP, and Windows Server 2003 supports the Depth "noroot" request header extension.

<14> Section 3.2.5.4: The WebDAV server in IIS for Windows 2000, Windows XP, and Windows Server 2003 supports the SEARCH method.

<15> Section 5.1: For a Translate header value of FALSE, the WebDAV server in IIS for Windows 2000, Windows XP, and Windows Server 2003 requires WRITE access to return the source of the file.

<a id="Section_7"></a>
# 7 Change Tracking

No table of changes is available. The document is either new or has had no changes since its last release.


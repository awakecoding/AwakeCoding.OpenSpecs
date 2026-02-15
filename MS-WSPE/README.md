# [MS-WSPE]: WebSocket Protocol Extensions

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
</details>

<details>
<summary>3 Protocol Details</summary>

- [3 Protocol Details](#Section_3)
  - [3.1 Client Details](#Section_3.1)
    - [3.1.1 Abstract Data Model](#Section_3.1.1)
    - [3.1.2 Timers](#Section_3.1.2)
    - [3.1.3 Initialization](#Section_3.1.3)
    - [3.1.4 Higher-Layer Triggered Events](#Section_3.1.4)
    - [3.1.5 Message Processing Events and Sequencing Rules](#Section_3.1.5)
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

The WebSocket Protocol is an Internet Engineering Task Force (IETF) standard protocol designed to allow asynchronous bidirectional communication between hosts over a network that might only provide connectivity via web proxies.

This document specifies extensions to the WebSocket Protocol.

Sections 1.5, 1.8, 1.9, 2, and 3 of this specification are normative. All other sections and examples in this specification are informative.

<a id="Section_1.1"></a>
## 1.1 Glossary

This document uses the following terms:

<a id="gt_endpoint"></a>
**endpoint**: A resource that can be addressed by an endpoint reference.

<a id="gt_masking"></a>
**masking**: The process of XOR'ing a specified mask to obfuscate the content of a data message.

<a id="gt_sandbox"></a>
**sandbox**: A security mechanism used to constrain the actions that a program can take. A sandbox restricts a program to a defined set of privileges and actions that reduce the likelihood that the program might damage the system hosting the program.

<a id="gt_sandboxed"></a>
**sandboxed**: Deployed into a sandbox.

**MAY, SHOULD, MUST, SHOULD NOT, MUST NOT:** These terms (in all caps) are used as defined in [[RFC2119]](https://go.microsoft.com/fwlink/?LinkId=90317). All statements of optional behavior use either MAY, SHOULD, or SHOULD NOT.

<a id="Section_1.2"></a>
## 1.2 References

Links to a document in the Microsoft Open Specifications library point to the correct section in the most recently published version of the referenced document. However, because individual documents in the library are not updated at the same time, the section numbers in the documents may not match. You can confirm the correct section numbering by checking the [Errata](https://go.microsoft.com/fwlink/?linkid=850906).

<a id="Section_1.2.1"></a>
### 1.2.1 Normative References

We conduct frequent surveys of the normative references to assure their continued availability. If you have any issue with finding a normative reference, please contact [dochelp@microsoft.com](mailto:dochelp@microsoft.com). We will assist you in finding the relevant information.

[RFC2119] Bradner, S., "Key words for use in RFCs to Indicate Requirement Levels", BCP 14, RFC 2119, March 1997, [https://www.rfc-editor.org/info/rfc2119](https://go.microsoft.com/fwlink/?LinkId=90317)

[RFC2616] Fielding, R., Gettys, J., Mogul, J., et al., "Hypertext Transfer Protocol -- HTTP/1.1", RFC 2616, June 1999, [https://www.rfc-editor.org/info/rfc2616](https://go.microsoft.com/fwlink/?LinkId=90372)

[RFC6455] Fette, I., and Melnikov, A., "The WebSocket Protocol", RFC 6455, December 2011, [http://www.ietf.org/rfc/rfc6455.txt](https://go.microsoft.com/fwlink/?LinkId=252388)

<a id="Section_1.2.2"></a>
### 1.2.2 Informative References

None.

<a id="Section_1.3"></a>
## 1.3 Overview

The WebSocket Protocol [[RFC6455]](https://go.microsoft.com/fwlink/?LinkId=252388) creates an asynchronous, bidirectional communication channel that works across existing network intermediaries such as web proxies and firewalls. A client uses HTTP [[RFC2616]](https://go.microsoft.com/fwlink/?LinkId=90372) to communicate with a server and then both sides switch to using the WebSocket Protocol over the underlying protocol on which HTTP is layered, such as TCP or SSL over TCP. The goal is to first use HTTP to traverse network intermediaries and then use the established end-to-end underlying TCP/SSL channel for bidirectional application communication.

The WebSocket Protocol requires that all frames are [**masked**](#gt_885d258e-5b4c-405e-bdc8-7383ce02195e) by a random security key to avoid possible confusion with the HTTP protocol by intermediaries. Some intermediaries will continue to parse HTTP requests even if the beginning of the byte stream does not match the HTTP grammar. In the WebSocket Protocol, such intermediaries skip the frame header and interpret the application payload as an HTTP request. Such a deficiency allows an attacker to inject bad data as discussed in [RFC6455] section 10.3 by sending specially crafted HTTP requests as data through the WebSocket Protocol. Masking prevents such a deficiency.

However, masking can have a significant performance impact. If the WebSocket Protocol is used in a controlled environment, such as within an enterprise network where there are no intermediaries or where intermediaries recognize the WebSocket Protocol, masking might not be needed. Turning off masking in such cases thus has a positive impact on the performance.

If the WebSocket Protocol is used by a [**sandboxed**](#gt_sandboxed) application, such as running in a browser where the [**sandbox**](#gt_sandbox) only allows the application to communicate over HTTP, the cache-poisoning attack can have serious consequences if a malicious application can bypass the restrictions imposed by the sandbox. However, non-sandboxed applications that can use TCP directly can already perform the same actions, and therefore, disabling masking does not introduce additional risk.

<a id="Section_1.4"></a>
## 1.4 Relationship to Other Protocols

The WebSocket Protocol Extensions make no modifications to the protocol relationships defined in [[RFC6455]](https://go.microsoft.com/fwlink/?LinkId=252388) sections 1.7 and 1.9.

<a id="Section_1.5"></a>
## 1.5 Prerequisites/Preconditions

It is assumed by the implementation that the higher-layer protocol or application recognizes whether masking is required prior to using this extension.

<a id="Section_1.6"></a>
## 1.6 Applicability Statement

These extensions are not applicable to sandboxed environments that only allow web access, such as applications running in a browser.

These extensions are not applicable to the wide-area Internet.

These extensions are only applicable to scenarios where an application is permitted to use TCP and where the intermediaries are well known (such as within a corporate intranet), and security is provided by another layer, such as SSL.

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

<a id="Section_2.1"></a>
## 2.1 Transport

Message transport for the WebSocket Protocol Extensions is as defined in [[RFC6455]](https://go.microsoft.com/fwlink/?LinkId=252388).

<a id="Section_2.2"></a>
## 2.2 Message Syntax

Message syntax for the WebSocket Protocol Extensions is as defined in [[RFC6455]](https://go.microsoft.com/fwlink/?LinkId=252388) section 5.

<a id="Section_3"></a>
# 3 Protocol Details

<a id="Section_3.1"></a>
## 3.1 Client Details

<a id="Section_3.1.1"></a>
### 3.1.1 Abstract Data Model

This section describes a conceptual model of possible data organization that an implementation maintains to participate in this protocol. The described organization is provided to facilitate the explanation of how the protocol behaves. This document does not mandate that implementations adhere to this model as long as their external behavior is consistent with that described in this document.

**set-mask-to-zero:** When set to false, this flag indicates that the [**mask**](#gt_885d258e-5b4c-405e-bdc8-7383ce02195e) is to be derived from a strong source of entropy as defined in [[RFC6455]](https://go.microsoft.com/fwlink/?LinkId=252388) section 5.3. When set to true, the mask is to be set to zero.

<a id="Section_3.1.2"></a>
### 3.1.2 Timers

None.

<a id="Section_3.1.3"></a>
### 3.1.3 Initialization

When a WebSocket connection is initialized, the higher-layer protocol or application specifies the required value for the **set-mask-to-zero** ADM element and the client MUST set **set-mask-to-zero** to the specified value. After the connection is initialized, the value of **set-mask-to-zero** never changes.

<a id="Section_3.1.4"></a>
### 3.1.4 Higher-Layer Triggered Events

To send a frame, data MUST be framed according to the rules specified in [[RFC6455]](https://go.microsoft.com/fwlink/?LinkId=252388) section 5. If the value of the **set-mask-to-zero** ADM element is false, the behavior is unchanged from that specified in [RFC6455] section 5.3. If the value of **set-mask-to-zero** is true, then the **Masking-key** field (as defined in [RFC6455] section 4.2) MUST be set to zero instead of being derived from a strong source of entropy.

<a id="Section_3.1.5"></a>
### 3.1.5 Message Processing Events and Sequencing Rules

Message processing events and sequencing rules for the WebSocket Protocol Extensions are as defined in [[RFC6455]](https://go.microsoft.com/fwlink/?LinkId=252388).

<a id="Section_3.1.6"></a>
### 3.1.6 Timer Events

None.

<a id="Section_3.1.7"></a>
### 3.1.7 Other Local Events

None.

<a id="Section_3.2"></a>
## 3.2 Server Details

<a id="Section_3.2.1"></a>
### 3.2.1 Abstract Data Model

This section describes a conceptual model of possible data organization that an implementation maintains to participate in this protocol. The described organization is provided to facilitate the explanation of how the protocol behaves. This document does not mandate that implementations adhere to this model as long as their external behavior is consistent with that described in this document.

**accept-unmasked-frame:** When set to false, this flag indicates that unmasked frames are to cause the connection to be aborted. When set to true, the server is to accept frames regardless of whether they are masked.

<a id="Section_3.2.2"></a>
### 3.2.2 Timers

None.

<a id="Section_3.2.3"></a>
### 3.2.3 Initialization

When a WebSocket connection is initialized, the higher-layer protocol or application specifies the required value for the **accept-unmasked-frame** ADM element and the server MUST set **accept-unmasked-frame** to the specified value. After the connection is initialized, the value of **accept-unmasked-frame** never changes.

<a id="Section_3.2.4"></a>
### 3.2.4 Higher-Layer Triggered Events

Higher-layer triggered events for the WebSocket Protocol Extensions are as defined in [[RFC6455]](https://go.microsoft.com/fwlink/?LinkId=252388).

<a id="Section_3.2.5"></a>
### 3.2.5 Message Processing Events and Sequencing Rules

The server MUST parse the received frame and extract the value of the **frame-masked** field ([[RFC6455]](https://go.microsoft.com/fwlink/?LinkId=252388) sections 5.2) as specified in [RFC6455] section 45.3. If the value of the **accept-unmasked-frame** ADM element is false, then the behavior is unchanged from that specified in [RFC6455]. If the value of **accept-unmasked-frame** is true, the frame MUST be accepted by the server even if the **Mask bit** ([RFC6455] section 4.2) is set to zero.

<a id="Section_3.2.6"></a>
### 3.2.6 Timer Events

None.

<a id="Section_3.2.7"></a>
### 3.2.7 Other Local Events

None.

<a id="Section_4"></a>
# 4 Protocol Examples

In the following example, an application is running in a controlled environment and performance is a crucial factor.

Because the application is running in a safe environment, the administrator disables [**masking**](#gt_masking) as follows to improve performance:

- The administrator changes the configuration of the client and server applications to disable masking.
- When the server application initializes the WebSocket Protocol [[RFC6455]](https://go.microsoft.com/fwlink/?LinkId=252388) for a given [**endpoint**](#gt_endpoint), the WebSocket Protocol server is instructed by the application to disable masking for the endpoint. The server sets the value of the **accept-unmasked-frame** ADM element to TRUE.
- When the client application initializes the WebSocket Protocol for a given connection, the WebSocket Protocol client is instructed by the application to disable masking on the connection. The client sets the value of the **set-mask-to-zero** ADM element to TRUE.
- When the client application sends data, the WebSocket Protocol client uses a masking-key of zero. Doing an XOR with zeroes results in the data being left unmodified.
- When the WebSocket server receives such data, the message is delivered to the server application although the data was not masked.
<a id="Section_5"></a>
# 5 Security

<a id="Section_5.1"></a>
## 5.1 Security Considerations for Implementers

It is not appropriate to expose these extensions in sandboxed environments that only allow web access, such as applications running in a browser, since doing so could allow such applications to bypass the security restrictions of the sandbox.

It is appropriate to allow use of this extension only by higher-layer protocols and applications that are already permitted to use TCP.

<a id="Section_5.2"></a>
## 5.2 Index of Security Parameters

| Security parameter | Section |
| --- | --- |
| **set-mask-to-zero** | [3.1.1](#Section_3.1.1) |
| **accept-unmasked-frame** | [3.2.1](#Section_3.2.1) |

<a id="Section_6"></a>
# 6 Appendix A: Product Behavior

The information in this specification is applicable to the following Microsoft products or supplemental software. References to product versions include updates to those products.

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


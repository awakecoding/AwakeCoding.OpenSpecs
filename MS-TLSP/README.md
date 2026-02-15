# [MS-TLSP]: Transport Layer Security (TLS) Profile

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
    - [2.2.1 Client and Server Hello Messages](#Section_2.2.1)
    - [2.2.2 Alert Messages](#Section_2.2.2)
    - [2.2.3 Extended Hello Messages](#Section_2.2.3)
    - [2.2.4 Certificate Messages](#Section_2.2.4)
  - [2.3 Directory Service Schema Elements](#Section_2.3)
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
      - [3.1.5.1 GSS_WrapEx() Call](#Section_3.1.5.1)
      - [3.1.5.2 GSS_UnwrapEx() Call](#Section_3.1.5.2)
    - [3.1.6 Timer Events](#Section_3.1.6)
    - [3.1.7 Other Local Events](#Section_3.1.7)
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

The Transport Layer Security (TLS) Profile specifies a restricted subset of TLS and related standards. Support for [**TLS**](#gt_transport-layer-security-tls)/[**SSL**](#gt_secure-sockets-layer-ssl) protocols is specified in [[RFC8446]](https://go.microsoft.com/fwlink/?linkid=2147431), [[RFC5246]](https://go.microsoft.com/fwlink/?LinkId=129803), [[RFC4346]](https://go.microsoft.com/fwlink/?LinkId=90474), [[RFC2246]](https://go.microsoft.com/fwlink/?LinkId=90324), and [[SSL3]](https://go.microsoft.com/fwlink/?LinkId=90534). Supported TLS extensions are specified in [[RFC8472]](https://go.microsoft.com/fwlink/?linkid=2154371), [[RFC5077]](https://go.microsoft.com/fwlink/?LinkId=285815), [[RFC7301]](https://go.microsoft.com/fwlink/?LinkId=513846), [[RFC4366]](https://go.microsoft.com/fwlink/?LinkId=129810), [[RFC4681]](https://go.microsoft.com/fwlink/?LinkId=129808), [[RFC3546]](https://go.microsoft.com/fwlink/?LinkId=90431), and [[RFC7627]](https://go.microsoft.com/fwlink/?LinkId=730726). Additional supported cryptographic curves are specified in [[RFC7748]](https://go.microsoft.com/fwlink/?linkid=2154766). [**Cipher**](#gt_cipher) suites are specified in [[RFC5487]](https://go.microsoft.com/fwlink/?LinkId=734930), [[RFC5289]](https://go.microsoft.com/fwlink/?LinkId=129797), [[RFC4492]](https://go.microsoft.com/fwlink/?LinkId=129809), and [[RFC3268]](https://go.microsoft.com/fwlink/?LinkId=129796).<1>

Sections 1.5, 1.8, 1.9, 2, and 3 of this specification are normative. All other sections and examples in this specification are informative.

<a id="Section_1.1"></a>
## 1.1 Glossary

This document uses the following terms:

<a id="gt_ascii"></a>
**ASCII**: The American Standard Code for Information Interchange (ASCII) is an 8-bit character-encoding scheme based on the English alphabet. ASCII codes represent text in computers, communications equipment, and other devices that work with text. ASCII refers to a single 8-bit ASCII character or an array of 8-bit ASCII characters with the high bit of each character set to zero.

<a id="gt_cipher"></a>
**cipher**: A cryptographic algorithm used to encrypt and decrypt files and messages.

<a id="gt_secure-sockets-layer-ssl"></a>
**Secure Sockets Layer (SSL)**: A security protocol that supports confidentiality and integrity of messages in client and server applications that communicate over open networks. SSL supports server and, optionally, client authentication using X.509 certificates [[X509]](https://go.microsoft.com/fwlink/?LinkId=90590) and [[RFC5280]](https://go.microsoft.com/fwlink/?LinkId=131034). SSL is superseded by [**Transport Layer Security (TLS)**](#gt_transport-layer-security-tls). TLS version 1.0 is based on SSL version 3.0 [[SSL3]](https://go.microsoft.com/fwlink/?LinkId=90534).

<a id="gt_transport-layer-security-tls"></a>
**Transport Layer Security (TLS)**: A security protocol that supports confidentiality and integrity of messages in client and server applications communicating over open networks. TLS supports server and, optionally, client authentication by using X.509 certificates (as specified in [X509]). TLS is standardized in the IETF TLS working group.

<a id="gt_utf-8"></a>
**UTF-8**: A byte-oriented standard for encoding Unicode characters, defined in the Unicode standard. Unless specified otherwise, this term refers to the UTF-8 encoding form specified in [[UNICODE5.0.0/2007]](https://go.microsoft.com/fwlink/?LinkId=154659) section 3.9.

**MAY, SHOULD, MUST, SHOULD NOT, MUST NOT:** These terms (in all caps) are used as defined in [[RFC2119]](https://go.microsoft.com/fwlink/?LinkId=90317). All statements of optional behavior use either MAY, SHOULD, or SHOULD NOT.

<a id="Section_1.2"></a>
## 1.2 References

Links to a document in the Microsoft Open Specifications library point to the correct section in the most recently published version of the referenced document. However, because individual documents in the library are not updated at the same time, the section numbers in the documents may not match. You can confirm the correct section numbering by checking the [Errata](https://go.microsoft.com/fwlink/?linkid=850906).

<a id="Section_1.2.1"></a>
### 1.2.1 Normative References

We conduct frequent surveys of the normative references to assure their continued availability. If you have any issue with finding a normative reference, please contact [dochelp@microsoft.com](mailto:dochelp@microsoft.com). We will assist you in finding the relevant information.

[RFC2119] Bradner, S., "Key words for use in RFCs to Indicate Requirement Levels", BCP 14, RFC 2119, March 1997, [https://www.rfc-editor.org/info/rfc2119](https://go.microsoft.com/fwlink/?LinkId=90317)

[RFC2246] Dierks, T., and Allen, C., "The TLS Protocol Version 1.0", RFC 2246, January 1999, [https://www.rfc-editor.org/info/rfc2246](https://go.microsoft.com/fwlink/?LinkId=90324)

[RFC2743] Linn, J., "Generic Security Service Application Program Interface Version 2, Update 1", RFC 2743, January 2000, [https://www.rfc-editor.org/info/rfc2743](https://go.microsoft.com/fwlink/?LinkId=90378)

[RFC3268] Chown, P., "Advanced Encryption Standard (AES) Ciphersuites for Transport Layer Security (TLS)", RFC 3268, June 2002, [https://www.rfc-editor.org/info/rfc3268](https://go.microsoft.com/fwlink/?LinkId=129796)

[RFC3546] Blake-Wilson, S., Nystrom, M., Hopwood, D., Mikkelsen, J., and Wright, T., "Transport Layer Security (TLS) Extensions", RFC 3546, June 2003, [https://www.rfc-editor.org/info/rfc3546](https://go.microsoft.com/fwlink/?LinkId=90431)

[RFC4346] Dierks, T., and Rescorla, E., "The Transport Layer Security (TLS) Protocol Version 1.1", RFC 4346, April 2006, [https://www.rfc-editor.org/info/rfc4346](https://go.microsoft.com/fwlink/?LinkId=90474)

[RFC4366] Blake-Wilson, S., Nystrom, M., Hopwood, D., et al., "Transport Layer Security (TLS) Extensions", RFC 4366, April 2006, [https://www.rfc-editor.org/info/rfc4366](https://go.microsoft.com/fwlink/?LinkId=129810)

[RFC4492] Blake-Wilson, S., Bolyard, N., Gupta, V., et al., "Elliptic Curve Cryptography (ECC) Cipher Suites for Transport Layer Security (TLS)", RFC 4492, May 2006, [https://www.rfc-editor.org/info/rfc4492](https://go.microsoft.com/fwlink/?LinkId=129809)

[RFC4681] Ball, J., Medvinsky, A., and Santesson, S., "TLS User Mapping Extension", RFC 4681, October 2006, [https://www.rfc-editor.org/info/rfc4681](https://go.microsoft.com/fwlink/?LinkId=129808)

[RFC5077] Salowey, J., Zhou, H., Eronen, P., and Tschofenig, H., "Transport Layer Security (TLS) Session Resumption without Server-Side State", RFC 5077, January 2008, [http://www.rfc-editor.org/rfc/rfc5077.txt](https://go.microsoft.com/fwlink/?LinkId=285815)

[RFC5246] Dierks, T., and Rescorla, E., "The Transport Layer Security (TLS) Protocol Version 1.2", RFC 5246, August 2008, [https://www.rfc-editor.org/info/rfc5246](https://go.microsoft.com/fwlink/?LinkId=129803)

[RFC5289] Rescorla, E., "TLS Elliptic Curve Cipher Suites with SHA-256/384 and AES Galois Counter Mode (GCM)", RFC 5289, August 2008, [https://www.rfc-editor.org/info/rfc5289](https://go.microsoft.com/fwlink/?LinkId=129797)

[RFC5487] Badra, M., "Pre-Shared Key Cipher Suites for TLS with SHA-256/384 and AES Galois Counter Mode", RFC 5487, March 2009, [https://www.rfc-editor.org/info/rfc5487](https://go.microsoft.com/fwlink/?LinkId=734930)

[RFC7301] Friedl, S., Popov, A., Langley, A., and Stephan, E., "Transport Layer Security (TLS) Application-Layer Protocol Negotiation Extension", RFC 7301, July 2014, [https://www.rfc-editor.org/info/rfc7301](https://go.microsoft.com/fwlink/?LinkId=513846)

[RFC7627] Bhargaven, K., Delignat-Lavaud, A., Pironti, A., Paris-Rocquencourt, Inria, Langley, A., and Ray, M., "Transport Layer Security (TLS) Session Hash and Extended Master Secret Extension", RFC 7627, September 2015, [https://www.rfc-editor.org/info/rfc7627](https://go.microsoft.com/fwlink/?LinkId=730726)

[RFC7748] Langley, A., Hamburg, M., and Turner, S., "Elliptic Curves for Security", RFC 7748, January 2016, [https://www.rfc-editor.org/info/rfc7748](https://go.microsoft.com/fwlink/?linkid=2154766)

[RFC8446] Rescorla, E., "The Transport Layer Security (TLS) Protocol Version 1.3", RFC 8446, August 2018, [https://www.rfc-editor.org/info/rfc8446](https://go.microsoft.com/fwlink/?linkid=2147431)

[RFC8472] Popov, A., Ed., Nystroem, M., Balfanz, D.,, "Transport Layer Security (TLS) Extension for Token Binding Protocol Negotiation", RFC 8472, October 2018, [https://www.rfc-editor.org/info/rfc8472](https://go.microsoft.com/fwlink/?linkid=2154371)

<a id="Section_1.2.2"></a>
### 1.2.2 Informative References

[KB4019276] Microsoft Corporation, "Update for Windows Server 2008", [https://www.catalog.update.microsoft.com/Search.aspx?q=%20KB4019276](https://go.microsoft.com/fwlink/?linkid=856299)

[MSDOCS-EnableTLS1.1/2] Microsoft Corporation, "Update to add support for TLS 1.1 and TLS 1.2 in Windows Server 2008 SP2, Windows Embedded POSReady 2009, and Windows Embedded Standard 2009", [https://support.microsoft.com/en-us/topic/update-to-add-support-for-tls-1-1-and-tls-1-2-in-windows-server-2008-sp2-windows-embedded-posready-2009-and-windows-embedded-standard-2009-b6ab553a-fa8f-3f5e-287c-e752eb3ce5f4](https://go.microsoft.com/fwlink/?linkid=2154698)

[MSDOCS-SB-3081320] Microsoft Corporation, "Microsoft Security Bulletin MS15-121 – Important: Security Update for Schannel to Address Spoofing (3081320)", Version 1.1, [https://learn.microsoft.com/en-us/security-updates/securitybulletins/2015/ms15-121](https://go.microsoft.com/fwlink/?linkid=2154370)

[MSDOCS-TLS-EC-Changes] Microsoft Corporation, "TLS (Schannel SSP) changes in Windows 10 and Windows Server 2016", [https://learn.microsoft.com/en-us/windows-server/security/tls/tls-schannel-ssp-changes-in-windows-10-and-windows-server](https://go.microsoft.com/fwlink/?linkid=2154482)

[MSDOCS-TLS-EllipticCurves] Microsoft Corporation, "TLS Elliptic Curves in Windows 10 version 1607 and later", [https://learn.microsoft.com/en-us/windows/win32/secauthn/tls-elliptic-curves-in-windows-10-1607-and-later](https://go.microsoft.com/fwlink/?linkid=2154368)

[MSDOCS-TLS/SSL-CipherSuites] Microsoft Corporation, "Cipher Suites in TLS/SSL (Schannel SSP)", [https://learn.microsoft.com/en-us/windows/win32/secauthn/cipher-suites-in-schannel](https://go.microsoft.com/fwlink/?linkid=2154697)

[MSDOCS-TLS/SSLTables] Microsoft Corporation, "Protocols in TLS/SSL (Schannel SSP)", [https://learn.microsoft.com/en-us/windows/win32/secauthn/protocols-in-tls-ssl--schannel-ssp-](https://go.microsoft.com/fwlink/?linkid=2154481)

[RFC5890] Klensin, J., "Internationalized Domain Names for Applications (IDNA): Definitions and Document Framework", RFC 5890, August 2010, [http://rfc-editor.org/rfc/rfc5890.txt](https://go.microsoft.com/fwlink/?LinkId=324608)

[RFC6066] Eastlake, D., "Transport Layer Security (TLS) Extensions: Extension Definitions", RFC 6066, January 2011, [http://www.rfc-editor.org/rfc/rfc6066.txt](https://go.microsoft.com/fwlink/?LinkId=392014)

[SSL3] Netscape, "SSL 3.0 Specification", November 1996, [https://tools.ietf.org/html/draft-ietf-tls-ssl-version3-00](https://go.microsoft.com/fwlink/?LinkId=90534)

<a id="Section_1.3"></a>
## 1.3 Overview

The [**TLS**](#gt_transport-layer-security-tls)/[**SSL**](#gt_secure-sockets-layer-ssl) authentication mechanism (as specified in [[RFC8446]](https://go.microsoft.com/fwlink/?linkid=2147431) and [[RFC5246]](https://go.microsoft.com/fwlink/?LinkId=129803)) is used to authenticate a server to a client with the option for mutual authentication.

<a id="Section_1.4"></a>
## 1.4 Relationship to Other Protocols

This document is a companion to the [**TLS**](#gt_transport-layer-security-tls)/[**SSL**](#gt_secure-sockets-layer-ssl) authentication standards [[RFC8446]](https://go.microsoft.com/fwlink/?linkid=2147431) and [[RFC5246]](https://go.microsoft.com/fwlink/?LinkId=129803).

The Transport Layer Security (TLS) Profile implements Server Name Indication (SNI) based on [[RFC4366]](https://go.microsoft.com/fwlink/?LinkId=129810) where HostName is in [**UTF-8**](#gt_utf-8) format. This behavior is not interoperable with SNI implementations of [[RFC6066]](https://go.microsoft.com/fwlink/?LinkId=392014) where HostName is a byte string using [**ASCII**](#gt_ascii) encoding without a trailing dot to support internationalized domain names through the use of A-labels [[RFC5890]](https://go.microsoft.com/fwlink/?LinkId=324608).

<a id="Section_1.5"></a>
## 1.5 Prerequisites/Preconditions

[**TLS**](#gt_transport-layer-security-tls)/[**SSL**](#gt_secure-sockets-layer-ssl) authentication has the same assumptions as specified in [[RFC8446]](https://go.microsoft.com/fwlink/?linkid=2147431) and in [[RFC5246]](https://go.microsoft.com/fwlink/?LinkId=129803).

<a id="Section_1.6"></a>
## 1.6 Applicability Statement

[**TLS**](#gt_transport-layer-security-tls)/[**SSL**](#gt_secure-sockets-layer-ssl) authentication is used in environments where the client and server support specifications [[RFC8446]](https://go.microsoft.com/fwlink/?linkid=2147431) and [[RFC5246]](https://go.microsoft.com/fwlink/?LinkId=129803).

<a id="Section_1.7"></a>
## 1.7 Versioning and Capability Negotiation

Versioning and capability negotiation is handled as specified in [[RFC8446]](https://go.microsoft.com/fwlink/?linkid=2147431) and [[RFC5246]](https://go.microsoft.com/fwlink/?LinkId=129803).

<a id="Section_1.8"></a>
## 1.8 Vendor-Extensible Fields

[**TLS**](#gt_transport-layer-security-tls)/[**SSL**](#gt_secure-sockets-layer-ssl) authentication contains vendor-extensible fields as specified in [[RFC8446]](https://go.microsoft.com/fwlink/?linkid=2147431) and [[RFC5246]](https://go.microsoft.com/fwlink/?LinkId=129803).

<a id="Section_1.9"></a>
## 1.9 Standards Assignments

| Parameter | Value | Reference |
| --- | --- | --- |
| Standard [**TLS**](#gt_transport-layer-security-tls)/[**SSL**](#gt_secure-sockets-layer-ssl) parameters | N/A | http://www.iana.org/assignments/tls-parameters/ |
| TLS extension parameters | N/A | http://www.iana.org/assignments/tls-extensiontype-values/ |

<a id="Section_2"></a>
# 2 Messages

<a id="Section_2.1"></a>
## 2.1 Transport

[**TLS**](#gt_transport-layer-security-tls)/[**SSL**](#gt_secure-sockets-layer-ssl) messages SHOULD be transported as specified in [[RFC8446]](https://go.microsoft.com/fwlink/?linkid=2147431) and [[RFC5246]](https://go.microsoft.com/fwlink/?LinkId=129803).

<a id="Section_2.2"></a>
## 2.2 Message Syntax

The [**TLS**](#gt_transport-layer-security-tls)/[**SSL**](#gt_secure-sockets-layer-ssl) message syntax SHOULD<2> be as specified in [[RFC8446]](https://go.microsoft.com/fwlink/?linkid=2147431), [[RFC5246]](https://go.microsoft.com/fwlink/?LinkId=129803), [[RFC5077]](https://go.microsoft.com/fwlink/?LinkId=285815), and [[RFC7301]](https://go.microsoft.com/fwlink/?LinkId=513846).

<a id="Section_2.2.1"></a>
### 2.2.1 Client and Server Hello Messages

[**Cipher**](#gt_cipher) suites and capabilities MAY<3> be negotiated as specified in [[RFC5487]](https://go.microsoft.com/fwlink/?LinkId=734930) and SHOULD<4><5> be negotiated as specified in [[RFC8446]](https://go.microsoft.com/fwlink/?linkid=2147431), [[RFC7627]](https://go.microsoft.com/fwlink/?LinkId=730726), [[RFC5246]](https://go.microsoft.com/fwlink/?LinkId=129803), [[RFC2246]](https://go.microsoft.com/fwlink/?LinkId=90324), [[RFC4492]](https://go.microsoft.com/fwlink/?LinkId=129809), and [[RFC3268]](https://go.microsoft.com/fwlink/?LinkId=129796).<6>

<a id="Section_2.2.2"></a>
### 2.2.2 Alert Messages

The [**TLS**](#gt_transport-layer-security-tls)/[**SSL**](#gt_secure-sockets-layer-ssl) alert message behavior and formatting SHOULD<7><8> be as specified in [[RFC8446]](https://go.microsoft.com/fwlink/?linkid=2147431) section 6, [[RFC5246]](https://go.microsoft.com/fwlink/?LinkId=129803) section 7.2, [[RFC2246]](https://go.microsoft.com/fwlink/?LinkId=90324) section 7.2, [[RFC4366]](https://go.microsoft.com/fwlink/?LinkId=129810) section 4, and [[RFC3546]](https://go.microsoft.com/fwlink/?LinkId=90431) section 4.

<a id="Section_2.2.3"></a>
### 2.2.3 Extended Hello Messages

The [**TLS**](#gt_transport-layer-security-tls) extended hello message behavior and formatting SHOULD<9> be as specified in [[RFC8446]](https://go.microsoft.com/fwlink/?linkid=2147431) section 4.1, [[RFC5246]](https://go.microsoft.com/fwlink/?LinkId=129803) section 7.4.1.4, [[RFC4366]](https://go.microsoft.com/fwlink/?LinkId=129810) sections 2.3 and 3.1, [[RFC3546]](https://go.microsoft.com/fwlink/?LinkId=90431) section 2.3, [[RFC4681]](https://go.microsoft.com/fwlink/?LinkId=129808) section 2,<10> [[RFC5077]](https://go.microsoft.com/fwlink/?LinkId=285815),<11> [[RFC7301]](https://go.microsoft.com/fwlink/?LinkId=513846),<12> and in [[RFC8472]](https://go.microsoft.com/fwlink/?linkid=2154371).<13>

<a id="Section_2.2.4"></a>
### 2.2.4 Certificate Messages

The [**TLS**](#gt_transport-layer-security-tls)/[**SSL**](#gt_secure-sockets-layer-ssl) certificate message behavior and formatting is specified in [[RFC8446]](https://go.microsoft.com/fwlink/?linkid=2147431) section 4.4, [[RFC5246]](https://go.microsoft.com/fwlink/?LinkId=129803) sections 7.4.2 and 7.4.6, [[RFC2246]](https://go.microsoft.com/fwlink/?LinkId=90324) sections 7.4.2 and 7.4.6, and [[RFC4492]](https://go.microsoft.com/fwlink/?LinkId=129809) sections 5.3 and 5.6.<14><15>

<a id="Section_2.3"></a>
## 2.3 Directory Service Schema Elements

None.

<a id="Section_3"></a>
# 3 Protocol Details

<a id="Section_3.1"></a>
## 3.1 Common Details

<a id="Section_3.1.1"></a>
### 3.1.1 Abstract Data Model

The abstract data model follows what is specified in [[RFC8446]](https://go.microsoft.com/fwlink/?linkid=2147431) and [[RFC5246]](https://go.microsoft.com/fwlink/?LinkId=129803).

<a id="Section_3.1.2"></a>
### 3.1.2 Timers

There are no timers except those specified in [[RFC8446]](https://go.microsoft.com/fwlink/?linkid=2147431) and [[RFC5246]](https://go.microsoft.com/fwlink/?LinkId=129803).

<a id="Section_3.1.3"></a>
### 3.1.3 Initialization

There is no protocol-specific initialization except what is specified in [[RFC8446]](https://go.microsoft.com/fwlink/?linkid=2147431) and [[RFC5246]](https://go.microsoft.com/fwlink/?LinkId=129803).

<a id="Section_3.1.4"></a>
### 3.1.4 Higher-Layer Triggered Events

There are no higher-layer triggered events in common to all parts of this protocol.

<a id="Section_3.1.5"></a>
### 3.1.5 Processing Events and Sequencing Rules

Message processing events and sequencing rules SHOULD<16> be as specified in [[RFC8446]](https://go.microsoft.com/fwlink/?linkid=2147431), [[RFC5246]](https://go.microsoft.com/fwlink/?LinkId=129803), [[RFC5077]](https://go.microsoft.com/fwlink/?LinkId=285815), and [[RFC7301]](https://go.microsoft.com/fwlink/?LinkId=513846).<17> If a client receives an extension type in ServerHello that it did not request in the associated ClientHello, it MAY<18> abort the handshake. There can be more than one extension of the same type.

<a id="Section_3.1.5.1"></a>
#### 3.1.5.1 GSS_WrapEx() Call

This call is an extension to GSS_Wrap ([[RFC2743]](https://go.microsoft.com/fwlink/?LinkId=90378) section 2.3.3) that passes multiple buffers.

Inputs:

- context_handle CONTEXT HANDLE
- qop_req INTEGER -- 0 specifies default Quality of Protection (QOP)
- input_message ORDERED LIST of:
- conf_req_flag BOOLEAN
- sign BOOLEAN
- data OCTET STRING
Outputs:

- major_status INTEGER
- minor_status INTEGER
- output_message ORDERED LIST (in same order as input_message) of:
- conf_state BOOLEAN
- signed BOOLEAN
- data OCTET STRING
- signature OCTET STRING
This call is identical to GSS_Wrap, except that it supports multiple input buffers. Schannel's binding of GSS_WrapEx() is such that only the first input buffer will be processed, and the rest ignored. Thus, Schannel's binding of GSS_WrapEx() functions just as GSS_Wrap does.

<a id="Section_3.1.5.2"></a>
#### 3.1.5.2 GSS_UnwrapEx() Call

This call is an extension to GSS_Unwrap ([[RFC2743]](https://go.microsoft.com/fwlink/?LinkId=90378) section 2.3.4) that passes multiple buffers.

Inputs:

- context_handle CONTEXT HANDLE
- input_message ORDERED LIST of:
- conf_state BOOLEAN
- signed BOOLEAN
- data OCTET STRING
- signature OCTET STRING
Outputs:

- qop_req INTEGER, -- 0 specifies default QOP
- major_status INTEGER
- minor_status INTEGER
- output_message ORDERED LIST (in same order as input_message) of:
- conf_state BOOLEAN
- data OCTET STRING
This call is identical to GSS_Unwrap, except that it supports multiple input buffers. Schannel's binding of GSS_UnwrapEx() is such that only the first input buffer will be processed and the rest ignored. Thus Schannel's binding of GSS_UnwrapEx() functions just as GSS_Unwrap does.

<a id="Section_3.1.6"></a>
### 3.1.6 Timer Events

There are no timer events except those specified in [[RFC8446]](https://go.microsoft.com/fwlink/?linkid=2147431) and [[RFC5246]](https://go.microsoft.com/fwlink/?LinkId=129803).

<a id="Section_3.1.7"></a>
### 3.1.7 Other Local Events

There are no local events except those specified in [[RFC8446]](https://go.microsoft.com/fwlink/?linkid=2147431) and [[RFC5246]](https://go.microsoft.com/fwlink/?LinkId=129803).

<a id="Section_4"></a>
# 4 Protocol Examples

Protocol examples can be found in [[RFC8446]](https://go.microsoft.com/fwlink/?linkid=2147431) section 2, [[RFC5246]](https://go.microsoft.com/fwlink/?LinkId=129803) section 7.3, [[RFC4366]](https://go.microsoft.com/fwlink/?LinkId=129810) section 3, [[RFC4681]](https://go.microsoft.com/fwlink/?LinkId=129808) section 4, [[RFC4492]](https://go.microsoft.com/fwlink/?LinkId=129809) section 5, and in [[RFC7748]](https://go.microsoft.com/fwlink/?linkid=2154766) section 6.

<a id="Section_5"></a>
# 5 Security

<a id="Section_5.1"></a>
## 5.1 Security Considerations for Implementers

Security considerations are specified in each standard.

<a id="Section_5.2"></a>
## 5.2 Index of Security Parameters

| Security Parameter | Section |
| --- | --- |
| See [Security Considerations for Implementers](#Section_5.1) | 5.1 |

<a id="Section_6"></a>
# 6 Appendix A: Product Behavior

The information in this specification is applicable to the following Microsoft products or supplemental software. References to product versions include updates to those products.

The terms "earlier" and "later", when used with a product version, refer to either all preceding versions or all subsequent versions, respectively. The term "through" refers to the inclusive range of versions. Applicable Microsoft products are listed chronologically in this section.

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

<1> Section 1: Specification support is listed in the following table. For [**TLS**](#gt_transport-layer-security-tls)/[**SSL**](#gt_secure-sockets-layer-ssl) version support tables, see [[MSDOCS-TLS/SSLTables]](https://go.microsoft.com/fwlink/?linkid=2154481). For more information on support, see Elliptical Curve changes [[MSDOCS-TLS-EC-Changes]](https://go.microsoft.com/fwlink/?linkid=2154482), Elliptic Curves [[MSDOCS-TLS-EllipticCurves]](https://go.microsoft.com/fwlink/?linkid=2154368), and Cipher Suites [[MSDOCS-TLS/SSL-CipherSuites]](https://go.microsoft.com/fwlink/?linkid=2154697).

| Features | Protocols | Extensions | Elliptic Curves and Cipher Suites | Supported by |
| --- | --- | --- | --- | --- |
| TLS 1.3 | [[RFC8446]](https://go.microsoft.com/fwlink/?linkid=2147431) | - | - | Windows 11 client and later Windows Server 2022 and later 0-RTT resumption mode is not supported (section 2.3) Only psk_dhe_ke key exchange mode is supported (section 4.2.9) |
| Elliptic Curves and Pre-Shared Keys for TLS | - | - | [[RFC7748]](https://go.microsoft.com/fwlink/?linkid=2154766) (Curve25519 only) [[RFC5487]](https://go.microsoft.com/fwlink/?LinkId=734930) | Windows 10 v1607 operating system and later Windows Server 2016 and later |
| TLS Extension for Token Binding Protocol Negotiation | - | - | [[RFC8472]](https://go.microsoft.com/fwlink/?linkid=2154371) | Windows 10 v1507 operating system and later Windows Server 2016 and later Applies to TLS 1.0, TLS 1.1, and TLS 1.2 |
| TLS Session Resumption without Server-Side State | - | [[RFC5077]](https://go.microsoft.com/fwlink/?LinkId=285815) | - | Windows 8.1 and later Windows Server 2012 R2 and later Applies to TLS 1.0, TLS 1.1, and TLS 1.2 |
| TLS 1.2 | [[RFC5246]](https://go.microsoft.com/fwlink/?LinkId=129803) | [[RFC7301]](https://go.microsoft.com/fwlink/?LinkId=513846) [[RFC4366]](https://go.microsoft.com/fwlink/?LinkId=129810) | [[RFC5289]](https://go.microsoft.com/fwlink/?LinkId=129797) | Windows 8 and later Windows Server 2012 and later Windows Server 2008 operating system with Service Pack 2 (SP2); see [[KB4019276]](https://go.microsoft.com/fwlink/?linkid=856299). To enable support for TLS 1.1 and TLS 1.2, see [[MSDOCS-EnableTLS1.1/2]](https://go.microsoft.com/fwlink/?linkid=2154698). |
| TLS 1.1 | [[RFC4346]](https://go.microsoft.com/fwlink/?LinkId=90474) | - | - | - |
| TLS 1.0 | [[RFC2246]](https://go.microsoft.com/fwlink/?LinkId=90324) | [[RFC4681]](https://go.microsoft.com/fwlink/?LinkId=129808) [[RFC3546]](https://go.microsoft.com/fwlink/?LinkId=90431) | [[RFC4492]](https://go.microsoft.com/fwlink/?LinkId=129809) [[RFC3268]](https://go.microsoft.com/fwlink/?LinkId=129796) | Supported on every Windows version Windows Vista and later Windows Server 2008 and later |
| TLS Session Hash and Extended Master Secret Extension | - | [[RFC7627]](https://go.microsoft.com/fwlink/?LinkId=730726) | - | Supported on every Windows version Windows Vista and later Windows Server 2008 with SP2 and later; see [[MSDOCS-SB-3081320]](https://go.microsoft.com/fwlink/?linkid=2154370) Applies to TLS 1.0, TLS 1.1, and TLS 1.2 |
| SSL 3.0 | [[SSL3]](https://go.microsoft.com/fwlink/?LinkId=90534) | - | - | Supported on every Windows version Disabled by default in: Windows 10 v1607 and later Windows Server 2016 and later |

<2> Section 2.2: [RFC5077] is not supported in Windows XP, through Windows 7 clients and Windows Server 2003 through Windows Server 2008 R2. Only the client side of [RFC5077] is supported in Windows 8 and Windows Server 2012.

[RFC7301] is not supported by Windows XP through Windows 8 clients and Windows Server 2003 through Windows Server 2012.

<3> Section 2.2.1: DHE_PSK or RSA_PSK Key Exchange Algorithms defined in [RFC5487] are not supported in Windows.

PSK Key Exchange Algorithm or PSK [**cipher**](#gt_cipher) suites in [RFC5487] are not supported in Windows XP through Windows 10 v1511 operating system clients and Windows Server 2003 through Windows Server 2012 R2.

<4> Section 2.2.1: [RFC4492] is not supported in Windows XP and Windows Server 2003. All other applicable Windows releases support [RFC4492], except for not allowing ECDH cipher suites where the number of bits used in the public key algorithm is less than the number of bits used in the signing algorithm.

<5> Section 2.2.1: Transport Layer Security (TLS) Session Hash and Extended Master Secret Extension [RFC7627] is not supported in Windows XP through Windows 8.1 clients and Windows Server 2003 through Windows Server 2012 R2.

<6> Section 2.2.1: Windows accepts a unified format ClientHello message even when SSL version 2 is disabled.

<7> Section 2.2.2: Windows has a decoupling of the network layer from the TLS/ SSL layer and thus cannot ensure that alert messages are sent.

<8> Section 2.2.2: Sending and receiving the Certificate Status Request extension from [RFC4366] and [RFC3546] are not supported by Windows XP and Windows Server 2003.

<9> Section 2.2.3: Sending the Server Name Indications from [RFC4366] and [RFC3546] in the ClientHello is not supported by Windows XP and Windows Server 2003.

Sending and receiving the Server Name Indications is not supported by Windows XP through Windows 7 clients and Windows Server 2003 through Windows Server 2008 R2.

<10> Section 2.2.3: Sending and receiving the User Mapping extension by using UPN domain hint from [RFC4681] is supported by Windows.

<11> Section 2.2.3: [RFC5077] is not supported by Windows XP through Windows 7 clients and Windows Server 2003 through Windows Server 2008 R2. Only the client side of [RFC5077] is supported by Windows 8 and Windows Server 2012.

<12> Section 2.2.3: [RFC7301] is not supported by Windows XP through Windows 8 clients and Windows Server 2003, through Windows Server 2012.

<13> Section 2.2.3: Transport Layer Security (TLS) Extension for Token Binding Protocol Negotiation [RFC8472] is not supported by Windows XP through Windows 10 v1507 clients and Windows Server 2003 through Windows Server 2012 R2 operating system.

<14> Section 2.2.4: Windows does not require that the signing algorithm used by the issuer of a certificate match the algorithm in the end certificate. Windows also does not require specific key usage extension bits to be set in certificates.

<15> Section 2.2.4: Windows omits the root certificate by default when sending certificate chains.

<16> Section 3.1.5: Note the following Windows message processing:

- If a session fails during bulk data transfer, Windows does not prevent attempted resumption of the session.
- Only Windows XP and Windows Server 2003 support and process extensions within the Certificate Status Request extension.
- Windows does not ignore a HelloRequest received, even in the middle of a handshake.
- Windows Server 2003 does not support fragmentation of incoming messages across frames as is allowed in [RFC5246] section 6.2.1.
<17> Section 3.1.5: [RFC7301] is not supported by Windows XP through Windows 8 clients and Windows Server 2003 through Windows Server 2012.

<18> Section 3.1.5: Windows ignores both unrequested and duplicate extensions in both ClientHello and ServerHello.

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


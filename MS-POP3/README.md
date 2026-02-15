# [MS-POP3]: NT LAN Manager (NTLM) Authentication: Post Office Protocol - Version 3 (POP3) Extension

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
    - [2.2.1 AUTH Extensions](#Section_2.2.1)
    - [2.2.2 POP3 Server Messages](#Section_2.2.2)
    - [2.2.3 POP3 Client Messages](#Section_2.2.3)
</details>

<details>
<summary>3 Protocol Details</summary>

- [3 Protocol Details](#Section_3)
  - [3.1 Client Details](#Section_3.1)
    - [3.1.1 Abstract Data Model](#Section_3.1.1)
      - [3.1.1.1 POP3 State Model](#Section_3.1.1.1)
      - [3.1.1.2 NTLM Subsystem Interaction](#Section_3.1.1.2)
    - [3.1.2 Timers](#Section_3.1.2)
    - [3.1.3 Initialization](#Section_3.1.3)
    - [3.1.4 Higher-Layer Triggered Events](#Section_3.1.4)
    - [3.1.5 Message Processing Events and Sequencing Rules](#Section_3.1.5)
      - [3.1.5.1 Receiving a POP3_NTLM_Supported_Response Message](#Section_3.1.5.1)
      - [3.1.5.2 Receiving a POP3_AUTH_NTLM_Fail_Response Message](#Section_3.1.5.2)
      - [3.1.5.3 Receiving a POP3_AUTH_NTLM_Blob_Response Message](#Section_3.1.5.3)
        - [3.1.5.3.1 Error from NTLM](#Section_3.1.5.3.1)
        - [3.1.5.3.2 NTLM Reports Success and Returns an NTLM Message](#Section_3.1.5.3.2)
      - [3.1.5.4 Receiving a POP3_AUTH_NTLM_Succeeded_Response Message](#Section_3.1.5.4)
      - [3.1.5.5 Receiving a POP3_AUTH_NTLM_Cancelled_Response Message](#Section_3.1.5.5)
    - [3.1.6 Timer Events](#Section_3.1.6)
    - [3.1.7 Other Local Events](#Section_3.1.7)
  - [3.2 Server Details](#Section_3.2)
    - [3.2.1 Abstract Data Model](#Section_3.2.1)
      - [3.2.1.1 POP3 State Model](#Section_3.2.1.1)
      - [3.2.1.2 NTLM Subsystem Interaction](#Section_3.2.1.2)
    - [3.2.2 Timers](#Section_3.2.2)
    - [3.2.3 Initialization](#Section_3.2.3)
    - [3.2.4 Higher-Layer Triggered Events](#Section_3.2.4)
    - [3.2.5 Message Processing Events and Sequencing Rules](#Section_3.2.5)
      - [3.2.5.1 Receiving a POP3_AUTH_NTLM_Initiation_Command Message](#Section_3.2.5.1)
      - [3.2.5.2 Receiving a POP3_AUTH_NTLM_Blob_Command Message](#Section_3.2.5.2)
        - [3.2.5.2.1 NTLM Returns Success, Returning an NTLM Message](#Section_3.2.5.2.1)
        - [3.2.5.2.2 NTLM Returns Success, Indicating Authentication Completed Successfully](#Section_3.2.5.2.2)
        - [3.2.5.2.3 NTLM Returns Status, Indicating User Name or Password Was Incorrect](#Section_3.2.5.2.3)
        - [3.2.5.2.4 NTLM Returns a Failure Status, Indicating Any Other Error](#Section_3.2.5.2.4)
      - [3.2.5.3 Receiving a POP3_AUTH_Cancellation_Command Message](#Section_3.2.5.3)
    - [3.2.6 Timer Events](#Section_3.2.6)
    - [3.2.7 Other Local Events](#Section_3.2.7)
</details>

<details>
<summary>4 Protocol Examples</summary>

- [4 Protocol Examples](#Section_4)
  - [4.1 POP3 Client Successfully Authenticating to a POP3 Server](#Section_4.1)
  - [4.2 POP3 Client Unsuccessfully Authenticating to a POP3 Server](#Section_4.2)
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

The NT LAN Manager (NTLM) Authentication: Post Office Protocol–Version 3 (POP3) Extension specifies the use of [**NTLM**](#gt_nt-lan-manager-ntlm) authentication (see [MS-NLMP](../MS-NLMP/MS-NLMP.md)) by the Post Office Protocol 3 (POP3) to facilitate client authentication to a Windows POP3 server. POP3 specifies a protocol for the inquiry and retrieval of electronic mail. For a detailed definition of POP3, see [[RFC1939]](https://go.microsoft.com/fwlink/?LinkId=90299).

**Note** For the purposes of this document, the NT LAN Manager (NTLM) Authentication: Post Office Protocol–Version 3 (POP3) Extension is referred to in subsequent sections as the "NTLM POP3 Extension".

The NTLM POP3 Extension uses the POP3 [**AUTH command**](#gt_auth-command) (see [[RFC1734]](https://go.microsoft.com/fwlink/?LinkId=90286)) to negotiate NTLM authentication and to send authentication data.

Sections 1.5, 1.8, 1.9, 2, and 3 of this specification are normative. All other sections and examples in this specification are informative.

<a id="Section_1.1"></a>
## 1.1 Glossary

This document uses the following terms:

<a id="gt_augmented-backus-naur-form-abnf"></a>
**Augmented Backus-Naur Form (ABNF)**: A modified version of Backus-Naur Form (BNF), commonly used by Internet specifications. ABNF notation balances compactness and simplicity with reasonable representational power. ABNF differs from standard BNF in its definitions and uses of naming rules, repetition, alternatives, order-independence, and value ranges. For more information, see [[RFC5234]](https://go.microsoft.com/fwlink/?LinkId=123096).

<a id="gt_auth-command"></a>
**AUTH command**: A Post Office Protocol 3 (POP3) optional command that is used to send authentication information as specified in [[RFC1734]](https://go.microsoft.com/fwlink/?LinkId=90286). The "mechanism" name defined in the RFC is [**NTLM**](#gt_nt-lan-manager-ntlm). The structure of the [**AUTH command**](#gt_auth-command) as used in the POP3 AUTHentication Command Protocol Extension is as follows: "AUTH NTLM<CR><LF>".

<a id="gt_connection-oriented-ntlm"></a>
**connection-oriented NTLM**: A particular variant of [**NTLM**](#gt_nt-lan-manager-ntlm) designed to be used with connection-oriented remote procedure call (RPC), as described in [MS-NLMP](../MS-NLMP/MS-NLMP.md).

<a id="gt_nt-lan-manager-ntlm"></a>
**NT LAN Manager (NTLM)**: An authentication protocol that is based on a challenge-response sequence for authentication.

<a id="gt_nt-lan-manager-ntlm-authentication-protocol"></a>
**NT LAN Manager (NTLM) Authentication Protocol**: A protocol using a challenge-response mechanism for authentication in which clients are able to verify their identities without sending a password to the server. It consists of three messages, commonly referred to as Type 1 (negotiation), Type 2 (challenge) and Type 3 (authentication).

<a id="gt_ntlm-authenticate_message"></a>
**NTLM AUTHENTICATE_MESSAGE**: The [**NTLM AUTHENTICATE_MESSAGE**](#gt_ntlm-authenticate_message) packet defines an [**NTLM**](#gt_nt-lan-manager-ntlm) authenticate message that is sent from the client to the server after the [**NTLM CHALLENGE_MESSAGE**](#gt_ntlm-challenge_message) is processed by the client. Message structure and other details of this packet are specified in [MS-NLMP].

<a id="gt_ntlm-challenge_message"></a>
**NTLM CHALLENGE_MESSAGE**: The [**NTLM CHALLENGE_MESSAGE**](#gt_ntlm-challenge_message) packet defines an NTLM challenge message that is sent from the server to the client. [**NTLM CHALLENGE_MESSAGE**](#gt_ntlm-challenge_message) is generated by the local [**NTLM software**](#gt_ntlm-software) and passed to the application that supports embedded [**NTLM**](#gt_nt-lan-manager-ntlm) authentication. This message is used by the server to challenge the client to prove its identity. Message structure and other details of this packet are specified in [MS-NLMP].

<a id="gt_ntlm-message"></a>
**NTLM message**: A message that carries authentication information. Its payload data is passed to the application that supports embedded NTLM authentication by the NTLM software installed on the local computer. NTLM messages are transmitted between the client and server embedded within the application protocol that is using NTLM authentication. There are three types of NTLM messages: NTLM NEGOTIATE_MESSAGE, NTLM CHALLENGE_MESSAGE, and NTLM AUTHENTICATE_MESSAGE.

<a id="gt_ntlm-negotiate_message"></a>
**NTLM NEGOTIATE_MESSAGE**: The NEGOTIATE_MESSAGE packet defines an NTLM negotiate message that is sent from the client to the server. The [**NTLM NEGOTIATE_MESSAGE**](#gt_ntlm-negotiate_message) is generated by the local [**NTLM software**](#gt_ntlm-software) and passed to the application that supports embedded [**NTLM**](#gt_nt-lan-manager-ntlm) authentication. This message allows the client to specify its supported [**NTLM**](#gt_nt-lan-manager-ntlm) options to the server. Message structure and other details are specified in [MS-NLMP].

<a id="gt_ntlm-software"></a>
**NTLM software**: Software that implements the [**NT LAN Manager (NTLM) Authentication Protocol**](#gt_nt-lan-manager-ntlm-authentication-protocol).

<a id="gt_pop3-response"></a>
**POP3 response**: A message sent by a POP3 server in response to a message from a POP3 client. The structure of this message, as specified in [[RFC1939]](https://go.microsoft.com/fwlink/?LinkId=90299), is as follows: <+OK> <response text><CR><LF> or <-ERR> <response text><CR><LF>.

<a id="gt_security-support-provider-interface-sspi"></a>
**Security Support Provider Interface (SSPI)**: An API that allows connected applications to call one of several security providers to establish authenticated connections and to exchange data securely over those connections. It is equivalent to Generic Security Services (GSS)-API, and the two are on-the-wire compatible.

**MAY, SHOULD, MUST, SHOULD NOT, MUST NOT:** These terms (in all caps) are used as defined in [[RFC2119]](https://go.microsoft.com/fwlink/?LinkId=90317). All statements of optional behavior use either MAY, SHOULD, or SHOULD NOT.

<a id="Section_1.2"></a>
## 1.2 References

Links to a document in the Microsoft Open Specifications library point to the correct section in the most recently published version of the referenced document. However, because individual documents in the library are not updated at the same time, the section numbers in the documents may not match. You can confirm the correct section numbering by checking the [Errata](https://go.microsoft.com/fwlink/?linkid=850906).

<a id="Section_1.2.1"></a>
### 1.2.1 Normative References

We conduct frequent surveys of the normative references to assure their continued availability. If you have any issue with finding a normative reference, please contact [dochelp@microsoft.com](mailto:dochelp@microsoft.com). We will assist you in finding the relevant information.

[MS-NLMP] Microsoft Corporation, "[NT LAN Manager (NTLM) Authentication Protocol](../MS-NLMP/MS-NLMP.md)".

[RFC1521] Borenstein, N., and Freed, N., "MIME (Multipurpose Internet Mail Extensions) Part One: Mechanisms for Specifying and Describing the Format of Internet Message Bodies", RFC 1521, September 1993, [https://www.rfc-editor.org/info/rfc1521](https://go.microsoft.com/fwlink/?LinkId=94433)

[RFC1734] Myers, J., "POP3 AUTHentication Command", RFC 1734, December 1994, [http://www.rfc-editor.org/rfc/rfc1734.txt](https://go.microsoft.com/fwlink/?LinkId=90286)

[RFC1939] Myers, J., and Rose, M., "Post Office Protocol - Version 3", STD 53, RFC 1939, May 1996, [https://www.rfc-editor.org/info/rfc1939](https://go.microsoft.com/fwlink/?LinkId=90299)

[RFC2119] Bradner, S., "Key words for use in RFCs to Indicate Requirement Levels", BCP 14, RFC 2119, March 1997, [https://www.rfc-editor.org/info/rfc2119](https://go.microsoft.com/fwlink/?LinkId=90317)

[RFC5234] Crocker, D., Ed., and Overell, P., "Augmented BNF for Syntax Specifications: ABNF", STD 68, RFC 5234, January 2008, [https://www.rfc-editor.org/info/rfc5234](https://go.microsoft.com/fwlink/?LinkId=123096)

<a id="Section_1.2.2"></a>
### 1.2.2 Informative References

[SSPI] Microsoft Corporation, "SSPI", [https://learn.microsoft.com/en-us/windows/desktop/SecAuthN/sspi](https://go.microsoft.com/fwlink/?LinkId=90536)

<a id="Section_1.3"></a>
## 1.3 Overview

Client applications that connect to the Post Office Protocol 3 (POP3) service included in Windows Server 2003 operating system and Windows Server 2003 R2 operating system can use either standard plaintext authentication, as specified in [[RFC1939]](https://go.microsoft.com/fwlink/?LinkId=90299), or [**NT LAN Manager (NTLM)**](#gt_nt-lan-manager-ntlm) authentication.

The NTLM POP3 Extension specifies how a POP3 client and POP3 server can use the [**NT LAN Manager (NTLM) Authentication Protocol**](#gt_nt-lan-manager-ntlm-authentication-protocol), as specified in [MS-NLMP](../MS-NLMP/MS-NLMP.md), so that the POP3 server can authenticate the POP3 client. NTLM is a challenge/response authentication protocol that depends on the application layer protocols to transport NTLM packets from client to server, and from server to client.

This specification defines how the POP3 [**AUTH command**](#gt_auth-command) [[RFC1734]](https://go.microsoft.com/fwlink/?LinkId=90286) is used to perform authentication using the NTLM authentication protocol. The POP3 Authentication command standard defines an extensibility mechanism for arbitrary authentication protocols to be plugged into the core protocol.

This specification describes an embedded protocol in which NTLM authentication data is first transformed into a base64 representation, and then formatted by padding with POP3 keywords as defined by the AUTH mechanism. The base64 encoding and the formatting are very rudimentary, and are solely intended to make the NTLM data fit the framework specified in [RFC1734]. The following diagram illustrates the sequence of transformations performed on an [**NTLM message**](#gt_ntlm-message) to produce a message that can be sent over POP3.

![Relationship between NTLM message and POP3](media/image1.png)

Figure 1: Relationship between NTLM message and POP3

This specification describes a pass-through protocol that does not specify the structure of NTLM information. Instead, the protocol relies on the software that implements the NTLM Authentication Protocol (as specified in [MS-NLMP]) to process each NTLM message to be sent or received.

This specification defines a server and a client role.

When POP3 performs an NTLM authentication, it needs to interact with the NTLM subsystem appropriately. Below is an overview of this interaction.

If acting as a POP3 client:

- The NTLM subsystem returns the first NTLM message to the client, to be sent to the server.
- The client applies the base64-encoding and POP3-padding transformations mentioned earlier and described in detail later in this document to produce a POP3 message and send this message to the server.
- The client waits for a response from the server. When the response is received, the client checks to see whether the response indicates the end of authentication (success or failure), or that authentication is continuing.
- If the authentication is continuing, the response message is stripped of the POP3 padding, base64 decoded, and passed into the NTLM subsystem, upon which the NTLM subsystem might return another NTLM message that needs to be sent to the server. Steps 2 through 4 are repeated until authentication succeeds or fails.
If acting as a POP3 server:

- The server waits to receive the first POP3 authentication message from the client.
- When a POP3 message is received from the client, the POP3 padding is removed, the message is base64 decoded, and the resulting NTLM message is passed into the NTLM subsystem.
- The NTLM subsystem will return a status indicating whether authentication completed successfully, failed, or whether more NTLM messages need to be exchanged to complete the authentication.
- If the authentication is continuing, the NTLM subsystem will return an NTLM message that needs to be sent to the client. This message is base64-encoded, the POP3 padding is applied and sent to the client. Steps 2 through 4 are repeated until authentication succeeds or fails.
The sequence that follows shows the typical flow of packets between the client and the server once NTLM authentication has been selected.

- The POP3 client sends an [**NTLM NEGOTIATE_MESSAGE**](#gt_ntlm-negotiate_message) embedded in a [POP3_AUTH_NTLM_Blob_Command](#Section_fac94fe7b9cb4844808f6a0c0a646a63) packet to the server.
- On receiving the POP3 packet with an NTLM NEGOTIATE_MESSAGE, the POP3 server sends an [**NTLM CHALLENGE_MESSAGE**](#gt_ntlm-challenge_message) embedded in a POP3 packet to the client.
- In response, the POP3 client sends an [**NTLM AUTHENTICATE_MESSAGE**](#gt_ntlm-authenticate_message) embedded in a POP3 packet.
- The server then sends a [**POP3 Response**](#gt_pop3-response) to the client to successfully complete the authentication process.
The NTLM NEGOTIATE_MESSAGE, NTLM CHALLENGE_MESSAGE, and NTLM AUTHENTICATE_MESSAGE packets contain NTLM authentication data that is processed by the [**NTLM software**](#gt_ntlm-software) installed on the local computer. How to retrieve and process NTLM messages is specified in [MS-NLMP].

Implementers of this specification need to have a working knowledge of the following:

- POP3, as specified in [RFC1734] and [RFC1939].
- The Multipurpose Internet Mail Extensions (MIME) base64 encoding method, as specified in [[RFC1521]](https://go.microsoft.com/fwlink/?LinkId=94433).
- The NTLM Authentication Protocol, as specified in [MS-NLMP].
<a id="Section_1.4"></a>
## 1.4 Relationship to Other Protocols

The NTLM POP3 Extension uses the POP3 AUTH extension mechanism, as specified in [[RFC1734]](https://go.microsoft.com/fwlink/?LinkId=90286), and is an embedded protocol. Unlike standalone application protocols, such as Telnet or Hypertext Transfer Protocol (HTTP), packets for this specification are embedded in POP3 commands and server responses.

POP3 specifies only the sequence in which a POP3 server and POP3 client exchange [**NTLM messages**](#gt_ntlm-message) to successfully authenticate the client to the server. It does not specify how the client obtains NTLM messages from the local [**NTLM software**](#gt_ntlm-software), or how the POP3 server processes NTLM messages. The POP3 client and POP3 server implementations depend on the availability of an implementation of the NTLM Authentication Protocol (as specified in [MS-NLMP](../MS-NLMP/MS-NLMP.md)) to obtain and process NTLM messages and on the availability of the base64 encoding and decoding mechanisms (as specified in [[RFC1521]](https://go.microsoft.com/fwlink/?LinkId=94433)) to encode and decode the NTLM messages embedded in POP3 packets.

<a id="Section_1.5"></a>
## 1.5 Prerequisites/Preconditions

Because POP3 depends on [**NTLM**](#gt_nt-lan-manager-ntlm) to authenticate the client to the server, both the server and the client have to have access to an implementation of the NTLM Authentication Protocol (as specified in [MS-NLMP](../MS-NLMP/MS-NLMP.md)) that is capable of supporting [**connection-oriented NTLM**](#gt_connection-oriented-ntlm).<1>

<a id="Section_1.6"></a>
## 1.6 Applicability Statement

The NTLM POP3 Extension is used only when implementing a POP3 client that needs to authenticate to a POP3 server by using [**NTLM**](#gt_nt-lan-manager-ntlm) authentication.<2>

<a id="Section_1.7"></a>
## 1.7 Versioning and Capability Negotiation

This document covers versioning issues in the following areas:

- Security and Authentication Methods: The NTLM POP3 Extension supports the NTLMv1 and NTLMv2 authentication methods, as specified in [MS-NLMP](../MS-NLMP/MS-NLMP.md).
- Capability Negotiation: POP3 does not support negotiation of which version of the NTLM Authentication Protocol to use. Instead, the NTLM Authentication Protocol version is configured on both the client and the server prior to authentication. NTLM Authentication Protocol version mismatches are handled by the NTLM Authentication Protocol implementation, not by POP3.
The client discovers whether the server supports [**NTLM**](#gt_nt-lan-manager-ntlm) AUTH through the [**AUTH command**](#gt_auth-command), issued without any arguments (through a mechanism described in [AUTH Extensions (section 2.2.1)](#Section_2.2.1)), upon which the server responds with a list of supported authentication mechanisms followed by a line containing only a period (.). If NTLM is supported, the server includes the word "NTLM" in the list. The messages involved are formally described in section [2.2](#Section_2.2).

<a id="Section_1.8"></a>
## 1.8 Vendor-Extensible Fields

The NTLM POP3 Extension does not have any vendor-extensible fields.

<a id="Section_1.9"></a>
## 1.9 Standards Assignments

The NTLM POP3 Extension does not use any standards assignments.

<a id="Section_2"></a>
# 2 Messages

The following sections specify how the NTLM POP3 Extension messages are transported and NTLM POP3 Extension message syntax.

<a id="Section_2.1"></a>
## 2.1 Transport

The NTLM POP3 Extension does not establish transport connections. Instead, NTLM POP3 Extension messages are encapsulated in POP3 commands and responses. How NTLM POP3 Extension messages must be encapsulated in POP3 commands is specified in section [2.2](#Section_2.2).

<a id="Section_2.2"></a>
## 2.2 Message Syntax

The NTLM POP3 Extension messages are divided into the three categories, depending on whether the message was sent by the server or the client:

- AUTH extensions
- POP3 server messages
- POP3 client messages
<a id="Section_2.2.1"></a>
### 2.2.1 AUTH Extensions

The first category of POP3 messages is messages that fall within the AUTH extensibility framework. These messages are specified in [[RFC1734]](https://go.microsoft.com/fwlink/?LinkId=90286). Some messages have parameters that must be customized by the extensibility mechanism (such as [**NTLM**](#gt_nt-lan-manager-ntlm)). The following customizations are introduced in this document:

- A client can query the server to learn whether or not NTLM is supported. This is accomplished by issuing the [**AUTH command**](#gt_auth-command) without any parameters. In the following definition, this command is shown in [**Augmented Backus-Naur Form (ABNF)**](#gt_augmented-backus-naur-form-abnf) (for more information on ABNF, see [[RFC5234]](https://go.microsoft.com/fwlink/?LinkId=123096)).
AUTH<SPACE><CR><LF>

where:

<SPACE>

is defined as a single space character.

This mechanism is intended for clients that want to determine which authentication methods are available. A client can either issue this command to query whether NTLM is available and then initiate an NTLM auth session, or the client can simply try to initiate an NTLM session expecting it to fail if NTLM is not supported. Issuing the AUTH command does not change the state of the client; it is still in an unauthenticated state. In this state, the client can either issue another AUTH command or start the authentication process.

- The server responds to this message with a message followed by a list of supported authentication mechanisms, followed by a list termination message. This sequence is shown in the following ABNF definition.
+OK<CR><LF>NTLM<CR><LF>.<CR><LF>

- If NTLM is not supported, the POP3 server returns a failure status code as defined by [RFC1734] and a POP3_AUTH_NTLM_Fail_Response message is returned in response to the "AUTH<SPACE><CR><LF>" message. The only data in this message that is useful is -ERR. The remaining data is human-readable and has no bearing on the authentication. The syntax of this command is shown in the following ABNF definition. This syntax is referred to as POP3_AUTH_NTLM_Fail_Response in this specification.
-ERR <human_readable_string><CR><LF>

- [RFC1734] section 2 defines the syntax of the AUTH command to initiate authentication. The parameter "mechanism" is defined to be the string "NTLM" for NTLM POP3 Extension. The command to initiate an NTLM conversation by a client is shown in the following ABNF definition. This is referred to as POP3_AUTH_NTLM_Initiation_Command in this document.
AUTH NTLM<CR><LF>

- If NTLM is supported, the POP3 server will respond with a POP3 message to indicate that NTLM is supported. The syntax of this command is shown in the following ABNF definition. This is referred to as POP3_NTLM_Supported_Response in this document.
+OK<CR><LF>

- If NTLM is not supported, the POP3 server returns a failure status code as defined by [RFC1734]. The only data in this message that is useful is -ERR. The remaining data is human-readable data and has no bearing on the authentication. The syntax of this command is shown in the following ABNF definition. This is referred to as POP3_AUTH_NTLM_Fail_Response in this document.
-ERR <human_readable_string> <CR><LF>

- At every point of time during the authentication exchange, the client must parse the responses in the messages sent by the server and interpret them as defined by [RFC1734]. The responses define various states such as success in authenticating, failure to authenticate, and any other arbitrary failures that the software might encounter.
The client can receive any one of the following responses during authentication. Note that the syntax and meaning of all these messages are completely defined by [RFC1734].

- POP3_AUTH_NTLM_Blob_Response: This message is partially defined in [RFC1734]. The plus sign (+) status code indicates ongoing authentication and indicates that <base64-encoded-NTLM-message> is to be processed by the authentication subsystem. In this case, the client must de-encapsulate the data and pass it to the NTLM subsystem.
+ <base64-encoded-NTLM-message><CR><LF>

- POP3_AUTH_NTLM_Fail_Response: This message is defined in [RFC1734] and indicates that the authentication has terminated unsuccessfully, either because the user name or password was incorrect, or because of some other arbitrary error such as a software or data corruption error.
-ERR <human-readable-string><CR><LF>

- POP3_AUTH_NTLM_Succeeded_Response: This message is defined in [RFC1734] and indicates that the authentication negotiation has completed with the client successfully authenticating to the server.
+OK <human-readable-string><CR><LF>

- POP3_AUTH_NTLM_Cancelled_Response: This message is defined in [RFC1734] and indicates that the authentication negotiation has been canceled with the client.<3>
-ERR <human-readable-string><CR><LF>

- [**NTLM messages**](#gt_ntlm-message) encapsulated by the client and sent to the server, are referred to as POP3_AUTH_NTLM_Blob_Command in this document. They have the following syntax defined in ABNF and conform to the prescription of [RFC1734].
<base64-encoded-NTLM-message><CR><LF>

- Once the POP3_AUTH_NTLM_Initiation_Command has been sent to start the authentication process, the client is able to cancel the authentication request by issuing a POP3_AUTH_Cancellation_Command. This has the following syntax, defined in ABNF.
*<CR><LF>

As specified in [RFC1734], the client can cancel the authentication request at any point during the exchange. Once sent, the client then remains in an unauthenticated state.

<a id="Section_2.2.2"></a>
### 2.2.2 POP3 Server Messages

This section defines the creation of POP3_AUTH_NTLM_Blob_Response messages. These are [**NTLM messages**](#gt_ntlm-message) that are sent by the server and that must be encapsulated as follows to conform to syntax specified by the AUTH mechanism:

- Base64-encode the NTLM message data. This is needed because NTLM messages contain data outside the ASCII character range, whereas POP3 supports only ASCII characters.
- To the base64-encoded string, prefix the [**POP3 response**](#gt_pop3-response) code with a plus sign (+).
- Suffix the <CR> and <LF> character (ASCII values 0x0D and 0x0A) as required by POP3.
The [**ABNF**](#gt_augmented-backus-naur-form-abnf) definition of a server message is as follows.

+ <base64-encoded-NTLM-message><CR><LF>

De-encapsulation of these messages by the client follows the reverse logic:

- Remove the <CR> and <LF> character (ASCII values 0x0D and 0x0A).
- Remove the POP3 response code (+).
- Decode the base64-encoded POP3 data to produce the original NTLM message data.
<a id="Section_2.2.3"></a>
### 2.2.3 POP3 Client Messages

This section defines the processing of POP3_AUTH_NTLM_Blob_Command messages. These [**NTLM messages**](#gt_ntlm-message) sent by the client are encapsulated as follows to conform to the AUTH mechanism:

- Base64-encode the NTLM message data. This is needed because NTLM messages contain data outside the ASCII character range whereas POP3 supports only ASCII characters.
- Suffix the <CR> and <LF> character (ASCII values 0x0D and 0x0A) as required by POP3.
The [**ABNF**](#gt_augmented-backus-naur-form-abnf) definition of a client message is as follows.

<base64-encoded-NTLM-message><CR><LF>

De-encapsulation of these messages by the server follows the reverse logic:

- Remove the <CR> and <LF> character (ASCII values 0x0D and 0x0A).
- Base64-decode the POP3 data to produce the original NTLM message data.
<a id="Section_3"></a>
# 3 Protocol Details

<a id="Section_3.1"></a>
## 3.1 Client Details

<a id="Section_3.1.1"></a>
### 3.1.1 Abstract Data Model

<a id="Section_3.1.1.1"></a>
#### 3.1.1.1 POP3 State Model

![Client POP3 state model](media/image2.png)

Figure 2: Client POP3 state model

The abstract data model for NTLM POP3 Extension has the following states:

- Start:
This is the state of the client before the POP3_AUTH_NTLM_Initiation_Command is sent.

- State 2: sent_authentication_request
This is the state of the client after the POP3_AUTH_NTLM_Initiation_Command is sent.

- State 1: inside_authentication
This is the state entered by a client after it receives a POP3_NTLM_Supported_Response. In this state, the client initializes the [**NTLM**](#gt_nt-lan-manager-ntlm) subsystem and repeats the following steps:

- Encapsulates the [**NTLM message**](#gt_ntlm-message), returned by the NTLM subsystem, into a POP3 message.
- Sends the POP3 message to the Server
- Waits for a response from the server.
- De-encapsulates received POP3 message data (if any) from the server and converts it to NTLM message data.
- Passes it to the NTLM subsystem.
This state terminates when:

- The client receives a POP3_AUTH_NTLM_Succeeded_Response or POP3_AUTH_NTLM_Fail_Response.
- A failure is reported by the NTLM subsystem.
- Stop: completed_authentication.
This is the state of the client when it exits the inside_authentication state. The rules for exiting the inside_authentication state are defined in Message Processing Events and Sequencing Rules section [3.1.5](#Section_3.1.5). The behavior of POP3 in this state is not in the scope of this document—it represents the end state of the authentication protocol.

<a id="Section_3.1.1.2"></a>
#### 3.1.1.2 NTLM Subsystem Interaction

During the inside_authentication phase, the POP3 client invokes the [**NTLM**](#gt_nt-lan-manager-ntlm) subsystem as described in [MS-NLMP](../MS-NLMP/MS-NLMP.md) section 3.1. The NTLM protocol is used with these options:

- The negotiation is a [**connection-oriented NTLM**](#gt_connection-oriented-ntlm) negotiation.
- None of the flags specified in [MS-NLMP] section 3.1.1 is specific to NTLM.
The following is a description of how POP3 uses NTLM. All [**NTLM messages**](#gt_ntlm-message) are encapsulated as specified in section [2.1](../MS-NLMP/MS-NLMP.md). [MS-NLMP] section 3.1.1 describes the data model, internal states, and sequencing of NTLM messages in greater detail:

- The client initiates the authentication by invoking NTLM, upon which NTLM returns the [**NTLM NEGOTIATE_MESSAGE**](#gt_ntlm-negotiate_message) packet to be sent to the server.
- Subsequently, the exchange of NTLM messages goes on as defined by the NTLM protocol, with the POP3 client encapsulating the NTLM messages before sending them to the server, and de-encapsulating POP3 messages to obtain the NTLM message before giving it to NTLM.
- The NTLM protocol completes authentication, either successfully or unsuccessfully, as follows:
- The server sends the POP3_AUTH_NTLM_Succeeded_Response to the client. On receiving this message, the client transitions to the completed_authentication state and SHOULD treat the authentication attempt as successful.
- The server sends the POP3_AUTH_NTLM_Fail_Response to the client. On receiving this message, the client transitions to the completed_authentication state and SHOULD treat the authentication attempt as failed.
- Failures reported from the NTLM package (which can occur for any reason, including incorrect data being passed in, or implementation-specific errors), are not reported to the client and cause the client to transition to the completed_authentication state.
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

The NTLM POP3 Extension is driven by a series of message exchanges between a POP3 server and a POP3 client. The rules governing the sequencing of commands and the internal states of the client and server are defined by a combination of [[RFC1734]](https://go.microsoft.com/fwlink/?LinkId=90286) and [MS-NLMP](../MS-NLMP/MS-NLMP.md). Section [3.1.1](../MS-NLMP/MS-NLMP.md) completely defines how the rules specified in [RFC1734] and [MS-NLMP] govern POP3 authentication.

<a id="Section_3.1.5.1"></a>
#### 3.1.5.1 Receiving a POP3_NTLM_Supported_Response Message

The expected state is sent_authentication_request.

On receiving this message, a client MUST generate the first [**NTLM message**](#gt_ntlm-message) by calling the [**NTLM**](#gt_nt-lan-manager-ntlm) subsystem. The NTLM subsystem then generates [**NTLM NEGOTIATE_MESSAGE**](#gt_ntlm-negotiate_message) as specified in [MS-NLMP](../MS-NLMP/MS-NLMP.md). The NTLM message is then encapsulated as defined previously and sent to the server.

The state of the client is changed to inside_authentication.

<a id="Section_3.1.5.2"></a>
#### 3.1.5.2 Receiving a POP3_AUTH_NTLM_Fail_Response Message

Expected state: sent_authentication_request

On receiving this message while in this state, a client MUST abort the [**NTLM**](#gt_nt-lan-manager-ntlm) authentication attempt.

Expected state: inside_authentication

On receiving this message while in this state, the POP3 client MUST change its internal state to completed_authentication and consider that the authentication has failed. The client can then take any action it considers appropriate; this document does not mandate any specific course of action.

<a id="Section_3.1.5.3"></a>
#### 3.1.5.3 Receiving a POP3_AUTH_NTLM_Blob_Response Message

The expected state is inside_authentication.

On receiving this message, a client must de-encapsulate it to obtain the embedded [**NTLM message**](#gt_ntlm-message), and pass it to the [**NTLM**](#gt_nt-lan-manager-ntlm) subsystem for processing. The NTLM subsystem can then either report an error, or report success and return an NTLM message to be sent to the server.

<a id="Section_3.1.5.3.1"></a>
##### 3.1.5.3.1 Error from NTLM

Any [**NTLM**](#gt_nt-lan-manager-ntlm) authentication error is reported as an authentication failure and the client MUST change its internal state to completed_authentication and consider that the authentication has failed. The client can then take any action it considers appropriate; this document does not mandate any specific course of action.

Typical actions are to attempt other (nonauthentication-related) POP3 commands, or to disconnect the connection.

<a id="Section_3.1.5.3.2"></a>
##### 3.1.5.3.2 NTLM Reports Success and Returns an NTLM Message

The [**NTLM message**](#gt_ntlm-message) is encapsulated and sent to the server. No change occurs in the state of the client.

<a id="Section_3.1.5.4"></a>
#### 3.1.5.4 Receiving a POP3_AUTH_NTLM_Succeeded_Response Message

Expected state: inside_authentication.

The POP3 client MUST change its internal state to completed_authentication and consider that the authentication has succeeded. The client can then take any action it considers appropriate. This document does not mandate any specific course of action.

<a id="Section_3.1.5.5"></a>
#### 3.1.5.5 Receiving a POP3_AUTH_NTLM_Cancelled_Response Message

Expected state: inside_authentication

On receiving this message, the client MUST change its internal state to completed_authentication and consider that the authentication has failed.

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

<a id="Section_3.2.1.1"></a>
#### 3.2.1.1 POP3 State Model

![Server POP3 state model](media/image3.png)

Figure 3: Server POP3 state model

The abstract data model for the NTLM POP3 Extension has the following states:

- Start:
This is the state of the server before the POP3_AUTH_NTLM_Initiation_Command is received.

- State 2: received_authentication_request
This is the state of the server after the POP3_AUTH_NTLM_Initiation_Command is received.

- State 1: inside_authentication
This is the state entered by a server after the server sends a POP3_NTLM_Supported_Response. In this state, the server initializes the [**NTLM**](#gt_nt-lan-manager-ntlm) subsystem and repeats the following steps:

- Waits for a message from the client.
- De-encapsulates the received POP3 message-data from the other party and obtains the embedded [**NTLM message**](#gt_ntlm-message) data.
- Passes the data to the NTLM subsystem.
- Encapsulates the NTLM message returned by the NTLM subsystem into a POP3 message.
- Sends the POP3 message to the other party.
This state terminates when:

- The NTLM subsystem reports completion with either a success or failed authentication status, upon which the server sends the client a POP3_AUTH_NTLM_Succeeded_Response or POP3_AUTH_NTLM_Fail_Response, as specified in [[RFC1734]](https://go.microsoft.com/fwlink/?LinkId=90286). These are the only responses returned to the client.
- Stop: completed_authentication
This is the state of the server after it exits the inside_authentication state. The rules for exiting the inside_authentication state are defined in section [3.2.5](#Section_3.2.5). The behavior of POP3 in this state is defined in [RFC1734]—it represents the end_state of the authentication protocol.

<a id="Section_3.2.1.2"></a>
#### 3.2.1.2 NTLM Subsystem Interaction

During the inside_authentication state, the POP3 server invokes the [**NTLM**](#gt_nt-lan-manager-ntlm) subsystem as specified in [MS-NLMP](../MS-NLMP/MS-NLMP.md) section 3.1.1. The NTLM protocol is used with the following options:

- The negotiation is a [**connection-oriented NTLM**](#gt_connection-oriented-ntlm) negotiation.
- None of the flags specified in [MS-NLMP] section 3.1.1 are passed to NTLM.
The following is a description of how POP3 uses NTLM. For further details, see [MS-NLMP] section 3.1.1, which describes the data model and sequencing of NTLM packets in greater detail:

- The server, on receiving the [**NTLM NEGOTIATE_MESSAGE**](#gt_ntlm-negotiate_message) packet, passes it to the NTLM subsystem and is returned the [**NTLM CHALLENGE_MESSAGE**](#gt_ntlm-challenge_message) packet, if NTLM NEGOTIATE_MESSAGE was valid.
- Subsequently, the exchange of [**NTLM messages**](#gt_ntlm-message) goes on as defined by the NTLM protocol, with the POP3 server encapsulating the NTLM messages returned by NTLM before sending them to the client.
- When the NTLM protocol completes authentication, either successfully or unsuccessfully, the NTLM subsystem notifies POP3:
- On successful completion, the server MUST exit the inside_authentication state and enter the completed_authentication state and send the POP3_AUTH_NTLM_Succeeded_Response to the client. On receiving this message, the client MUST also transition to the completed_authentication state.
- If a failure occurs due to an incorrect password error, as described in [MS-NLMP] section 3.3.1 and 3.3.2, the server SHOULD enter the completed_authentication state and send the client a POP3_AUTH_NTLM_Fail_Response message.
- If a failure occurs on the server due to any reason other than the incorrect password error, the server enters the completed_authentication state and sends the client a POP3_AUTH_NTLM_Fail_Response message. On receiving this message, the client MUST enter the completed_authentication state.
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

The NTLM POP3 Extension is driven by a series of message exchanges between a POP3 server and a POP3 client. The rules governing the sequencing of commands and the internal states of the client and server are defined by a combination of [[RFC1734]](https://go.microsoft.com/fwlink/?LinkId=90286) and [MS-NLMP](../MS-NLMP/MS-NLMP.md). [Abstract Data Model (section 3.2.1)](../MS-NLMP/MS-NLMP.md) completely defines how the rules specified in [RFC1734] and [MS-NLMP] govern POP3 authentication.

<a id="Section_3.2.5.1"></a>
#### 3.2.5.1 Receiving a POP3_AUTH_NTLM_Initiation_Command Message

The expected state is start.

On receiving this message, the server MUST reply with the POP3_NTLM_Supported_Response, if it supports [**NTLM**](#gt_nt-lan-manager-ntlm), and change its state to the inside_authentication state.

If the server does not support NTLM, it MUST respond with the POP3_AUTH_NTLM_Fail_Response, and change its internal state to completed_authentication.

<a id="Section_3.2.5.2"></a>
#### 3.2.5.2 Receiving a POP3_AUTH_NTLM_Blob_Command Message

The expected state is inside_authentication.

On receiving this message, a server must de-encapsulate the message, obtain the embedded [**NTLM message**](#gt_ntlm-message), and pass it to the [**NTLM**](#gt_nt-lan-manager-ntlm) subsystem. The NTLM subsystem can take one of the following actions:

- Report success in processing the message and return an NTLM message to continue authentication.
- Report that authentication completed successfully.
- Report that authentication failed due to a bad user name or password, as specified in [MS-NLMP](../MS-NLMP/MS-NLMP.md).
- Report that authentication failed due to some other software error or message corruption, as specified in [MS-NLMP].
<a id="Section_3.2.5.2.1"></a>
##### 3.2.5.2.1 NTLM Returns Success, Returning an NTLM Message

The [**NTLM message**](#gt_ntlm-message) must be encapsulated and sent to the client as the POP3_AUTH_NTLM_Blob_Response message. The internal state of the POP3 server remains unchanged.

<a id="Section_3.2.5.2.2"></a>
##### 3.2.5.2.2 NTLM Returns Success, Indicating Authentication Completed Successfully

The server MUST return the POP3_AUTH_NTLM_Succeeded_Response and change its internal state to completed_authentication.

<a id="Section_3.2.5.2.3"></a>
##### 3.2.5.2.3 NTLM Returns Status, Indicating User Name or Password Was Incorrect

The server MUST return the POP3_AUTH_NTLM_Fail_Response and change its internal state to completed_authentication.

<a id="Section_3.2.5.2.4"></a>
##### 3.2.5.2.4 NTLM Returns a Failure Status, Indicating Any Other Error

If any other error occurs in the NTLM sub system, the server MUST return the POP3_AUTH_NTLM_Fail_Response and change its internal state to completed_authentication.

<a id="Section_3.2.5.3"></a>
#### 3.2.5.3 Receiving a POP3_AUTH_Cancellation_Command Message

The expected state is inside_authentication.

On receiving this message, the server MUST return the POP3_AUTH_NTLM_Cancelled_Response to the client and change its internal state to completed_authentication.

<a id="Section_3.2.6"></a>
### 3.2.6 Timer Events

None.

<a id="Section_3.2.7"></a>
### 3.2.7 Other Local Events

None.

<a id="Section_4"></a>
# 4 Protocol Examples

The following section describes operations used in a common scenario to illustrate the function of the Post Office Protocol 3 (POP3).

<a id="Section_4.1"></a>
## 4.1 POP3 Client Successfully Authenticating to a POP3 Server

This section illustrates the NTLM POP3 Extension with a scenario in which a POP3 client successfully authenticates to a POP3 server using [**NTLM**](#gt_nt-lan-manager-ntlm).

![POP3 client successfully authenticating to POP3 server](media/image4.png)

Figure 4: POP3 client successfully authenticating to POP3 server

- The client sends a POP3_AUTH_NTLM_Initiation_Command to the server. This command is specified in [[RFC1734]](https://go.microsoft.com/fwlink/?LinkId=90286) and does not carry any POP3-specific data. It is included in this example to provide a better understanding of the POP3 NTLM initiation command.
AUTH NTLM

- The server sends the POP3_NTLM_Supported_Response message, indicating that it can perform NTLM authentication.
+OK

- The client sends a POP3_AUTH_NTLM_Blob_Command message containing a base64-encoded [**NTLM NEGOTIATE_MESSAGE**](#gt_ntlm-negotiate_message).
TlRMTVNTUAABAAAAB4IIogAAAAAAAAAAAAAAAAAAAAAFASgKAAAADw==

00000000:4e 54 4c 4d 53 53 50 00 01 00 00 00 07 82 08 a2 NTLMSSP......‚.¢

00000010:00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................

00000020:05 01 28 0a 00 00 00 0f ..(.....

- The server sends a POP3_AUTH_NTLM_Blob_Response message containing a base64-encoded [**NTLM CHALLENGE_MESSAGE**](#gt_ntlm-challenge_message).
+ TlRMTVNTUAACAAAAFAAUADgAAAAFgoqinziKqGYjdlEAAAAAAAAAAGQAZABMAAAABQ

LODgAAAA9UAEUAUwBUAFMARQBSAFYARQBSAAIAFABUAEUAUwBUAFMARQBSAFYARQBSAA

EAFABUAEUAUwBUAFMARQBSAFYARQBSAAQAFABUAGUAcwB0AFMAZQByAHYAZQByAAMAFA

BUAGUAcwB0AFMAZQByAHYAZQByAAAAAAA=

00000000:4e 54 4c 4d 53 53 50 00 02 00 00 00 14 00 14 00 NTLMSSP.........

00000010:38 00 00 00 05 82 8a a2 9f 38 8a a8 66 23 76 51 8....‚Š¢Ÿ8Š¨f#vQ

00000020:00 00 00 00 00 00 00 00 64 00 64 00 4c 00 00 00 ........d.d.L...

00000030:05 02 ce 0e 00 00 00 0f 54 00 45 00 53 00 54 00 ..Î.....T.E.S.T.

00000040:53 00 45 00 52 00 56 00 45 00 52 00 02 00 14 00 S.E.R.V.E.R.....

00000050:54 00 45 00 53 00 54 00 53 00 45 00 52 00 56 00 T.E.S.T.S.E.R.V.

00000060:45 00 52 00 01 00 14 00 54 00 45 00 53 00 54 00 E.R.....T.E.S.T.

00000070:53 00 45 00 52 00 56 00 45 00 52 00 04 00 14 00 S.E.R.V.E.R.....

00000080:54 00 65 00 73 00 74 00 53 00 65 00 72 00 76 00 T.e.s.t.S.e.r.v.

00000090:65 00 72 00 03 00 14 00 54 00 65 00 73 00 74 00 e.r.....T.e.s.t.

000000a0:53 00 65 00 72 00 76 00 65 00 72 00 00 00 00 00 S.e.r.v.e.r.....

- The client sends a POP3_AUTH_NTLM_Blob_Command message containing a base64-encoded [**NTLM AUTHENTICATE_MESSAGE**](#gt_ntlm-authenticate_message).
TlRMTVNTUAADAAAAGAAYAGIAAAAYABgAegAAAAAAAABIAAAACAAIAEgAAAASABIAUAAA

AAAAAACSAAAABYKIogUBKAoAAAAPdQBzAGUAcgBOAEYALQBDAEwASQBFAE4AVABKMiQ4

djhcSgAAAAAAAAAAAAAAAAAAAAC7zUSgB0Auy98bRi6h3mwHMJfbKNtxmmo=

00000000:4e 54 4c 4d 53 53 50 00 03 00 00 00 18 00 18 00 NTLMSSP.........

00000010:62 00 00 00 18 00 18 00 7a 00 00 00 00 00 00 00 b.......z.......

00000020:48 00 00 00 08 00 08 00 48 00 00 00 12 00 12 00 H.......H.......

00000030:50 00 00 00 00 00 00 00 92 00 00 00 05 82 88 a2 P.......'....‚ˆ¢

00000040:05 01 28 0a 00 00 00 0f 75 00 73 00 65 00 72 00 ..(.....u.s.e.r.

00000050:4e 00 46 00 2d 00 43 00 4c 00 49 00 45 00 4e 00 N.F.-.C.L.I.E.N.

00000060:54 00 4a 32 24 38 76 38 5c 4a 00 00 00 00 00 00 T.J2$8v8\J......

00000070:00 00 00 00 00 00 00 00 00 00 bb cd 44 a0 07 40 ..........»ÍD .@

00000080:2e cb df 1b 46 2e a1 de 6c 07 30 97 db 28 db 71 .Ëß.F.¡Þl.0—Û(Ûq

00000090:9a 6a šj

- The server sends a POP3_AUTH_NTLM_Succeeded_Response message.
+OK User successfully logged on

<a id="Section_4.2"></a>
## 4.2 POP3 Client Unsuccessfully Authenticating to a POP3 Server

This section illustrates the NTLM POP3 Extension with a scenario in which a POP3 client attempts [**NTLM**](#gt_nt-lan-manager-ntlm) authentication to a POP3 server and the authentication fails.

![Client unsuccessfully authenticating to POP3 server](media/image5.png)

Figure 5: Client unsuccessfully authenticating to POP3 server

1-3. The same as in section [4.1](#Section_4.1).

- The server sends a POP3_AUTH_NTLM_Blob_Response message containing a base64-encoded [**NTLM CHALLENGE_MESSAGE**](#gt_ntlm-challenge_message).
+ TlRMTVNTUAACAAAAFAAUADgAAAAFgoqieUWd5ES4Bi0AAAAAAAAAAGQAZABMAA

AABQLODgAAAA9UAEUAUwBUAFMARQBSAFYARQBSAAIAFABUAEUAUwBUAFMARQBSAF

YARQBSAAEAFABUAEUAUwBUAFMARQBSAFYARQBSAAQAFABUAGUAcwB0AFMAZQByAH

YAZQByAAMAFABUAGUAcwB0AFMAZQByAHYAZQByAAAAAAA=

00000000:4e 54 4c 4d 53 53 50 00 02 00 00 00 14 00 14 00 NTLMSSP.........

00000010:38 00 00 00 05 82 8a a2 79 45 9d e4 44 b8 06 2d 8....‚Š¢yE□äD¸.-

00000020:00 00 00 00 00 00 00 00 64 00 64 00 4c 00 00 00 ........d.d.L...

00000030:05 02 ce 0e 00 00 00 0f 54 00 45 00 53 00 54 00 ..Î.....T.E.S.T.

00000040:53 00 45 00 52 00 56 00 45 00 52 00 02 00 14 00 S.E.R.V.E.R.....

00000050:54 00 45 00 53 00 54 00 53 00 45 00 52 00 56 00 T.E.S.T.S.E.R.V.

00000060:45 00 52 00 01 00 14 00 54 00 45 00 53 00 54 00 E.R.....T.E.S.T.

00000070:53 00 45 00 52 00 56 00 45 00 52 00 04 00 14 00 S.E.R.V.E.R.....

00000080:54 00 65 00 73 00 74 00 53 00 65 00 72 00 76 00 T.e.s.t.S.e.r.v.

00000090:65 00 72 00 03 00 14 00 54 00 65 00 73 00 74 00 e.r.....T.e.s.t.

000000a0:53 00 65 00 72 00 76 00 65 00 72 00 00 00 00 00 S.e.r.v.e.r.....

- The client sends a POP3_AUTH_NTLM_Blob_Command message containing a base-64-encoded [**NTLM AUTHENTICATE_MESSAGE**](#gt_ntlm-authenticate_message).
TlRMTVNTUAADAAAAGAAYAGIAAAAYABgAegAAAAAAAABIAAAACAAIAEgAAAASABIA

UAAAAAAAAACSAAAABYKIogUBKAoAAAAPdQBzAGUAcgBOAEYALQBDAEwASQBFAE4A

VAAOarJ6lZ5ZNwAAAAAAAAAAAAAAAAAAAACD9mD8jmWs4FkZe59/nNb1cF2HkL0C

GZw=

00000000:4e 54 4c 4d 53 53 50 00 03 00 00 00 18 00 18 00 NTLMSSP.........

00000010:62 00 00 00 18 00 18 00 7a 00 00 00 00 00 00 00 b.......z.......

00000020:48 00 00 00 08 00 08 00 48 00 00 00 12 00 12 00 H.......H.......

00000030:50 00 00 00 00 00 00 00 92 00 00 00 05 82 88 a2 P.......'....‚ˆ¢

00000040:05 01 28 0a 00 00 00 0f 75 00 73 00 65 00 72 00 ..(.....u.s.e.r.

00000050:4e 00 46 00 2d 00 43 00 4c 00 49 00 45 00 4e 00 N.F.-.C.L.I.E.N.

00000060:54 00 0e 6a b2 7a 95 9e 59 37 00 00 00 00 00 00 T..j²z•žY7......

00000070:00 00 00 00 00 00 00 00 00 00 83 f6 60 fc 8e 65 ..........ƒö`üŽe

00000080:ac e0 59 19 7b 9f 7f 9c d6 f5 70 5d 87 90 bd 02 ¬àY.{ŸœÖõp]‡□½.

00000090:19 9c .œ

- The server sends a POP3_AUTH_NTLM_Fail_Response message.
-ERR Command not valid

<a id="Section_5"></a>
# 5 Security

The following sections specify security considerations for implementers of the NTLM POP3 Extension.

<a id="Section_5.1"></a>
## 5.1 Security Considerations for Implementers

Implementers have to be aware of the security considerations of using [**NTLM**](#gt_nt-lan-manager-ntlm) authentication. Information about the security considerations for using NTLM authentication is specified in [MS-NLMP](../MS-NLMP/MS-NLMP.md) section 5.

<a id="Section_5.2"></a>
## 5.2 Index of Security Parameters

There are no security parameters for this protocol.

<a id="Section_6"></a>
# 6 Appendix A: Product Behavior

The information in this specification is applicable to the following Microsoft products or supplemental software. References to product versions include updates to those products.

- Windows XP operating system
- Windows Server 2003 operating system
- Windows Server 2003 R2 operating system
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
- Windows Server 2019 operating system
- Windows Server 2022 operating system
- Windows 11 operating system
- Windows Server 2025 operating system
Exceptions, if any, are noted in this section. If an update version, service pack or Knowledge Base (KB) number appears with a product name, the behavior changed in that update. The new behavior also applies to subsequent updates unless otherwise specified. If a product edition appears with the product version, behavior is different in that product edition.

Unless otherwise specified, any statement of optional behavior in this specification that is prescribed using the terms "SHOULD" or "SHOULD NOT" implies product behavior in accordance with the SHOULD or SHOULD NOT prescription. Unless otherwise specified, the term "MAY" implies that the product does not follow the prescription.

<1> Section 1.5: Windows POP3 server and POP3 client use the [**Security Support Provider Interface (SSPI)**](#gt_security-support-provider-interface-sspi) to obtain and process [**NTLM messages**](#gt_ntlm-message). For more information about the SSPI, see [[SSPI]](https://go.microsoft.com/fwlink/?LinkId=90536).

<2> Section 1.6: The POP3 Server component shipped only with Windows Server 2003 and Windows Server 2003 R2. Other versions of Windows (both client and server) that use either Outlook Express or the Windows Mail Client use the client side portion of this protocol.

<3> Section 2.2.1: In Windows, the POP3_AUTH_NTLM_Cancelled_Response is "-ERR The AUTH protocol exchange was canceled by the client".

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


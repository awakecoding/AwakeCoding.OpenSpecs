# [MS-WMLOG]: Windows Media Log Data Structure

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
  - [1.4 Relationship to Protocols and Other Structures](#Section_1.4)
  - [1.5 Applicability Statement](#Section_1.5)
  - [1.6 Versioning and Localization](#Section_1.6)
  - [1.7 Vendor-Extensible Fields](#Section_1.7)
</details>

<details>
<summary>2 Structures</summary>

- [2 Structures](#Section_2)
  - [2.1 Log Data Fields](#Section_2.1)
    - [2.1.1 audiocodec](#Section_2.1.1)
    - [2.1.2 avgbandwidth](#Section_2.1.2)
    - [2.1.3 c-buffercount](#Section_2.1.3)
    - [2.1.4 c-cpu](#Section_2.1.4)
    - [2.1.5 c-dns](#Section_2.1.5)
    - [2.1.6 c-hostexe](#Section_2.1.6)
    - [2.1.7 c-hostexever](#Section_2.1.7)
    - [2.1.8 c-ip](#Section_2.1.8)
    - [2.1.9 c-max-bandwidth](#Section_2.1.9)
    - [2.1.10 c-os](#Section_2.1.10)
    - [2.1.11 c-osversion](#Section_2.1.11)
    - [2.1.12 c-pkts-lost-client](#Section_2.1.12)
    - [2.1.13 c-pkts-lost-cont-net](#Section_2.1.13)
    - [2.1.14 c-pkts-lost-net](#Section_2.1.14)
    - [2.1.15 c-pkts-received](#Section_2.1.15)
    - [2.1.16 c-pkts-recovered-ECC](#Section_2.1.16)
    - [2.1.17 c-pkts-recovered-resent](#Section_2.1.17)
    - [2.1.18 c-playerid](#Section_2.1.18)
    - [2.1.19 c-playerlanguage](#Section_2.1.19)
    - [2.1.20 c-playerversion](#Section_2.1.20)
    - [2.1.21 c-quality](#Section_2.1.21)
    - [2.1.22 c-rate](#Section_2.1.22)
    - [2.1.23 c-resendreqs](#Section_2.1.23)
    - [2.1.24 c-starttime](#Section_2.1.24)
    - [2.1.25 c-status](#Section_2.1.25)
      - [2.1.25.1 Status Code 200 (No Error)](#Section_2.1.25.1)
      - [2.1.25.2 Status Code 210 (Client Successfully Reconnected)](#Section_2.1.25.2)
    - [2.1.26 c-totalbuffertime](#Section_2.1.26)
    - [2.1.27 c-channelURL](#Section_2.1.27)
    - [2.1.28 c-bytes](#Section_2.1.28)
    - [2.1.29 cs-media-name](#Section_2.1.29)
    - [2.1.30 cs-media-role](#Section_2.1.30)
    - [2.1.31 cs-Referer](#Section_2.1.31)
    - [2.1.32 cs-url](#Section_2.1.32)
    - [2.1.33 cs-uri-stem](#Section_2.1.33)
    - [2.1.34 cs-User-Agent](#Section_2.1.34)
    - [2.1.35 cs-user-name](#Section_2.1.35)
    - [2.1.36 date](#Section_2.1.36)
    - [2.1.37 filelength](#Section_2.1.37)
    - [2.1.38 filesize](#Section_2.1.38)
    - [2.1.39 protocol](#Section_2.1.39)
    - [2.1.40 s-content-path](#Section_2.1.40)
    - [2.1.41 s-cpu-util](#Section_2.1.41)
    - [2.1.42 s-dns](#Section_2.1.42)
    - [2.1.43 s-ip](#Section_2.1.43)
    - [2.1.44 s-pkts-sent](#Section_2.1.44)
    - [2.1.45 s-proxied](#Section_2.1.45)
    - [2.1.46 s-session-id](#Section_2.1.46)
    - [2.1.47 s-totalclients](#Section_2.1.47)
    - [2.1.48 sc-bytes](#Section_2.1.48)
    - [2.1.49 time](#Section_2.1.49)
    - [2.1.50 transport](#Section_2.1.50)
    - [2.1.51 videocodec](#Section_2.1.51)
    - [2.1.52 x-duration](#Section_2.1.52)
  - [2.2 Logging Message: W3C Syntax](#Section_2.2)
    - [2.2.1 Basic Logging Syntax](#Section_2.2.1)
    - [2.2.2 Extended Logging Syntax](#Section_2.2.2)
  - [2.3 Logging Messages Sent to Web Servers](#Section_2.3)
  - [2.4 Logging Message: XML Schema](#Section_2.4)
  - [2.5 Legacy Log](#Section_2.5)
    - [2.5.1 Common Definitions](#Section_2.5.1)
    - [2.5.2 Legacy Log in W3C Format](#Section_2.5.2)
    - [2.5.3 Legacy Log in XML Format](#Section_2.5.3)
    - [2.5.4 Legacy Log Sent to a Web Server](#Section_2.5.4)
  - [2.6 Streaming Log](#Section_2.6)
    - [2.6.1 Common Definitions](#Section_2.6.1)
    - [2.6.2 Streaming Log Sent to Windows Media Services](#Section_2.6.2)
    - [2.6.3 Streaming Log Sent to a Web Server](#Section_2.6.3)
  - [2.7 Rendering Log](#Section_2.7)
    - [2.7.1 Common Definitions](#Section_2.7.1)
    - [2.7.2 Rendering Log Sent to Windows Media Services](#Section_2.7.2)
    - [2.7.3 Rendering Log Sent to a Web Server](#Section_2.7.3)
  - [2.8 Connect-Time Log](#Section_2.8)
</details>

<details>
<summary>3 Structure Examples</summary>

- [3 Structure Examples](#Section_3)
  - [3.1 Legacy Logging Message](#Section_3.1)
  - [3.2 Defining Custom Namespaces in an XML Log](#Section_3.2)
  - [3.3 Example Streaming Log Messages](#Section_3.3)
  - [3.4 Example Rendering Log Messages](#Section_3.4)
  - [3.5 Example Connect-Time Log Message](#Section_3.5)
  - [3.6 Example Log Sent to a Web Server](#Section_3.6)
</details>

<details>
<summary>4 Security Considerations</summary>

- [4 Security Considerations](#Section_4)
</details>

<details>
<summary>5 Appendix A: Product Behavior</summary>

- [5 Appendix A: Product Behavior](#Section_5)
</details>

<details>
<summary>6 Change Tracking</summary>

- [6 Change Tracking](#Section_6)
</details>
<a id="Section_1"></a>
# 1 Introduction

This specification defines the Windows Media Log Data Structure. The Windows Media Log Data Structure is a syntax for logging messages. The logging messages specify information about how a client received multimedia content from a streaming server. For example, logging messages can specify how many packets were received and how long it took for the client to receive the content.

Sections 1.7 and 2 of this specification are normative. All other sections and examples in this specification are informative.

<a id="Section_1.1"></a>
## 1.1 Glossary

This document uses the following terms:

<a id="gt_advanced-systems-format-asf"></a>
**Advanced Systems Format (ASF)**: An extensible file format that is designed to facilitate streaming digital media data over a network. This file format is used by Windows Media.

<a id="gt_client"></a>
**client**: The entity that has created the logging message, or an entity that receives a logging message from a client. In the latter case, the client is a proxy.

<a id="gt_content"></a>
**content**: Multimedia data. [**content**](#gt_content) is always in [**ASF**](#gt_advanced-systems-format-asf), for example, a single [**ASF**](#gt_advanced-systems-format-asf) music file or a single [**ASF**](#gt_advanced-systems-format-asf) video file. Data in general. A file that an application accesses. Examples of content include web pages and documents stored on either web servers or SMB file servers.

<a id="gt_globally-unique-identifier-guid"></a>
**globally unique identifier (GUID)**: A term used interchangeably with universally unique identifier (UUID) in Microsoft protocol technical documents (TDs). Interchanging the usage of these terms does not imply or require a specific algorithm or mechanism to generate the value. Specifically, the use of this term does not imply or require that the algorithms described in [[RFC4122]](https://go.microsoft.com/fwlink/?LinkId=90460) or [[C706]](https://go.microsoft.com/fwlink/?LinkId=89824) must be used for generating the [**GUID**](#gt_globally-unique-identifier-guid). See also universally unique identifier (UUID).

<a id="gt_hypertext-transfer-protocol-http"></a>
**Hypertext Transfer Protocol (HTTP)**: An application-level protocol for distributed, collaborative, hypermedia information systems (text, graphic images, sound, video, and other multimedia files) on the World Wide Web.

<a id="gt_internet-host-name"></a>
**Internet host name**: The name of a host as defined in [[RFC1123]](https://go.microsoft.com/fwlink/?LinkId=90268) section 2.1, with the extensions described in [MS-HNDS](../MS-HNDS/MS-HNDS.md).

<a id="gt_multimedia-messaging-service-mms"></a>
**Multimedia Messaging Service (MMS)**: A communications protocol that is designed for messages containing text, images, and other multimedia content that is sent between mobile phones.

<a id="gt_playlist"></a>
**playlist**: One or more [**content**](#gt_content) items that are [**streamed**](#gt_5e55951d-74c1-45a0-9529-b42e075da1e5) sequentially.

<a id="gt_proxy"></a>
**proxy**: An entity that can receive logging messages from both a client and a proxy, or from a server that is streaming on behalf of another server.

<a id="gt_real-time-streaming-protocol-rtsp"></a>
**Real-Time Streaming Protocol (RTSP)**: A protocol used for transferring real-time multimedia data (for example, audio and video) between a server and a client, as specified in [[RFC2326]](https://go.microsoft.com/fwlink/?LinkId=90335). It is a streaming protocol; this means that [**RTSP**](#gt_real-time-streaming-protocol-rtsp) attempts to facilitate scenarios in which the multimedia data is being simultaneously transferred and rendered (that is, video is displayed and audio is played).

<a id="gt_server"></a>
**server**: An entity that transfers content to a client through streaming. A server might be able to do streaming on behalf of another server; thus, a server can also be a proxy. See [MS-WMLOG](#Section_42c620eb0d774350b070bcd1e182fe84)

<a id="gt_session"></a>
**session**: The state maintained by the server when it is [**streaming**](#gt_streaming) [**content**](#gt_content) to a client. If a server-side [**playlist**](#gt_playlist) is used, the same [**session**](#gt_session) is used for all [**content**](#gt_content) in the [**playlist**](#gt_playlist).

<a id="gt_stream"></a>
**stream**: (1) A flow of data from one host to another host, or the data that flows between two hosts.

(2) A sequence of [**ASF**](#gt_advanced-systems-format-asf) media objects ([[ASF]](https://go.microsoft.com/fwlink/?LinkId=89814) section 5.2) that can be selected individually. For example, if a movie has an English and a Spanish soundtrack, each may be encoded in the [**ASF**](#gt_advanced-systems-format-asf) file as a separate [**stream**](#gt_stream). The video data would also be a separate [**stream**](#gt_stream).

<a id="gt_streaming"></a>
**streaming**: The act of transferring [**content**](#gt_content) from a sender to a receiver.

**MAY, SHOULD, MUST, SHOULD NOT, MUST NOT:** These terms (in all caps) are used as defined in [[RFC2119]](https://go.microsoft.com/fwlink/?LinkId=90317). All statements of optional behavior use either MAY, SHOULD, or SHOULD NOT.

<a id="Section_1.2"></a>
## 1.2 References

Links to a document in the Microsoft Open Specifications library point to the correct section in the most recently published version of the referenced document. However, because individual documents in the library are not updated at the same time, the section numbers in the documents may not match. You can confirm the correct section numbering by checking the [Errata](https://go.microsoft.com/fwlink/?linkid=850906).

<a id="Section_1.2.1"></a>
### 1.2.1 Normative References

We conduct frequent surveys of the normative references to assure their continued availability. If you have any issue with finding a normative reference, please contact [dochelp@microsoft.com](mailto:dochelp@microsoft.com). We will assist you in finding the relevant information.

[ASF] Microsoft Corporation, "Advanced Systems Format Specification", December 2004, [https://download.microsoft.com/download/7/9/0/790fecaa-f64a-4a5e-a430-0bccdab3f1b4/ASF_Specification.doc](https://go.microsoft.com/fwlink/?LinkId=89814)

[MS-MSB] Microsoft Corporation, "[Media Stream Broadcast (MSB) Protocol](../MS-MSB/MS-MSB.md)".

[MS-RTSP] Microsoft Corporation, "[Real-Time Streaming Protocol (RTSP) Windows Media Extensions](../MS-RTSP/MS-RTSP.md)".

[MS-WMSP] Microsoft Corporation, "[Windows Media HTTP Streaming Protocol](../MS-WMSP/MS-WMSP.md)".

[MSDN-WMMETA] Microsoft Corporation, "Windows Media Metafiles", [http://msdn.microsoft.com/en-us/library/dd564665(VS.85).aspx](https://go.microsoft.com/fwlink/?LinkId=92758)

[RFC1945] Berners-Lee, T., Fielding, R., and Frystyk, H., "Hypertext Transfer Protocol -- HTTP/1.0", RFC 1945, May 1996, [https://www.rfc-editor.org/info/rfc1945](https://go.microsoft.com/fwlink/?LinkId=90300)

[RFC2119] Bradner, S., "Key words for use in RFCs to Indicate Requirement Levels", BCP 14, RFC 2119, March 1997, [https://www.rfc-editor.org/info/rfc2119](https://go.microsoft.com/fwlink/?LinkId=90317)

[RFC2616] Fielding, R., Gettys, J., Mogul, J., et al., "Hypertext Transfer Protocol -- HTTP/1.1", RFC 2616, June 1999, [https://www.rfc-editor.org/info/rfc2616](https://go.microsoft.com/fwlink/?LinkId=90372)

[RFC3066] Alvestrand, H., "Tags for the Identification of Languages", BCP 47, RFC 3066, January 2001, [https://www.rfc-editor.org/info/rfc3066](https://go.microsoft.com/fwlink/?LinkId=90404)

[RFC3629] Yergeau, F., "UTF-8, A Transformation Format of ISO 10646", STD 63, RFC 3629, November 2003, [https://www.rfc-editor.org/info/rfc3629](https://go.microsoft.com/fwlink/?LinkId=90439)

[RFC3986] Berners-Lee, T., Fielding, R., and Masinter, L., "Uniform Resource Identifier (URI): Generic Syntax", STD 66, RFC 3986, January 2005, [https://www.rfc-editor.org/info/rfc3986](https://go.microsoft.com/fwlink/?LinkId=90453)

[RFC4234] Crocker, D., Ed., and Overell, P., "Augmented BNF for Syntax Specifications: ABNF", RFC 4234, October 2005, [https://www.rfc-editor.org/info/rfc4234](https://go.microsoft.com/fwlink/?LinkId=90462)

<a id="Section_1.2.2"></a>
### 1.2.2 Informative References

[MS-MMSP] Microsoft Corporation, "[Microsoft Media Server (MMS) Protocol](../MS-MMSP/MS-MMSP.md)".

[W3C-EXLOG] World Wide Web Consortium, "Extended Log File Format", [http://www.w3.org/TR/WD-logfile.html](https://go.microsoft.com/fwlink/?LinkId=90561)

<a id="Section_1.3"></a>
## 1.3 Overview

The Windows Media Log Data Structure is a syntax for logging messages. The logging messages specify information about how a [**client**](#gt_client) received multimedia [**content**](#gt_content) from a [**streaming**](#gt_streaming) [**server**](#gt_server).

<a id="Section_1.4"></a>
## 1.4 Relationship to Protocols and Other Structures

The logging messages defined in this specification are used by the Windows Media HTTP Streaming Protocol described in [MS-WMSP](../MS-WMSP/MS-WMSP.md), and the Real-Time Streaming Protocol (RTSP) Windows Media Extensions, described in [MS-RTSP](../MS-RTSP/MS-RTSP.md). When those two protocols are used, the logging messages defined by this specification can be encapsulated in protocol messages specific to the [**streaming**](#gt_streaming) protocol in use. The resulting protocol messages are sent to either Windows Media Services or to a [**proxy**](#gt_proxy) compatible with the logging message syntax defined in this specification.

It is also possible to send logging messages to an HTTP web server. This is possible when using the two streaming protocols mentioned earlier and when using two other streaming protocols: the Microsoft Media Server (MMS) Protocol as described in [MS-MMSP](../MS-MMSP/MS-MMSP.md), and the Media Stream Broadcast (MSB) Protocol as described in [MS-MSB](../MS-MSB/MS-MSB.md).

<a id="Section_1.5"></a>
## 1.5 Applicability Statement

The syntax for logging messages defined by this specification is applicable to implementations of the four [**streaming**](#gt_streaming) protocols mentioned in section [1.4](#Section_1.4).

<a id="Section_1.6"></a>
## 1.6 Versioning and Localization

None.

<a id="Section_1.7"></a>
## 1.7 Vendor-Extensible Fields

Logging messages in XML format are vendor-extensible. Any logging information added by a vendor MUST be encoded using the "client-logging-data" syntax element specified in section [2.4](#Section_2.4).

<a id="Section_2"></a>
# 2 Structures

Section [2.1](#Section_2.1) defines fields that can appear in a logging message. Not all fields appear in all logging messages, however. Section [2.2](#Section_2.2) defines the syntax of World Wide Web Consortium (W3C)-based logging messages, and section [2.4](#Section_2.4) defines the syntax of XML-based logging messages.

Section [2.5](#Section_2.5) defines the legacy logging message type. Section [2.6](#Section_2.6) defines the [**Streaming**](#gt_streaming) Log message type. Section [2.7](#Section_2.7) defines the Rendering Log message type. Section [2.8](#Section_2.8) defines the Connection Log message type.

**Note** These sections can also contain variants that supersede the definitions in 2.1.

The information contained in a logging message is always specific to a particular [**session**](#gt_session). The extent of a session is defined by the streaming protocol used by the server. A Rendering Log message (as specified in section 2.7) can be sent without streaming from a server, and, in that case, a session starts when the playback of the playlist starts and stops when the playback of the playlist stops.

Following are some common Augmented Backus-Naur Form (ABNF) constructions, as specified in [[RFC4234]](https://go.microsoft.com/fwlink/?LinkId=90462), that are used throughout this specification. Any ABNF syntax rules that are not defined in [RFC4234] or in this specification are defined in [[RFC1945]](https://go.microsoft.com/fwlink/?LinkId=90300) or [[RFC2616]](https://go.microsoft.com/fwlink/?LinkId=90372).

date-year = 4DIGIT ; "19xx" and "20xx" typical

date-month = 2DIGIT ; 01 through 12

date-day = 2DIGIT ; 01 through 31

time-hour = 2DIGIT ; 00 through 24

time-min = 2DIGIT ; 00 through 59

time-sec = 2DIGIT ; 00 through 59, 60 if leap second

ip_addr = IPv4address | IPv6address

; Defined in Appendix A of RFC3986

ver_major = 1*2DIGIT

ver_minor = 1*2DIGIT ["." 1*4DIGIT "." 1*4DIGIT]

<a id="Section_2.1"></a>
## 2.1 Log Data Fields

<a id="Section_2.1.1"></a>
### 2.1.1 audiocodec

This field SHOULD specify a list of audio codecs used to decode the audio [**streams (1)**](#gt_f3529cd8-50da-4f36-aa0b-66af455edbb6) accessed by the [**client**](#gt_client). Each codec MUST be listed only once regardless of the number of streams (2) decoded by that codec.

The value for **audiocodec** MUST NOT exceed 256 characters in total length. If the codec name is not available, the field MUST be set to "-".

The syntax of the **audiocodec** field is defined as follows.

codec-name= 1*255VCHAR

audiocodec= "-" | ( codec-name *( ";" codec-name ) )

Example:

Microsoft_Audio_Codec;Generic_MP3_Codec

<a id="Section_2.1.2"></a>
### 2.1.2 avgbandwidth

This field MUST specify the average bandwidth, in bits per second, at which the client received [**content**](#gt_content) from the [**server**](#gt_server) (which can be a [**proxy**](#gt_proxy)), as measured by the [**client**](#gt_client) from the start of the current [**session**](#gt_session). This is only applicable during periods in which the server is [**streaming**](#gt_streaming) the content. Depending on the streaming protocol used, it might be possible for the session to be in a "paused" state in which streaming is suspended. The value for **avgbandwidth** does not account for the average bandwidth during such periods in which streaming is suspended.

If the notion of an average bandwidth is not applicable, for example, because the client did not receive any content from the server, then the field MUST be set to "-".

If the numerical value is specified, it MUST be an integer in the range from 0 through 4,294,967,295.

The syntax of the **avgbandwidth** field is defined as follows.

avgbandwidth= "-" | 1*10DIGIT

Example:

102585

<a id="Section_2.1.3"></a>
### 2.1.3 c-buffercount

This field MUST specify the number of times the [**client**](#gt_client) buffered while playing the [**content**](#gt_content), counted from when the client most recently started [**streaming**](#gt_streaming) the content.

The value MUST be an integer in the range from 0 through 4,294,967,295.

The syntax of the **c-buffercount** field is defined as follows.

c-buffercount= 1*10DIGIT

Example:

1

<a id="Section_2.1.4"></a>
### 2.1.4 c-cpu

This field MUST specify the type of CPU used by the [**client**](#gt_client) computer.

The syntax of the **c-cpu** field is defined as follows.

c-cpu= 1*64VCHAR

Example:

Pentium

<a id="Section_2.1.5"></a>
### 2.1.5 c-dns

This field SHOULD be set to "-". The field MAY specify the [**Internet host name**](#gt_internet-host-name) of the [**client**](#gt_client) sending the log.<1>

The syntax of the **c-dns** field is defined in [[RFC3986]](https://go.microsoft.com/fwlink/?LinkId=90453), as follows.

c-dns= "-"

| reg-name ;

Example:

wmt.test.com

<a id="Section_2.1.6"></a>
### 2.1.6 c-hostexe

This field specifies the file name of the host application executed on the [**client**](#gt_client). This field MUST NOT refer to a .dll, .ocx, or other nonexecutable file.

The syntax of the **c-hostexe** field is defined as follows.

c-hostexe= *255VCHAR

Example:

wmplayer.exe

<a id="Section_2.1.7"></a>
### 2.1.7 c-hostexever

This field MUST specify the version number of the host application running on the [**client**](#gt_client).

The syntax of the **c-hostexever** field is defined as follows.

c-hostexever= ver_major "." ver_minor

Example:

6.2.5.323

<a id="Section_2.1.8"></a>
### 2.1.8 c-ip

When a [**client**](#gt_client) creates a logging message, it SHOULD specify the **c-ip** field as "-" but MAY specify the IP address of the client.

If a [**proxy**](#gt_proxy) is forwarding a logging message on behalf of a client, the **c-ip** field MUST specify the IP address of the client. The proxy MUST replace the value of the **c-ip** field that was specified by the client with the IP address of the client (as known to the proxy).

The syntax of the **c-ip** field is defined as follows.

c-ip = "-" | ip_addr

Example:

157.100.100.100

Example:

3ffe:2900:d005:f28b:0000:5efe:157.55.145.142

<a id="Section_2.1.9"></a>
### 2.1.9 c-max-bandwidth

This field MUST be set to "-".

The syntax of the **c-max-bandwidth** field is defined as follows.

c-max-bandwidth ="-"

Example:

-

<a id="Section_2.1.10"></a>
### 2.1.10 c-os

This field MUST specify the [**client's**](#gt_60e0e1fa-66fe-41e1-b5e3-ceab97e53506) operating system.<2>

The syntax of the **c-os** field is defined as follows.

OSname= "Windows_98" | "Windows_ME" | "Windows_NT"

| "Windows_2000" | "Windows_XP" | "Windows"

| "Windows_Server 2003"

c-os = OSname | 1*64VCHAR

Example:

Windows

<a id="Section_2.1.11"></a>
### 2.1.11 c-osversion

This field MUST specify the version number of the [**client's**](#gt_60e0e1fa-66fe-41e1-b5e3-ceab97e53506) operating system.

The syntax of the **c-osversion** field is defined as follows.

c-osversion= ver_major "." ver_minor

Example:

6.0.0.6000

<a id="Section_2.1.12"></a>
### 2.1.12 c-pkts-lost-client

This field MUST specify the number of [**Advanced Systems Format (ASF)**](#gt_advanced-systems-format-asf) data packets ([[ASF]](https://go.microsoft.com/fwlink/?LinkId=89814) section 5.2) lost during transmission from [**server**](#gt_server) to [**client**](#gt_client) and not recovered at the client layer through error correction or at the network layer by using the User Datagram Protocol (UDP) resends, counted from when the client most recently started [**streaming**](#gt_streaming) the [**content**](#gt_content).

The value MUST be an integer in the range from 0 through 4,294,967,295.

The syntax of the **c-pkts-lost-client** field is defined as follows.

c-pkts-lost-client= 1*10DIGIT

Example:

5

<a id="Section_2.1.13"></a>
### 2.1.13 c-pkts-lost-cont-net

This field MUST specify the largest number of ASF data packets that were lost as a consecutive span during transmission from [**server**](#gt_server) to [**client**](#gt_client) and counted from when the client most recently started [**streaming**](#gt_streaming) the [**content**](#gt_content).

For example, if data packets numbered 1, 4, and 8 are received, and packets 2, 3, 5, 6 and 7 are lost, then packets 2 and 3 constitute a span of two lost packets, and packets 5, 6 and 7 constitute a span of three lost packets. In this example, the **c-pkts-lost-cont-net** field would be set to 3—the size of the largest span.

The value MUST be an integer in the range from 0 through 4,294,967,295.

The syntax of the **c-pkts-lost-cont-net** field is defined as follows.

c-pkts-lost-cont-net= 1*10DIGIT

Example:

2

<a id="Section_2.1.14"></a>
### 2.1.14 c-pkts-lost-net

This field MUST specify the number of ASF data packets lost on the network layer, counted from when the [**client**](#gt_client) most recently started [**streaming**](#gt_streaming) the [**content**](#gt_content). Packets lost at the network layer can be recovered if the client re-creates them by using forward error correction.

The numerical difference between the value of **c-pkts-lost-net** and the value of [c-pkts-lost-client](#Section_2.1.12) MUST be equal to the value of [c-pkts-recovered-ECC](#Section_2.1.16).

The value MUST be an integer in the range from 0 through 4,294,967,295.

The syntax of the **c-pkts-lost-net** field is defined as follows.

c-pkts-lost-net= 1*10DIGIT

Example:

2

<a id="Section_2.1.15"></a>
### 2.1.15 c-pkts-received

This field MUST specify the number of ASF data packets that have been correctly received by the [**client**](#gt_client) on the first attempt counted from when the client most recently started [**streaming**](#gt_streaming) the [**content**](#gt_content). (ASF data packets that were received through error correction code (ECC) recovery or UDP resends are not included in the **c-pkts-received** field.)

The value MUST be an integer in the range from 0 through 4,294,967,295.

The syntax of the **c-pkts-received** field is defined as follows.

c-pkts-received= 1*10DIGIT

Example:

523

<a id="Section_2.1.16"></a>
### 2.1.16 c-pkts-recovered-ECC

This field MUST specify the number of ASF data packets that were lost at the network layer but were subsequently recovered, counted from when the [**client**](#gt_client) most recently started [**streaming**](#gt_streaming) the [**content**](#gt_content). The value of this field MUST be equal to the numerical difference between the value of [c-pkts-lost-net](#Section_2.1.14) and the value of [c-pkts-lost-client](#Section_2.1.12).

The value MUST be an integer in the range from 0 through 4,294,967,295.

The syntax of the **c-pkts-recovered-ECC** field is defined as follows.

c-pkts-recovered-ECC= 1*10DIGIT

Example:

1

<a id="Section_2.1.17"></a>
### 2.1.17 c-pkts-recovered-resent

This field MUST specify the number of ASF data packets that were recovered either because they were resent through UDP or because they were received out of order.

The value MUST be an integer in the range from 0 through 4,294,967,295.

The syntax of the **c-pkts-recovered-resent** field is defined as follows.

c-pkts-recovered-resent= 1*10DIGIT

Example:

5

<a id="Section_2.1.18"></a>
### 2.1.18 c-playerid

This field specifies a unique identifier for the client application that originated the request. The identifier MUST be a [**GUID**](#gt_globally-unique-identifier-guid). The GUID is expressed in registry format and is not enclosed in quotation marks, as shown by the following ABNF syntax.

If the [**client**](#gt_client) is configured to remain anonymous (that is, not send private information), the client MUST set the **c-playerid** field as indicated by the ABNF syntax for the playid_priv syntax element as shown in the following code example. Otherwise, **c-playerid** MUST use the syntax for playid_pub as shown in the following code example. The client MUST choose a value for playid_pub randomly, and the same value MUST be used for playid_pub in all logging messages created by the client application, regardless of which content is streamed.

Furthermore, multiple instances, or incarnations, of the client application MUST use the same value for the playid_pub syntax element. However, if the client application is shared by multiple users, and it is possible to determine a user identity or account name of the user launching the client application, then the value for playid_pub SHOULD be different for each user identity or account name. For example, multi-user operating systems typically have separate accounts with a distinct account name for each user, but cellular telephones do not.

If the client uses the playid_priv syntax element, the client SHOULD choose the value for the playid syntax element randomly; however, the client MUST use the same playid value for all logging messages sent for the same [**session**](#gt_session).

The syntax of the **c-playerid** field is defined as follows.

playid= 12HEXDIG

playid_pub = "{" 8HEXDIG "-" 4HEXDIG "-" 4HEXDIG "-"

4HEXDIG "-" 12HEXDIG "}"

playid_priv= "{3300AD50-2C39-46c0-AE0A-" playid "}"

c-playerid= playid_pub / playid_priv

Example:

{c579d042-cecc-11d1-bb31-00a0c9603954}

Example (client is anonymous):

{3300AD50-2C39-46c0-AE0A-70b64f321a80}

<a id="Section_2.1.19"></a>
### 2.1.19 c-playerlanguage

This field MUST specify the language-country code of the [**client**](#gt_client).

The syntax of the **c-playerlanguage** field is defined in section 2.1 of [[RFC3066]](https://go.microsoft.com/fwlink/?LinkId=90404), as follows.

c-playerlanguage= Language-Tag

;

Example:

en-US

<a id="Section_2.1.20"></a>
### 2.1.20 c-playerversion

This field MUST specify the version number of the [**client**](#gt_client).

The syntax of the **c-playerversion** field is defined as follows.

c-playerversion = ver_major "." ver_minor

Example:

7.0.1024

<a id="Section_2.1.21"></a>
### 2.1.21 c-quality

This field MUST specify the percentage of packets that were received by the [**client**](#gt_client), counted from when the client most recently started [**streaming**](#gt_streaming) the [**content**](#gt_content).

If **cPacketsRendered** represents all packets received by the client including packets recovered by ECC and UDP resend such that:

cPacketsRendered = c-pkts-received + c-pkts-recovered-ECC + c-pkts-

recovered-resent

then the value for the **c-quality** field MUST be calculated as follows.

[cPacketsRendered / (cPacketsRendered + c-pkts-lost-client)] * 100

If the denominator in the above equation evaluates to 0, **c-quality** MUST be specified as 100.

The syntax of the **c-quality** field is defined as follows.

c-quality = 1*2DIGIT / "100"

Example:

89

<a id="Section_2.1.22"></a>
### 2.1.22 c-rate

This field MUST specify the rate of [**streaming**](#gt_streaming) or playback as a multiplier of the normal streaming or playback rate.

For example, a value of 1 specifies streaming or playback at the normal rate, while a value of -5 indicates rewind at a speed five times faster than real-time, and a value of 5 indicates fast-forward at a rate five times faster than real-time.

For Legacy and Streaming Logs, **c-rate** MUST be the streaming rate. For Rendering logs, **c-rate** MUST be the rendering (playback) rate.

The value of **c-rate** MUST reflect the rate that was in effect at the beginning of the period covered by the logging message because streaming or playback might already have ended by the time the logging message is generated.

The syntax of the **c-rate** field is defined as follows.

c-rate= [ "-" ] 1*2DIGIT

Example:

1

<a id="Section_2.1.23"></a>
### 2.1.23 c-resendreqs

This field MUST specify the number of requests made by the [**client**](#gt_client) to receive lost ASF data packets, counted from when the client most recently started streaming the content. If the client is not using UDP resend, the value of this field MUST be "-".

The value MUST be an integer in the range from 0 through 4,294,967,295.

The syntax of the **c-resendreqs** field is defined as follows.

c-resendreqs= "-"/ 1*10DIGIT

Example:

5

<a id="Section_2.1.24"></a>
### 2.1.24 c-starttime

This field MUST specify the time offset, in seconds, in the [**content**](#gt_content) from which the [**client**](#gt_client) started to render content. This represents the presentation time of the ASF data packets that the client began rendering. For live broadcasts, the client MUST set this field to zero.

The value MUST be an integer in the range from 0 through 4,294,967,295.

The syntax of the **c-starttime** field is defined as follows.

c-starttime= 1*10DIGIT

Example:

39

<a id="Section_2.1.25"></a>
### 2.1.25 c-status

This field MUST specify a numerical code that indicates the status of the [**client**](#gt_client) that creates the logging message.

The syntax of the **c-status** field is defined as follows:

c-status= "200" / "210"

Example:

200

<a id="Section_2.1.25.1"></a>
#### 2.1.25.1 Status Code 200 (No Error)

This code indicates that the [**client**](#gt_client) successfully [**streamed**](#gt_5e55951d-74c1-45a0-9529-b42e075da1e5) and submitted the log.

<a id="Section_2.1.25.2"></a>
#### 2.1.25.2 Status Code 210 (Client Successfully Reconnected)

This code indicates that the [**client**](#gt_client) disconnected and then reconnected to the server.<3>

<a id="Section_2.1.26"></a>
### 2.1.26 c-totalbuffertime

This field MUST specify the total time, in seconds, that the [**client**](#gt_client) spent buffering the ASF data packets in the [**content**](#gt_content), counted from when the client most recently started [**streaming**](#gt_streaming) the content. If the client buffers the content more than once before a log is generated, **c-totalbuffertime** MUST be equal to the total amount of time that the client spent buffering the ASF data packets.

The value MUST be an integer in the range from 0 through 4,294,967,295.

The syntax of the **c-totalbuffertime** field is defined as follows.

c-totalbuffertime= 1*10DIGIT

Example:

20

<a id="Section_2.1.27"></a>
### 2.1.27 c-channelURL

This field MUST specify the URL to the multicast station (.nsc) file, as specified in [MS-MSB](../MS-MSB/MS-MSB.md), if such a file was used by the [**client**](#gt_client). Whenever an .nsc file is used, this field MUST be specified, even if the MSB Protocol was not used to [**stream (2)**](#gt_f3529cd8-50da-4f36-aa0b-66af455edbb6) [**content**](#gt_content).

The syntax of the **c-channelURL** field is defined in section 4.1 of [[RFC3986]](https://go.microsoft.com/fwlink/?LinkId=90453), as follows.

c-channelURL = "-"

/ URI-reference ;

Example:

http://server/channel.nsc

<a id="Section_2.1.28"></a>
### 2.1.28 c-bytes

This field MUST specify the number of bytes received by the [**client**](#gt_client) from the [**server**](#gt_server), counted from when the client most recently started [**streaming**](#gt_streaming) the [**content**](#gt_content).

The value for the **c-bytes** field MUST NOT include TCP/IP or other overhead added by the network stack. For example, higher-level protocols such as [**HTTP**](#gt_hypertext-transfer-protocol-http), [**RTSP**](#gt_real-time-streaming-protocol-rtsp), and [**MMS**](#gt_multimedia-messaging-service-mms) can each introduce differing amounts of overhead, resulting in different values for the same content.

The value MUST be an integer in the range from 0 through 4,294,967,295.

The syntax of the **c-bytes** field is defined as follows.

c-bytes= 1*10DIGIT

Example:

28000

<a id="Section_2.1.29"></a>
### 2.1.29 cs-media-name

The purpose of this field is to specify the file name of the [**content**](#gt_content) or server-side [**playlist**](#gt_playlist) entry that was [**streamed**](#gt_5e55951d-74c1-45a0-9529-b42e075da1e5) or played by the [**client**](#gt_client). For Legacy and Streaming Logs, the value of this field MUST be the content or server-side playlist entry that was streamed. For Rendering Logs, it MUST be the content or server-side playlist entry that was rendered (played).

If the [**server**](#gt_server) provided a Content Description, as specified in [MS-WMSP](../MS-WMSP/MS-WMSP.md), and the Content Description contains an entry named WMS_CONTENT_DESCRIPTION_PLAYLIST_ENTRY_URL, the value of the **cs-media-name** field MUST be equal to the value of the WMS_CONTENT_DESCRIPTION_PLAYLIST_ENTRY_URL entry.

Otherwise, if the client is using an Active Stream Redirector (.asx) file (for more information, see [[MSDN-WMMETA]](https://go.microsoft.com/fwlink/?LinkId=92758)), and the file specifies a logging parameter called "cs-media-name", then the value of the **cs-media-name** field in the logging message MUST be equal to the value of the "cs-media-name" logging parameter in the .asx file. See section [3.2](#Section_3.2) for an example of how this parameter is specified in an .asx file.

If none of the preceding applies, **cs-media-name** MUST be specified as "-".

The syntax of the **cs-media-name** field is defined as follows.

cs-media-name= *VCHAR

Examples:

C:\wmpub\wmroot\MyAd2.asf

<a id="Section_2.1.30"></a>
### 2.1.30 cs-media-role

The purpose of this field is to specify a value that can be associated with a server-side [**playlist**](#gt_playlist) entry to signify the role of the playlist entry. For Legacy and Streaming Logs, the value of this field MUST be the role of the server-side playlist entry that was [**streamed**](#gt_5e55951d-74c1-45a0-9529-b42e075da1e5). For Rendering Logs, it MUST be the role of the server-side playlist entry that was rendered (played).

If the [**server**](#gt_server) provided a Content Description as specified in [MS-WMSP](../MS-WMSP/MS-WMSP.md), and the Content Description contains an entry named WMS_CONTENT_DESCRIPTION_ROLE, the value of the **cs-media-role** field MUST be equal to the value of the WMS_CONTENT_DESCRIPTION_ROLE entry.

Otherwise, if the [**client**](#gt_client) is using an Active Stream Redirector (.asx) file as specified in [[MSDN-WMMETA]](https://go.microsoft.com/fwlink/?LinkId=92758), and the file specifies a logging parameter called "cs-media-role", the value of the **cs-media-role** field in the logging message MUST be equal to the value of the "cs-media-role" logging parameter in the .asx file. See section [3.2](#Section_3.2) for an example of how this parameter is specified in an .asx file.

If none of the preceding applies, the **cs-media-role** MUST be specified as "-".

The syntax of the **cs-media-role** field is defined as follows.

cs-media-role= *VCHAR

Example:

ADVERTISEMENT

<a id="Section_2.1.31"></a>
### 2.1.31 cs-Referer

This field SHOULD specify the URL to the web page that the client software application is embedded within, except if the client software application was not embedded in a web page. If the client software application is not embedded in a web page, but an .asx file (for more information, see [[MSDN-WMMETA]](https://go.microsoft.com/fwlink/?LinkId=92758)) was obtained from a web page, this field SHOULD be set to the URL to that web page.

If none of the preceding applies, this field MUST be set to "-".

The syntax of the **cs-Referer** field is defined in section 4.1 of [[RFC3986]](https://go.microsoft.com/fwlink/?LinkId=90453), as follows.

cs-Referer= "-"

/ URI-reference ;

Examples:

http://www.adventure-works.com/default.htm

<a id="Section_2.1.32"></a>
### 2.1.32 cs-url

This field MUST specify the URL for the [**streaming**](#gt_streaming) [**content**](#gt_content) originally requested by the [**client**](#gt_client).

Note that the value of this field can be different from the URL actually used if the [**server**](#gt_server) redirected the client to a different URL, or if the client decided to use a streaming protocol that is different from the one indicated by the URL scheme of the original URL.

When the MSB Protocol specified in [MS-MSB](../MS-MSB/MS-MSB.md) is used, the "asfm" MUST be used as the URL scheme in the **cs-url** field.

The syntax of the **cs-url** field is defined in section 4.1 of [[RFC3986]](https://go.microsoft.com/fwlink/?LinkId=90453), as follows.

cs-url= URI-reference;

Example 1:

mms://www.adventure-works.com/some/content.asf

Example 2:

asfm://239.1.2.3:9000

<a id="Section_2.1.33"></a>
### 2.1.33 cs-uri-stem

This field MUST specify the URL actually used by the [**client**](#gt_client). Any query strings MUST be excluded from the URL. (This means that the value of the **cs-uri-stem** field is equal to the URL actually used by the client, truncated at the first "?" character.)

Note that the value of this field can be different from the URL originally requested by the client if the [**server**](#gt_server) redirected the client to a different URL, or if the client decided to use a [**streaming**](#gt_streaming) protocol that is different from the one indicated by the URL scheme of the original URL.

When the MSB Protocol is used, the "asfm" MUST be used as the URL scheme in the **cs-uri-stem** field, as specified in [MS-MSB](../MS-MSB/MS-MSB.md).

The syntax of the **cs-uri-stem** field is defined in section 4.1 of [[RFC3986]](https://go.microsoft.com/fwlink/?LinkId=90453), as follows.

cs-uri-stem= URI-reference;

Example:

rtsp://server/test/sample.asf

<a id="Section_2.1.34"></a>
### 2.1.34 cs-User-Agent

The purpose of this field is to specify information regarding the client application that is sending the logging message.

The **cs-User-Agent** field SHOULD be set to the same value that Windows Internet Explorer specifies on the User-Agent HTTP protocol header. The field MAY be set differently as long as it adheres to the ABNF syntax as shown in the following code example.

If a logging message is forwarded by a [**proxy**](#gt_proxy), the **cs-User-Agent** field MUST begin with the string "_via_". The original value specified by the [**client**](#gt_client) (which can be another proxy) on the **cs-User-Agent** field SHOULD be discarded. The proxy SHOULD include a product token on the **cs-User-Agent** field that specifies the brand and version of the proxy.

The syntax of the **cs-User-Agent** field is defined as follows.

cs-User-Agent= [ "_via_HTTP/1.0_" ]

1*( product; [RFC2616] section 3.8

| comment ); [RFC2616] section 2.2

Example 1: media player embedded in Internet Explorer 6 on Windows XP operating system Service Pack 2 (SP2):

Mozilla/4.0_(compatible;_MSIE_6.0;_Windows_NT_5.1;_SV1)

Example 2: application based on Windows Media Format 9 Series SDK:

Application/2.3 (WMFSDK/9.0.1234)

Example 3: proxy:

_via_HTTP/1.0_WMCacheProxy/9.00.00.1234

<a id="Section_2.1.35"></a>
### 2.1.35 cs-user-name

This field MUST be set to "-".

The syntax of the **cs-user-name** field is defined as follows.

cs-user-name= "-"

Example:

-

<a id="Section_2.1.36"></a>
### 2.1.36 date

This field MUST specify the current date on the [**client**](#gt_client) when the log message is created. The time MUST be specified in UTC.

The syntax of the **date** field is defined as follows.

date= date-year "-" date-month "-" date-day

Example:

1997-10-09

<a id="Section_2.1.37"></a>
### 2.1.37 filelength

This field MUST specify the length of the [**ASF**](#gt_advanced-systems-format-asf) file, in seconds. For a live broadcast [**stream (2)**](#gt_f3529cd8-50da-4f36-aa0b-66af455edbb6), the value for **filelength** is undefined and MUST be set to zero.

The value MUST be an integer in the range from 0 through 4,294,967,295.

The syntax of the **filelength** field is defined as follows.

filelength= 1*10DIGIT

Example:

60

<a id="Section_2.1.38"></a>
### 2.1.38 filesize

This field MUST specify the size of the [**ASF**](#gt_advanced-systems-format-asf) file, in bytes. For a live broadcast [**stream (2)**](#gt_f3529cd8-50da-4f36-aa0b-66af455edbb6), the value for the **filesize** field is undefined and MUST be set to zero.

The value MUST be an integer in the range from 0 through 4,294,967,295.

The syntax of the **filesize** field is defined as follows.

filesize= 1*10DIGIT

Example:

86000

<a id="Section_2.1.39"></a>
### 2.1.39 protocol

This field MUST specify the protocol used to [**stream (2)**](#gt_f3529cd8-50da-4f36-aa0b-66af455edbb6) [**content**](#gt_content) to the [**client**](#gt_client).

If the Windows Media HTTP Streaming Media Protocol was used, the value of the **protocol** field MUST be "http", as specified in [MS-WMSP](../MS-WMSP/MS-WMSP.md).

If the RTSP Windows Media Extensions was used, the value of the **protocol** field MUST be "rtsp", as specified in [MS-RTSP](../MS-RTSP/MS-RTSP.md).

If the MSB Protocol was used, the value of the **protocol** field MUST be "asfm", as specified in [MS-MSB](../MS-MSB/MS-MSB.md).

**Note** The value for **protocol** can be different from the URL moniker used in the stream request.

The syntax of the **protocol** field is defined as follows.

protocol= "http" / "rtsp" / "asfm"

Example:

http

<a id="Section_2.1.40"></a>
### 2.1.40 s-content-path

This field MUST be set to "-".

The syntax of the **s-content-path** field is defined as follows.

s-content-path = "-"

Example:

-

<a id="Section_2.1.41"></a>
### 2.1.41 s-cpu-util

When a client creates a logging message, it MUST specify the **s-cpu-util** field as "-".

If a [**proxy**](#gt_proxy) is forwarding the logging message on behalf of a [**client**](#gt_client) (which can be another proxy), the proxy MUST replace the value of the **s-cpu-util** field that was specified by the client with the proxy's current CPU load, in percentage, at the time of forwarding the logging message. If the proxy uses symmetric multiprocessing, the CPU load value MUST be calculated as the average for all processors.

When a numerical value is specified, the value MUST be an integer in the range from 0 through 100.

The syntax of the **s-cpu-util** field is defined as follows.

s-cpu-util = "-" | 1*2DIGIT | "100"

Example:

40

<a id="Section_2.1.42"></a>
### 2.1.42 s-dns

This field SHOULD specify the [**Internet host name**](#gt_internet-host-name) of the [**proxy**](#gt_proxy) if a proxy is forwarding the logging message on behalf of a [**client**](#gt_client) (which can be another proxy). The proxy MUST replace the value of the **s-dns** field that was specified by the client with its own Internet host name or with "-" if the Internet host name cannot be determined.

When a client creates a logging message, it SHOULD specify the **s-dns** field as "-" but MAY specify the Internet host name of the [**server**](#gt_server) that the client [**streamed**](#gt_5e55951d-74c1-45a0-9529-b42e075da1e5) the [**content**](#gt_content) from.

The syntax of the **s-dns** field is defined in [[RFC3986]](https://go.microsoft.com/fwlink/?LinkId=90453), as follows.

s-dns= "-"

| reg-name ;

Example:

wmt.adventure-works.com

<a id="Section_2.1.43"></a>
### 2.1.43 s-ip

For Legacy and Streaming Logs, this field MUST specify the IP address of the [**server**](#gt_server) that the [**client**](#gt_client) [**streamed**](#gt_5e55951d-74c1-45a0-9529-b42e075da1e5) the [**content**](#gt_content) from.

For Rendering Logs, the field MUST specify the IP address of the [**proxy**](#gt_proxy) if a proxy is forwarding the logging message on behalf of a client. The proxy MUST replace the value of the **s-ip** field that was specified by the client (which can be another proxy) with the IP address used by the proxy when forwarding the Rendering Log to the server (which can be another proxy).

When a client creates a rendering log, it SHOULD specify the **s-ip** field as "-" but can specify the IP address of the server that the client streamed the content from.

The syntax of the **s-ip** field is defined as follows.

s-ip = "-" | ip_addr

Example:

155.12.1.234

<a id="Section_2.1.44"></a>
### 2.1.44 s-pkts-sent

This field MUST be set to "-".

The syntax of the **s-pkts-sent** field is defined as follows.

s-pkts-sent= "-"

Example:

-

<a id="Section_2.1.45"></a>
### 2.1.45 s-proxied

This field MUST be set to "1" in a logging message that is being forwarded by a [**proxy**](#gt_proxy). The [**client**](#gt_client) that creates the logging message MUST set the field to "0", and the proxy MUST change the value to "1" when it forwards the logging message.

The syntax of the **s-proxied** field is defined as follows.

s-proxied= "0" / "1"

Example:

1

<a id="Section_2.1.46"></a>
### 2.1.46 s-session-id

This field MUST be set to "-".

The syntax of the **s-session-id** field is defined as follows.

s-session-id= "-"

Example:

-

<a id="Section_2.1.47"></a>
### 2.1.47 s-totalclients

When a [**client**](#gt_client) creates a logging message, it MUST specify the **s-totalclients** field as "-".

If a [**proxy**](#gt_proxy) is forwarding the logging message on behalf of a client (which can be another proxy), the proxy MUST replace the value of the **s-totalclients** field that was specified by the client with the total number of clients connected to the proxy server (for all target servers combined).

When a numerical value is specified, the value MUST be an integer in the range from 0 through 4,294,967,295.

The syntax of the **s-totalclients** field is defined as follows.

s-totalclients = "-" | 1*10DIGIT

Example:

201

<a id="Section_2.1.48"></a>
### 2.1.48 sc-bytes

This field MUST be set to "-".

The syntax of the **sc-bytes** field is defined as follows.

sc-bytes= "-"

Example:

-

<a id="Section_2.1.49"></a>
### 2.1.49 time

This field MUST specify the current time on the [**client**](#gt_client) when the log message is created. The time MUST be specified in UTC.

The syntax of the **time** field is defined as follows.

time= time-hour ":" time-min ":" time-sec

Example:

15:30:30

<a id="Section_2.1.50"></a>
### 2.1.50 transport

This field MUST specify the transport protocol used to receive the ASF data packets.

The syntax of the **transport** field is defined as follows.

transport= "UDP" | "TCP"

Example:

UDP

<a id="Section_2.1.51"></a>
### 2.1.51 videocodec

This field SHOULD specify a list of video codecs that are used to decode the video [**streams (2)**](#gt_f3529cd8-50da-4f36-aa0b-66af455edbb6) accessed by the client. Each codec MUST be listed only once, regardless of the number of streams decoded by that codec.

The value for **videocodec** MUST NOT exceed 256 characters in total length. If the codec name is not available, the field MUST be set to "-".

The syntax of the **videocodec** field is defined as follows.

codec-name= 1*255VCHAR

videocodec= "-" | ( codec-name *( ";" codec-name ) )

Example:

Microsoft_MPEG-4_Video_Codec_V2

<a id="Section_2.1.52"></a>
### 2.1.52 x-duration

For Legacy and Rendering Log messages, this field MUST specify how much of the [**content**](#gt_content) has been rendered (played) to the end user, specified in seconds. Time spent buffering data MUST NOT be included in this value.

Playback at non-normal play speed does not affect the amount of content rendered, when expressed in time units. For example, if the [**client**](#gt_client) was rewinding the content, the **x-duration** value can be computed as the absolute value of the difference between the starting presentation time and ending presentation time.

For Streaming Log messages, the **x-duration** field MUST specify the time it took to receive the content, in seconds.

Fractional time amounts MUST be rounded to the nearest larger integer value.

The value MUST be an integer in the range from 0 through 4,294,967,295.

The syntax of the **x-duration** field is defined as follows.

x-duration= 1*10DIGIT

Example:

31

<a id="Section_2.2"></a>
## 2.2 Logging Message: W3C Syntax

A W3C format logging message consists of the values of various fields, each value separated from the next by a single space character. Logging messages that adhere to this syntax are said to use the W3C format because the syntax is conformant with the syntax for logging entries in the Extended Log File Format (for more information, see [[W3C-EXLOG]](https://go.microsoft.com/fwlink/?LinkId=90561)), which is defined by W3C.

Section [2.2.1](#Section_2.2.1) specifies the W3C format syntax used in most logging messages. Section [2.2.2](#Section_2.2.2) specifies the W3C format syntax used in certain Rendering Log messages.

The sections mentioned earlier define the ordering of the fields in the W3C format syntax but not how the values of the fields are assigned. The rules governing the values of the individual fields depend on the logging message in which the W3C format syntax is used. For example, the [s-ip](#Section_2.1.43) field is used as defined in section 2.1.43 for some logging messages, while other logging messages provide an alternate definition of the **s-ip** field.

All W3C format syntax MUST use the UTF-8 character set as specified in [[RFC3629]](https://go.microsoft.com/fwlink/?LinkId=90439). In any fields that specify a URL, such as [cs-url](#Section_2.1.32), the URL MUST be encoded using percent-encoding, as specified in [[RFC3986]](https://go.microsoft.com/fwlink/?LinkId=90453) section 2.1.

A single dash character (which is represented by U+002D and by "-" in ABNF syntax) MUST be used to indicate that the value is empty—that is, it is either not available or not applicable.

All spaces embedded within a field value MUST be replaced by an underscore character (which is represented by U+005F and by "_" in ABNF syntax). For example, "MPEG Layer-3" would be transformed into "MPEG_Layer-3" in a W3C-format logging message.

**Note** Transformations defined in this section are not necessarily reversible. Methods for parsing, analyzing, or extracting information from logging messages are implementation-specific and are outside the scope of this specification.

<a id="Section_2.2.1"></a>
### 2.2.1 Basic Logging Syntax

Most logging messages contain logging information in W3C format, adhering to the syntax specified as follows. The logging information consists of either 44 or 47 fields.

log_data44 = c-ip SP date SP time SP c-dns SP cs-uri-stem SP c-starttime SP

x-duration SP c-rate SP c-status SP c-playerid SP

c-playerversion SP c-playerlanguage SP cs-User-Agent SP

cs-Referer SP c-hostexe SP c-hostexever SP c-os SP c-osversion SP

c-cpu SP filelength SP filesize SP avgbandwidth SP protocol SP

transport SP audiocodec SP videocodec SP c-channelURL SP sc-bytes SP

c-bytes SP s-pkts-sent SP c-pkts-received SP c-pkts-lost-client SP

c-pkts-lost-net SP c-pkts-lost-cont-net SP c-resendreqs SP

c-pkts-recovered-ECC SP c-pkts-recovered-resent SP c-buffercount SP

c-totalbuffertime SP c-quality SP s-ip SP s-dns SP

s-totalclients SP s-cpu-util

[ SP cs-url SP cs-media-name SP cs-media-role ]

<a id="Section_2.2.2"></a>
### 2.2.2 Extended Logging Syntax

Certain types of "rendering" log messages (section [2.7](#Section_2.7)) contain logging information in the W3C format defined as follows. This logging information consists of 52 fields.

log_data52 = c-ip SP date SP time SP c-dns SP cs-uri-stem SP c-starttime SP

x-duration SP c-rate SP c-status SP c-playerid SP

c-playerversion SP c-playerlanguage SP cs-User-Agent SP

cs-Referer SP c-hostexe SP c-hostexever SP c-os SP c-osversion SP

c-cpu SP filelength SP filesize SP avgbandwidth SP protocol SP

transport SP audiocodec SP videocodec SP c-channelURL SP sc-bytes SP

c-bytes SP s-pkts-sent SP c-pkts-received SP c-pkts-lost-client SP

c-pkts-lost-net SP c-pkts-lost-cont-net SP c-resendreqs SP

c-pkts-recovered-ECC SP c-pkts-recovered-resent SP c-buffercount SP

c-totalbuffertime SP c-quality SP s-ip SP s-dns SP

s-totalclients SP s-cpu-util SP cs-user-name SP s-session-id SP

s-content-path SP cs-url SP cs-media-name SP c-max-bandwidth SP

cs-media-role SP s-proxied

<a id="Section_2.3"></a>
## 2.3 Logging Messages Sent to Web Servers

Most of the logging messages defined in this specification can be sent to a HTTP web server. The URL for the HTTP web server for which logging messages are submitted can be specified in an .asx file (for more information, see [[MSDN-WMMETA]](https://go.microsoft.com/fwlink/?LinkId=92758)). Some of the compatible streaming protocols (listed in section [1.4](#Section_1.4)) can also specify the HTTP web server URL through mechanisms that are specific to the [**streaming**](#gt_streaming) protocol. The syntax for the logging URL is defined as follows.

log-URL = Request-URI

The resource that is identified by log-URL MUST be capable of accepting and responding to the HTTP GET and POST request methods described in this section; however, the methods for doing so are implementation-specific.

Prior to sending a logging message to a web server, a client SHOULD send an HTTP GET request to the specified web server URL to validate the URL. The logging validation request MUST adhere to the following ABNF syntax.

web-server-validate = "GET" SP log-URL SP HTTP-Version CRLF

*( VCHAR /CLRF )

The web server's response MUST adhere to the following ABNF syntax.

web-server-validate-response = HTTP-Version "200 OK" CRLF

*( VCHAR / CRLF ) "<body><h1>"

( "NetShow ISAPI Log Dll" /

( "WMS ISAPI Log Dll/"

1*4DIGIT "." 1*4DIGIT "." 1*4DIGIT "." 1*4DIGIT ) )

*( VCHAR / CRLF ) "</h1>" *( VCHAR / CRLF ) </body>" *( VCHAR / CRLF )

The [**client**](#gt_client) SHOULD send the logging message to the web server if the server's response adheres to the syntax for web-server-validate-response. If the client sent a request to validate the URL, and the [**server's**](#gt_434b0234-e970-4e8c-bdfa-e16a30d96703) response does not adhere to the syntax for web-server-validate-response, this might mean that the URL is invalid. In this case, the client SHOULD NOT send the logging message.

When sending the logging message, the client MUST include the logging message in the body of a HTTP POST request.

All logging message requests that are sent to a web server MUST adhere to the following ABNF syntax:

web-server-request = "POST" SP log-URL SP HTTP-Version CRLF

*( VCHAR / CRLF )

web-server-log

The logging message sent in the web-server-request message body MUST adhere to the following ABNF syntax.

web-server-log = "MX_STATS_LogLine:" SP TAB

log_data44; defined in section 2.2.1

All HTTP GET and POST requests sent by the client or web server MUST be syntactically correct as per [[RFC1945]](https://go.microsoft.com/fwlink/?LinkId=90300) or [[RFC2616]](https://go.microsoft.com/fwlink/?LinkId=90372). Any header or content element not explicitly represented in one of the preceding ABNF syntax examples MUST be ignored by the recipient.

For an example of logging URL validation and the subsequent transmission of a logging message to a web server, see section [3.6](#Section_3.6).

<a id="Section_2.4"></a>
## 2.4 Logging Message: XML Schema

Logging messages can be represented in XML. This section defines the schema used by all logging messages for which an XML representation has been defined with the exception of the [Connect-Time Log](#Section_2.8). The XML scheme for the Connect-Time Log is defined in section 2.8.

The XML-format log embeds W3C-format logging information inside the "Summary" XML tag. Individual logging fields are also represented using their own XML tags.

If the entity that generates the XML-format logging message (that is, the [**client**](#gt_client)) has access to a Content Description, each name/value pair in the Content Description SHOULD be encoded as shown by the "contentdescription" syntax element in the ABNF syntax as shown in the following code example.

The Content Description is a data structure that is provided by Windows Media Services. If no Content Description is available to the client, the "contentdescription" syntax element MUST NOT be included in the XML-format logging message.

If the entity that generates the XML-format logging message (that is, the client) submits additional or custom logging information, it SHOULD be encoded as shown by the "client-logging-data" syntax element in the following ABNF syntax. For an example illustrating submission of custom logging information, see section [3.2](#Section_3.2).

If no additional logging information is available, the "client-logging-data" syntax element MUST NOT be included in the XML-format logging message.

The XML-format logging syntax is defined using ABNF as shown in the following code example. Although not explicitly shown by the syntax, linear white space, including CR LF sequences, is allowed on each side of XML tags.

xml-tag = 1*ALPHA

cd-name = xml-tag

cd-value = xml-tag

cd-name-value-pair = "<" cd-name ">"

cd-value

"</" cd-name ">"

contentdescription = "<ContentDescription>"

*cd-name-value-pair

"</ContentDescription>"

client-logging-data = "<" xml-tag ">"

*cdl-name-value-pair

"</" xml-tag ">"

xml-log = "<XML>"

"<Summary>" summary-log "</Summary>"

"<c-ip>" "0.0.0.0" "</c-ip>"

"<date>" date "</date>"

"<time>" time "</time>"

"<c-dns>" c-dns "</c-dns>"

"<cs-uri-stem>" cs-uri-stem "</cs-uri-stem>"

"<c-starttime>" c-starttime "</c-starttime>"

"<x-duration> x-duration "</x-duration>"

"<c-rate>" c-rate "</c-rate>"

"<c-status>" c-status "</c-status>"

"<c-playerid>" c-playerid "<c-playerid>"

"<c-playerversion>" c-playerversion "</c-playerversion>"

"<c-playerlanguage>" c-playerlanguage "</c-playerlanguage>"

"<cs-User-Agent>" cs-User-Agent "</cs-User-Agent>"

"<cs-Referer>" cs-Referer "<cs-Referer>"

"<c-hostexe>" c-hostexe "</c-hostexe>"

"<c-hostexever>" c-hostexever "</c-hostexever>"

"<c-os>" c-os "</c-os>"

"<c-osversion>" c-osversion "</c-osversion>"

"<c-cpu>" c-cpu "</c-cpu>"

"<filelength>" filelength "</filelength>"

"<filesize>" filesize "</filesize>"

"<avgbandwidth>" avgbandwidth "</avgbandwidth>"

"<protocol>" protocol "</protocol>"

"<transport>" transport "</transport>"

"<audiocodec>" audiocodec "</audiocodec>"

"<videocodec>" videocodec "</videocodec>"

"<c-channelURL>" c-channelURL "</c-channelURL>"

"<sc-bytes>" sc-bytes "</sc-bytes>"

"<c-bytes>" c-bytes "</c-bytes>"

"<s-pkts-sent>" s-pkts-sent "</s-pkts-sent>"

"<c-pkts-received>" c-pkts-received "</c-pkts-received>"

"<c-pkts-lost-client>" c-pkts-lost-client "</c-pkts-lost-client>"

"<c-pkts-lost-net>" c-pkts-lost-net "</c-pkts-lost-net>"

"<c-pkts-lost-cont-net>" c-pkts-lost-cont-net "</c-pkts-lost-cont-net>"

"<c-resendreqs>" c-resendsreqs "</c-resendreqs>"

"<c-pkts-recovered-ECC>" c-pkts-recovered-ECC "</c-pkts-recovered-ECC>"

"<c-pkts-recovered-resent>" c-pkts-recovered-resent "</c-pkts-recovered-resent>"

"<c-buffercount>" c-buffercount "</c-buffercount>"

"<c-totalbuffertime>" c-totalbuffertime "</c-totalbuffertime>"

"<c-quality>" c-quality "</c-quality>"

"<s-ip>" "-" "</s-ip>"

"<s-dns>" "-" "</s-dns>"

"<s-totalclients>" "-" "</s-totalclients>"

"<s-cpu-util>" "-" "</s-cpu-util>"

"<cs-url>" cs-url "</cs-url>"

[ contentdescription ]

*client-logging-data

"</XML>"

The syntax only defines the ordering of the fields and the XML tag assigned to each field; it does not define how the values of the fields are assigned. The rules governing the values of the individual fields depend on the logging message in which the XML-format syntax is used.

The XML-format logging syntax MUST use the UTF-8 character set, as specified in [[RFC3629]](https://go.microsoft.com/fwlink/?LinkId=90439). In any fields that specify a URL, such as cs-url, the URL MUST be encoded using percent-encoding, as specified in [[RFC3986]](https://go.microsoft.com/fwlink/?LinkId=90453) section 2.1.

A single dash character (which is represented by U+002D and by "-" in ABNF syntax) MUST be used to indicate that the value is empty—that is, it is either not available or not applicable.

All spaces embedded within a field value MUST be replaced by an underscore character (which is represented by U+005F and by "_" in ABNF syntax). For example, "MPEG Layer-3" would be transformed into "MPEG_Layer-3" in a W3C-format logging message.

<a id="Section_2.5"></a>
## 2.5 Legacy Log

The Legacy Log is also called a combination log because it contains both rendering and [**streaming**](#gt_streaming) information. The Legacy Log can be either in W3C format or XML format. A Legacy Log can be sent either to Windows Media Services or to a web server.

<a id="Section_2.5.1"></a>
### 2.5.1 Common Definitions

The following ABNF syntax rules applies to all variants of the Legacy Log.<4>

s-cpu-util = "-"

c-ip = "0.0.0.0"

s-dns = "-"

The values of the following fields MUST be assigned as defined in section [2.1](#Section_2.1):

- **audiocodec**
- **avgbandwidth**
- **c-buffercount**
- **c-channelURL**
- **c-cpu**
- **c-dns**
- **c-hostexe**
- **c-hostexever**
- **c-os**
- **c-osversion**
- **c-pkts-lost-client**
- **c-pkts-lost-cont-net**
- **c-pkts-lost-net**
- **c-pkts-recovered-ECC**
- **c-pkts-recovered-resent**
- **c-playerid**
- **c-playerlanguage**
- **c-playerversion**
- **c-quality**
- **c-rate**
- **c-resendreqs**
- **c-starttime**
- **c-status**
- **c-totalbuffertime**
- **cs-Referer**
- **cs-media-name**
- **cs-uri-stem**
- **cs-url**
- **cs-User-Agent**
- **date**
- **filelength**
- **filesize**
- **protocol**
- **cs-media-role**
- **s-pkts-sent**
- **s-totalclients**
- **sc-bytes**
- **time**
- **transport**
- **videocodec**
- **x-duration**
The [Legacy Log](#Section_2.5) SHOULD include the optional fields **cs-url**, **cs-media-name**, and **cs-media-role**.<5>

<a id="Section_2.5.2"></a>
### 2.5.2 Legacy Log in W3C Format

The ABNF syntax for a [Legacy Log](#Section_2.5) in W3C format that is sent to Windows Media Services is defined as follows.

legacy-log-W3C = log_data44 ; defined in section 2.2.1

s-ip = "-"

<a id="Section_2.5.3"></a>
### 2.5.3 Legacy Log in XML Format

The ABNF syntax for a [Legacy Log](#Section_2.5) in XML format that is sent to Windows Media Services is defined as follows.<6>

legacy-log-XML = xml-log ; defined in section 2.4

summary-log = log_data44 ; defined in section 2.2.1

s-ip = "-"

<a id="Section_2.5.4"></a>
### 2.5.4 Legacy Log Sent to a Web Server

The ABNF syntax for a [Legacy Log](#Section_2.5) that is submitted to a web server is defined as follows.

legacy-web-server-log = web-server-log ; defined in section 2.3

The value of the **s-ip** field MUST be assigned as defined in section [2.1.43](#Section_2.1.43).

<a id="Section_2.6"></a>
## 2.6 Streaming Log

The Streaming Log specifies how the [**client**](#gt_client) received [**streaming**](#gt_streaming) data but not how the client rendered the data. A Streaming Log can be sent either to Windows Media Services or to a web server.

<a id="Section_2.6.1"></a>
### 2.6.1 Common Definitions

The following ABNF syntax rules apply to all variants of the [Streaming Log](#Section_2.6).

audiocodec = "-"

c-ip = "0.0.0.0"

s-cpu-util = "-"

s-dns = "-"

videocodec = "-"

The values of the following fields MUST be assigned as defined in section [2.1](#Section_2.1):

- **avgbandwidth**
- **c-buffercount**
- **c-channelURL**
- **c-cpu**
- **c-dns**
- **c-hostexe**
- **c-hostexever**
- **c-os**
- **c-osversion**
- **c-pkts-lost-client**
- **c-pkts-lost-cont-net**
- **c-pkts-lost-net**
- **c-pkts-recovered-ECC**
- **c-pkts-recovered-resent**
- **c-playerid**
- **c-playerlanguage**
- **c-playerversion**
- **c-quality**
- **c-rate**
- **c-resendreqs**
- **c-starttime**
- **c-status**
- **c-totalbuffertime**
- **cs-Referer**
- **cs-media-name**
- **cs-uri-stem**
- **cs-url**
- **cs-User-Agent**
- **date**
- **filelength**
- **filesize**
- **protocol**
- **cs-media-role**
- **s-pkts-sent**
- **s-totalclients**
- **sc-bytes**
- **time**
- **transport**
- **x-duration**
The Streaming Log MUST include the optional fields **cs-url**, **cs-media-name**, and **cs-media-role**.

<a id="Section_2.6.2"></a>
### 2.6.2 Streaming Log Sent to Windows Media Services

The [Streaming Log](#Section_2.6) sent to Windows Media Services is in XML format and MUST adhere to the following ABNF syntax.<7><8>

streaming-log = xml-log ; defined in section 2.4

summary-log = log_data44 ; defined in section 2.2.1

s-ip = "-"

<a id="Section_2.6.3"></a>
### 2.6.3 Streaming Log Sent to a Web Server

The ABNF syntax for a [Streaming Log](#Section_2.6) that is submitted to a web server is defined as follows.

streaming-web-server-log = web-server-log; defined in section 2.3

The value of the **s-ip** field MUST be assigned as specified in section [2.1.43](#Section_2.1.43).

<a id="Section_2.7"></a>
## 2.7 Rendering Log

The Rendering Log describes playback of [**content**](#gt_content) by a [**client**](#gt_client) and is submitted to the upstream origin [**server**](#gt_server) (or a configured [**proxy**](#gt_proxy)) when the client ends playback. A Rendering Log can be sent either to Windows Media Services or to a web server.

<a id="Section_2.7.1"></a>
### 2.7.1 Common Definitions

The following ABNF syntax rules apply to all variants of the [Rendering Log](#Section_2.7):

avgbandwidth = "-"

c-buffercount = "-"

c-pkts-lost-client = "-"

c-pkts-lost-cont-net = "-"

c-pkts-lost-net = "-"

c-pkts-received = "-"

c-pkts-recovered-ECC = "-"

c-pkts-recovered-resent = "-"

c-quality = "100"

c-resendreqs = "-"

c-totalbuffertime = "-"

protocol = "Cache"

transport = "-"

The values of the following fields MUST be assigned as defined in section [2.1](#Section_2.1):

- **audiocodec**
- **c-channelURL**
- **c-cpu**
- **c-hostexe**
- **c-hostexever**
- **c-ip**
- **c-os**
- **c-osversion**
- **c-playerid**
- **c-playerlanguage**
- **c-playerversion**
- **c-rate**
- **c-starttime**
- **c-status**
- **cs-Referer**
- **cs-media-name**
- **cs-uri-stem**
- **cs-url**
- **cs-User-Agent**
- **date**
- **filelength**
- **filesize**
- **s-cpu-util**
- **s-dns**
- **cs-media-role**
- **s-pkts-sent**
- **s-totalclients**
- **sc-bytes**
- **time**
- **videocodec**
- **x-duration**
The Rendering Log MUST include the optional fields **cs-url**, **cs-media-name**, and **cs-media-role**.

<a id="Section_2.7.2"></a>
### 2.7.2 Rendering Log Sent to Windows Media Services

The [Rendering Log](#Section_2.7) sent to Windows Media Services is in XML format and MUST adhere to the following ABNF syntax.

rendering-log = xml-log ; defined in section 2.4

summary-log = log_data52 ; defined in section 2.2.2

The values of the following fields MUST be assigned as defined in section [2.1](#Section_2.1): **c-max-bandwidth**, **cs-user-name**, **s-content-path**, **s-ip**, **s-proxied**, and **s-session-id**.

<a id="Section_2.7.3"></a>
### 2.7.3 Rendering Log Sent to a Web Server

The ABNF syntax for a [Rendering Log](#Section_2.7) that is submitted to a web server is defined as follows.

rendering-web-server-log = web-server-log; defined in section 2.3

The value of the **c-ip** field MUST be assigned as defined in section [2.1.8](#Section_2.1.8). The value of the **s-ip** field MUST be assigned as defined in section [2.1.43](#Section_2.1.43).

<a id="Section_2.8"></a>
## 2.8 Connect-Time Log

The purpose of the Connect-Time Log is to specify some minimal amount of logging information about the [**client**](#gt_client). It can be useful in cases where a client starts to [**stream (2)**](#gt_f3529cd8-50da-4f36-aa0b-66af455edbb6) some [**content**](#gt_content) but is disconnected from the network before it has the opportunity to create a [Streaming Log](#Section_2.6).

If a client sends a Connect-Time Log to the [**server**](#gt_server) at the start of the [**streaming**](#gt_streaming) [**session**](#gt_session), the Connect-Time Log ensures that the server has received at least this minimal logging information in the case where the client subsequently is disconnected from the network.

Connect-Time Logs are not defined for web servers. Connect-Time Logs are defined only in XML format, and the ABNF syntax is as follows.

connect-time-log = "<XML>"

"<Summary>"

"</Summary>"

"<c-dns>" c-dns "</c-dns>"

"<c-ip>" c-ip "</c-ip>"

"<c-os>" c-os "</c-os>"

"<c-osversion>" c-osversion "</c-osversion>"

"<date>" date "</date>"

"<time>" time "</time>"

"<c-cpu>" c-cpu "</c-cpu>"

"<transport>" transport "</transport>"

"</XML>"

c-ip = "0.0.0.0"

The values of the following fields MUST be assigned as defined in section [2.1](#Section_2.1):

- **c-dns**
- **c-os**
- **c-osversion**
- **date**
- **time**
- **c-cpu**
- **transport**
<a id="Section_3"></a>
# 3 Structure Examples

<a id="Section_3.1"></a>
## 3.1 Legacy Logging Message

The following is an example of a legacy logging message in W3C format.

0.0.0.0 2003-09-27 00:27:24 - http://10.194.20.175/mcast1200K 0 42 1

200 {3300AD50-2C39-46c0-AE0A-B4C904C7848E} 9.0.0.2980 en-US

WMFSDK/9.0.0.2980_WMPlayer/9.0.0.3008 - wmplayer.exe 9.0.0.2980

Windows_XP 5.1.0.2600 Pentium 1801 268885194 1255347 http TCP

Windows_Media_Audio_9 Windows_Media_Video_9 - - 6321233 - 4496 0 0 0 0

0 0 1 0 100 - - - -

The following is an example of a legacy logging message in XML format.

<XML>

<Summary>0.0.0.0 2003-09-27 00:27:24 - http://10.194.20.175/mcast1200K 0 42 1 200

{3300AD50-2C39-46c0-AE0A-B4C904C7848E} 9.0.0.2980

en-US WMFSDK/9.0.0.2980_WMPlayer/9.0.0.3008 - wmplayer.exe 9.0.0.2980

Windows_XP 5.1.0.2600 Pentium 1801 268885194 1255347

http TCP Windows_Media_Audio_9 Windows_Media_Video_9

- - 6321233 - 4496 0 0 0 0 0 0 1 0 100 - - - -

http://10.194.20.175/mcast1200K?WMBitrate=6000000 30MinTV_1200k_1s_1s_0Q.wmv -

</Summary>

<c-ip>0.0.0.0</c-ip>

<date>2003-09-27</date>

<time>00:27:24</time>

<c-dns>-</c-dns>

<cs-uri-stem>http://10.194.20.175/mcast1200K</cs-uri-stem>

<c-starttime>0</c-starttime>

<x-duration>42</x-duration>

<c-rate>1</c-rate>

<c-status>200</c-status>

<c-playerid>{3300AD50-2C39-46c0-AE0A-B4C904C7848E}</c-playerid>

<c-playerversion>9.0.0.2980</c-playerversion>

<c-playerlanguage>en-US</c-playerlanguage>

<cs-User-Agent>WMFSDK/9.0.0.2980_WMPlayer/9.0.0.3008</cs-User-Agent>

<cs-Referer>-</cs-Referer>

<c-hostexe>wmplayer.exe</c-hostexe>

<c-hostexever>9.0.0.2980</c-hostexever>

<c-os>Windows_XP</c-os>

<c-osversion>5.1.0.2600</c-osversion>

<c-cpu>Pentium</c-cpu>

<filelength>1801</filelength>

<filesize>268885194</filesize>

<avgbandwidth>1255347</avgbandwidth>

<protocol>http</protocol>

<transport>TCP</transport>

<audiocodec>Windows_Media_Audio_9</audiocodec>

<videocodec>Windows_Media_Video_9</videocodec>

<c-channelURL>-</c-channelURL>

<sc-bytes>-</sc-bytes>

<c-bytes>6321233</c-bytes>

<s-pkts-sent>-</s-pkts-sent>

<c-pkts-received>4496</c-pkts-received>

<c-pkts-lost-client>0</c-pkts-lost-client>

<c-pkts-lost-net>0</c-pkts-lost-net>

<c-pkts-lost-cont-net>0</c-pkts-lost-cont-net>

<c-resendreqs>0</c-resendreqs>

<c-pkts-recovered-ECC>0</c-pkts-recovered-ECC>

<c-pkts-recovered-resent>0</c-pkts-recovered-resent>

<c-buffercount>1</c-buffercount>

<c-totalbuffertime>0</c-totalbuffertime>

<c-quality>100</c-quality>

<s-ip>-</s-ip>

<s-dns>-</s-dns>

<s-totalclients>-</s-totalclients>

<s-cpu-util>-</s-cpu-util>

<cs-url>http://10.194.20.175/mcast1200K?WMBitrate=6000000</cs-url>

<ContentDescription>

<WMS_CONTENT_DESCRIPTION_PLAYLIST_ENTRY_URL>30MinTV_1200k_1s_1s_0Q.wmv</WMS_CONTENT_DESCRIPTION_PLAYLIST_ENTRY_URL>

<WMS_CONTENT_DESCRIPTION_COPIED_METADATA_FROM_PLAYLIST_FILE>1</WMS_CONTENT_DESCRIPTION_COPIED_METADATA_FROM_PLAYLIST_FILE>

<WMS_CONTENT_DESCRIPTION_PLAYLIST_ENTRY_DURATION>1800501</WMS_CONTENT_DESCRIPTION_PLAYLIST_ENTRY_DURATION>

<WMS_CONTENT_DESCRIPTION_PLAYLIST_ENTRY_START_OFFSET>1450</WMS_CONTENT_DESCRIPTION_PLAYLIST_ENTRY_START_OFFSET>

<WMS_CONTENT_DESCRIPTION_SERVER_BRANDING_INFO>WMServer/9.0</WMS_CONTENT_DESCRIPTION_SERVER_BRANDING_INFO>

</ContentDescription>

</XML>

The following is an example of how a Legacy Log can appear as sent to a web server.

MX_STATS_LogLine: 0.0.0.0 2000-06-14 01:18:58 -

mmsu://server.example.com/testfile.wma 30 1 1 200 {35301A88-93D3-4F3A-

A284-30F7A611CD23} 7.0.0.1938 en-US - - wmplayer.exe 7.0.0.1938

Windows_2000 5.0.0.2195 Pentium 225 4551684 1528 mms UDP - - - - 29868

- 4 0 0 0 0 0 0 0 0 100 172.29.237.102 - - -

<a id="Section_3.2"></a>
## 3.2 Defining Custom Namespaces in an XML Log

An .asx file (for more information, see [[MSDN-WMMETA]](https://go.microsoft.com/fwlink/?LinkId=92758)) can be used to append log data to the XML log structure. Vendors can define any number of custom namespaces and name-value pairs in the "client-logging-data" structure, as specified in section [2.4](#Section_2.4), following the Content Description structure.

The following example illustrates how to add the **cs-media-role** field (section [2.1.30](#Section_2.1.30)) by using an .asx file.

<ASX version="3.0">

<ENTRY>

<TITLE> My Title </TITLE>

<Author> My Author </Author>

<PARAM name="log:cs-media-role" value="Advertisement" />

<REF href="http://www.server.example.com/live" />

</ENTRY>

</ASX>

The additional and/or custom logging information is specified through the use of the PARAM element. To use the PARAM element in this way, the NAME attribute is set to "log:" followed by a log field name and a corresponding VALUE attribute. The log field specified in the NAME attribute is set to the value of the VALUE attribute. If the log does not already contain a field with the specified name, it will be added.

An XML namespace has to be defined for each custom log field specified in an .asx file. This namespace is appended to the NAME attribute and is separated from the field name by a second colon (":"). Because everything after the second colon is treated as a namespace, ensure that the field name does not contain a colon.

The following example illustrates the specification of custom log fields using an .asx file.

<ASX version="3.0">

<ENTRY>

<TITLE> My Title </TITLE>

<Author> My Author </Author>

<PARAM name="log:vendor-field1:VendorNameSpace" value="Value1" />

<PARAM name="log:vendor-field2:VendorNameSpace" value="Value2" />

<REF href="http://www.server.example.com/live" />

</ENTRY>

</ASX>

When an XML log is sent to a server for this .asx file, the new namespace is inserted after the Content Description section, as shown in the following example (many log fields extraneous to this example have been omitted for brevity and clarity).

<XML>

<Summary>0.0.0.0 2003-09-27 00:27:24 ... </Summary>

<c-ip>0.0.0.0</c-ip>

<date>2003-09-27</date>

<time>00:27:24</time>

...

<ContentDescription>

...

</ContentDescription>

<VendorNameSpace>

<vendor-field1>Value1</vendor-field1>

<vendor-field2>Value2</vendor-field2>

</VendorNameSpace>

</XML>

<a id="Section_3.3"></a>
## 3.3 Example Streaming Log Messages

The following is an example of a [Streaming Log](#Section_2.6) in XML format.

<XML>

<Summary>0.0.0.0 2006-05-01 21:34:01 -

http://server.example.com/content.wmv 4 0 1 200 {3300AD50-2C39-46c0-

AE0A-3E0B6EFB86DC} 10.0.0.3802 en-US

Mozilla/4.0_(compatible;_MSIE_6.0;_Windows_NT_5.1)_(WMFSDK/10.0.0.3802)

_WMPlayer/10.0.0.4019 http://bar.microsoft.com iexplore.exe

6.0.2900.2180 Windows_XP 5.1.0.2600 Pentium 130 638066 - http TCP - - -

-0 - 0 0 0 0 0 0 0 0 0 100 - - - -

http://server.example.com/content.wmv - -</Summary>

<c-ip>0.0.0.0</c-ip>

<date>2006-05-01</date>

<time>21:34:01</time>

<c-dns>-</c-dns>

<cs-uri-stem>http://server.example.com/content.wmv</cs-uri-stem>

<c-starttime>4</c-starttime>

<x-duration>0</x-duration>

<c-rate>1</c-rate>

<c-status>200</c-status>

<c-playerid>{3300AD50-2C39-46c0-AE0A-3E0B6EFB86DC}</c-playerid>

<c-playerversion>10.0.0.3802</c-playerversion>

<c-playerlanguage>en-US</c-playerlanguage>

<cs-User-Agent>Mozilla/4.0_(compatible;_MSIE_6.0;_Windows_NT_5.1)_(WMFSDK/10.0.0.3802)_WMPlayer/10.0.0.4019</cs-User-Agent>

<cs-Referer>http://bar.microsoft.com</cs-Referer>

<c-hostexe>iexplore.exe</c-hostexe>

<c-hostexever>6.0.2900.2180</c-hostexever>

<c-os>Windows_XP</c-os>

<c-osversion>5.1.0.2600</c-osversion>

<c-cpu>Pentium</c-cpu>

<filelength>130</filelength>

<filesize>638066</filesize>

<avgbandwidth>-</avgbandwidth>

<protocol>http</protocol>

<transport>TCP</transport>

<audiocodec>-</audiocodec>

<videocodec>-</videocodec>

<c-channelURL>-</c-channelURL>

<sc-bytes>-</sc-bytes>

<c-bytes>0</c-bytes>

<s-pkts-sent>-</s-pkts-sent>

<c-pkts-received>0</c-pkts-received>

<c-pkts-lost-client>0</c-pkts-lost-client>

<c-pkts-lost-net>0</c-pkts-lost-net>

<c-pkts-lost-cont-net>0</c-pkts-lost-cont-net>

<c-resendreqs>0</c-resendreqs>

<c-pkts-recovered-ECC>0</c-pkts-recovered-ECC>

<c-pkts-recovered-resent>0</c-pkts-recovered-resent>

<c-buffercount>0</c-buffercount>

<c-totalbuffertime>0</c-totalbuffertime>

<c-quality>100</c-quality>

<s-ip>-</s-ip>

<s-dns>-</s-dns>

<s-totalclients>-</s-totalclients>

<s-cpu-util>-</s-cpu-util>

<cs-url>http://server.example.com/content.wmv</cs-url>

</XML>

The following is an example of how a Streaming Log can appear as sent to a web server.

MX_STATS_LogLine: 0.0.0.0 2000-06-14 01:18:58 -

mmsu://server.example.com/testfile.wma 30 1 1 200 {35301A88-93D3-4F3A-

A284-30F7A611CD23} 7.0.0.1938 en-US - - wmplayer.exe 7.0.0.1938

Windows_2000 5.0.0.2195 Pentium 225 4551684 1528 mms UDP - - - - 29868

- 4 0 0 0 0 0 0 0 0 100 172.29.237.102 - - -

mmsu://server.example.com/testfile.wma - -

<a id="Section_3.4"></a>
## 3.4 Example Rendering Log Messages

The following is an example of a [Rendering Log](#Section_2.7) in XML format.

<XML>

<Summary>0.0.0.0 2006-05-01 21:34:01 -

http://server.example.com/content.wmv 4 0 1 200 {3300AD50-2C39-46c0-

AE0A-3E0B6EFB86DC} 10.0.0.3802 en-US

Mozilla/4.0_(compatible;_MSIE_6.0;_Windows_NT_5.1)_(WMFSDK/10.0.0.3802)

_WMPlayer/10.0.0.4019 http://bar.microsoft.com iexplore.exe

6.0.2900.2180 Windows_XP 5.1.0.2600 Pentium 130 638066 - Cache -

Windows_Media_Audio_9 Windows_Media_Video_9 - - 0 - - - - - - - - - -

100 - - - - - - - http://server.example.com/content.wmv - - - 0

</Summary>

<c-ip>0.0.0.0</c-ip>

<date>2006-05-01</date>

<time>21:34:01</time>

<c-dns>-</c-dns>

<cs-uri-stem>http://server.example.com/content.wmv</cs-uri-stem>

<c-starttime>4</c-starttime>

<x-duration>0</x-duration>

<c-rate>1</c-rate>

<c-status>200</c-status>

<c-playerid>{3300AD50-2C39-46c0-AE0A-3E0B6EFB86DC}</c-playerid>

<c-playerversion>10.0.0.3802</c-playerversion>

<c-playerlanguage>en-US</c-playerlanguage>

<cs-User-Agent>Mozilla/4.0_(compatible;_MSIE_6.0;_Windows_NT_5.1)

_(WMFSDK/10.0.0.3802)_WMPlayer/10.0.0.4019</cs-User-Agent>

<cs-Referer>http://bar.microsoft.com</cs-Referer>

<c-hostexe>iexplore.exe</c-hostexe>

<c-hostexever>6.0.2900.2180</c-hostexever>

<c-os>Windows_XP</c-os>

<c-osversion>5.1.0.2600</c-osversion>

<c-cpu>Pentium</c-cpu>

<filelength>130</filelength>

<filesize>638066</filesize>

<avgbandwidth>-</avgbandwidth>

<protocol>Cache</protocol>

<transport>-</transport>

<audiocodec>Windows_Media_Audio_9</audiocodec>

<videocodec>Windows_Media_Video_9</videocodec>

<c-channelURL>-</c-channelURL>

<sc-bytes>-</sc-bytes>

<c-bytes>0</c-bytes>

<s-pkts-sent>-</s-pkts-sent>

<c-pkts-received>-</c-pkts-received>

<c-pkts-lost-client>-</c-pkts-lost-client>

<c-pkts-lost-net>-</c-pkts-lost-net>

<c-pkts-lost-cont-net>-</c-pkts-lost-cont-net>

<c-resendreqs>-</c-resendreqs>

<c-pkts-recovered-ECC>-</c-pkts-recovered-ECC>

<c-pkts-recovered-resent>-</c-pkts-recovered-resent>

<c-buffercount>-</c-buffercount>

<c-totalbuffertime>-</c-totalbuffertime>

<c-quality>100</c-quality>

<s-ip>-</s-ip>

<s-dns>-</s-dns>

<s-totalclients>-</s-totalclients>

<s-cpu-util>-</s-cpu-util>

<cs-url>http://server.example.com/content.wmv</cs-url>

</XML>

The following is an example of how a Rendering Log can appear as sent to a web server.

MX_STATS_LogLine: 0.0.0.0 2000-06-14 01:18:58 -

mms://server.example.com/test.wma 30 1 1 200 {35301A88-93D3-4F3A-A284-

30F7A611CD23} 7.0.0.1938 en-US - - wmplayer.exe 7.0.0.1938 Windows_2000

5.0.0.2195 Pentium 225 4551684 1528 Cache - - - - - 29868 - - - - - - -

- - - 100 - - - - mms://server.example.com/test.wma - -

<a id="Section_3.5"></a>
## 3.5 Example Connect-Time Log Message

The following is an example of a [Connect-Time Log](#Section_2.8) message in XML format.

<XML>

<Summary></Summary>

<c-dns>-</c-dns>

<c-ip>0.0.0.0</c-ip>

<c-os>Windows</c-os>

<c-osversion>6.0.0.6000</c-osversion>

<date>2006-08-30</date>

<time>13:18:44</time>

<c-cpu>Pentium</c-cpu>

<transport>TCP</transport>

</XML>

<a id="Section_3.6"></a>
## 3.6 Example Log Sent to a Web Server

The following is an example of a client validating a logging URL and subsequently transmitting a logging message to the web server.

GET /scripts/wmsiislog.dll HTTP/1.1

User-Agent: NSPlayer

Host: WebServer:8080

Connection: Keep-Alive

Cache-Control: no-cache

HTTP/1.1 200 OK

Connection: close

Date: Wed, 27 Jun 2007 02:54:23 GMT

Server: Microsoft-IIS/6.0

Content-Type: text/html

<head><title>WMS ISAPI Log Dll/9.00.00.3372</title></head>

<body><h1>WMS ISAPI Log Dll/9.00.00.3372</h1></body>

POST /scripts/wmsiislog.dll HTTP/1.1

Content-Type: text/plain;charset=UTF-8

User-Agent: NSPlayer

Host: WebServer:8080

Content-Length: 424

Connection: Keep-Alive

Cache-Control: no-cache

MX_STATS_LogLine: .0.0.0.0 2007-06-27 02:52:39 - asfm://239.192.50.29:30864 0 39 1 200

{3300AD50-2C39-46c0-AE0A-0572F2EA5330} 10.0.0.4054 en-US

WMFSDK/10.0.0.4054_WMPlayer/10.0.0.4036 - wmplayer.exe 10.0.0.3802 Windows_XP 5.1.0.2600

Pentium 229 10413011 411536 asfm UDP Windows_Media_Audio_9.2 -

http://WebServer:8080/multicast.nsc - 2170350 - 182 0 0 0 0 0 0 1 3 100 239.192.50.29 - -

- http://WebServer:8080/multicast.nsc - -

HTTP/1.1 200 OK

Server: Microsoft-IIS/6.0

Date: Wed, 27 Jun 2007 02:54:23 GMT

Connection: close

<a id="Section_4"></a>
# 4 Security Considerations

A [**server**](#gt_server) that receives a logging message validates the syntax of the fields. For example, the server checks that logging fields that are supposed to contain numerical data really do so, and that no invalid characters, such as control characters, are present. Invalid fields or characters could cause any tools that process the logging information to malfunction.

<a id="Section_5"></a>
# 5 Appendix A: Product Behavior

The information in this specification is applicable to the following Microsoft products or supplemental software. References to product versions include updates to those products.

The terms "earlier" and "later", when used with a product version, refer to either all preceding versions or all subsequent versions, respectively. The term "through" refers to the inclusive range of versions. Applicable Microsoft products are listed chronologically in this section.

**Windows Client**

- Windows NT operating system
- Windows 2000 Professional operating system
- Windows XP operating system
- Windows Vista operating system
- Windows 7 operating system
- Windows 8 operating system
- Windows 8.1 operating system
- Windows 10 operating system
- Windows 11 operating system
**Windows Server**

- Windows NT
- Windows 2000 Server operating system
- Windows Server 2003 operating system
- Windows Server 2008 operating system
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

<1> Section 2.1.5: Windows Media Player 6.4 specifies the [**Internet host name**](#gt_internet-host-name) in the **c-dns** field.

<2> Section 2.1.10: On Windows Vista and Windows 7, **c-os** is set to "Windows".

<3> Section 2.1.25.2: Windows Media Player 6.4, Windows Media Format 7.0 SDK, Windows Media Format 7.1 SDK, and Windows Media Player for Windows XP never specify status code 210.

<4> Section 2.5.1: Windows Media Player 6.4 specifies its own IP address in the **c-ip** field. Windows Media Format 7.0 SDK, Windows Media Format 7.1 SDK, and Windows Media Player for Windows XP specify their own IP address in the **c-ip** field depending on the current setting of a configuration value in the user interface.

<5> Section 2.5.1: Windows Media Player 6.4, Windows Media Format 7.0 SDK, Windows Media Format 7.1 SDK, and Windows Media Player for Windows XP never include the three optional fields.

<6> Section 2.5.3: Windows Media Format 9 Series SDK, Windows Media Format 9.5 SDK, Windows Vista, and Windows 7 do not include the "contentdescription" and "client-logging-data" syntax elements in the XML-format logging message when using RTSP [MS-RTSP](../MS-RTSP/MS-RTSP.md).

<7> Section 2.6.2: Windows Media Format 9 Series SDK, Windows Media Format 9.5 SDK, Windows Vista and later do not include the "contentdescription" and "client-logging-data" syntax elements in the XML-format logging message when using RTSP [MS-RTSP].

<8> Section 2.6.2: When going through a proxy, Windows Media Services on Windows Server 2003 operating system with Service Pack 1 (SP1), Windows Server 2008, and Windows Server 2008 R2 duplicate the "<c-channelURL>", "</c-channelURL>", "<cs-media-role>", and "</cs-media-role>" tags. For each tag that is duplicated, the duplicate tag immediately follows the original tag.

<a id="Section_6"></a>
# 6 Change Tracking

This section identifies changes that were made to this document since the last release. Changes are classified as Major, Minor, or None.

The revision class **Major** means that the technical content in the document was significantly revised. Major changes affect protocol interoperability or implementation. Examples of major changes are:

- A document revision that incorporates changes to interoperability requirements.
- A document revision that captures changes to protocol functionality.
The revision class **Minor** means that the meaning of the technical content was clarified. Minor changes do not affect protocol interoperability or implementation. Examples of minor changes are updates to clarify ambiguity at the sentence, paragraph, or table level.

The revision class **None** means that no new technical changes were introduced. Minor editorial and formatting changes may have been made, but the relevant technical content is identical to the last released version.

The changes made to this document are listed in the following table. For more information, please contact [dochelp@microsoft.com](mailto:dochelp@microsoft.com).

| Section | Description | Revision class |
| --- | --- | --- |
| [5](#Section_5) Appendix A: Product Behavior | Added Windows Server 2025 to the list of applicable products. | Major |


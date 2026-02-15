# [MS-UPMC]: UPnP Device and Service Templates: Media Property and Compatibility Extensions

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
  - [2.1 MMPE](#Section_2.1)
    - [2.1.1 Artist Properties](#Section_2.1.1)
      - [2.1.1.1 artistAlbumArtist](#Section_2.1.1.1)
      - [2.1.1.2 artistPerformer](#Section_2.1.1.2)
      - [2.1.1.3 artistConductor](#Section_2.1.1.3)
    - [2.1.2 Author Properties](#Section_2.1.2)
      - [2.1.2.1 authorComposer](#Section_2.1.2.1)
      - [2.1.2.2 authorOriginalLyricist](#Section_2.1.2.2)
      - [2.1.2.3 authorWriter](#Section_2.1.2.3)
    - [2.1.3 Ratings Properties](#Section_2.1.3)
      - [2.1.3.1 userRating](#Section_2.1.3.1)
      - [2.1.3.2 userEffectiveRating](#Section_2.1.3.2)
      - [2.1.3.3 userRatingInStars](#Section_2.1.3.3)
      - [2.1.3.4 userEffectiveRatingInStars](#Section_2.1.3.4)
    - [2.1.4 serviceProvider](#Section_2.1.4)
    - [2.1.5 sourceURL](#Section_2.1.5)
    - [2.1.6 year](#Section_2.1.6)
    - [2.1.7 folderPath](#Section_2.1.7)
    - [2.1.8 fileIdentifier](#Section_2.1.8)
  - [2.2 MCEF](#Section_2.2)
    - [2.2.1 Compatibility Flag Values and Behaviors](#Section_2.2.1)
      - [2.2.1.1 WMC_COMPAT_EXCLUDE_HTTP](#Section_2.2.1.1)
      - [2.2.1.2 WMC_COMPAT_EXCLUDE_RTSP](#Section_2.2.1.2)
      - [2.2.1.3 WMC_COMPAT_EXCLUDE_DLNA](#Section_2.2.1.3)
      - [2.2.1.4 WMC_COMPAT_EXCLUDE_DLNA_1_5](#Section_2.2.1.4)
      - [2.2.1.5 WMC_COMPAT_EXCLUDE_PCMPARAMS](#Section_2.2.1.5)
      - [2.2.1.6 WMC_COMPAT_EXCLUDE_WMDRMND](#Section_2.2.1.6)
      - [2.2.1.7 WMC_COMPAT_INCLUDE_RTSP_FOR_VIDEO](#Section_2.2.1.7)
      - [2.2.1.8 WMC_COMPAT_EXCLUDE_WMALOSSLESS_NONTRANSCODED](#Section_2.2.1.8)
      - [2.2.1.9 WMC_COMPAT_EXCLUDE_SEARCH](#Section_2.2.1.9)
      - [2.2.1.10 WMC_COMPAT_DO_NOT_LIMIT_RESPONSE_SIZE](#Section_2.2.1.10)
      - [2.2.1.11 WMC_COMPAT_EXCLUDE_VIDEO_TRANSCODING](#Section_2.2.1.11)
      - [2.2.1.12 WMC_COMPAT_PLAYLIST_FAKECHILDCOUNT](#Section_2.2.1.12)
      - [2.2.1.13 WMC_COMPAT_EXCLUDE_NONPCM_AUDIO_TRANSCODING](#Section_2.2.1.13)
      - [2.2.1.14 WMC_COMPAT_EXCLUDE_TRANSCODING_TO_MPEG2](#Section_2.2.1.14)
      - [2.2.1.15 WMC_COMPAT_EXCLUDE_RES_FILTERING](#Section_2.2.1.15)
  - [2.3 MPME](#Section_2.3)
    - [2.3.1 Magic Packets](#Section_2.3.1)
      - [2.3.1.1 microsoft:magicPacketWakeSupported](#Section_2.3.1.1)
      - [2.3.1.2 microsoft:magicPacketSendSupported](#Section_2.3.1.2)
  - [2.4 Microsoft ProtocolInfo Extensions](#Section_2.4)
    - [2.4.1 PlayToApp Extension](#Section_2.4.1)
</details>

<details>
<summary>3 Structure Examples</summary>

- [3 Structure Examples](#Section_3)
  - [3.1 MMPE Examples](#Section_3.1)
    - [3.1.1 Artist Properties Tags](#Section_3.1.1)
    - [3.1.2 Author Properties Tags](#Section_3.1.2)
    - [3.1.3 Ratings Properties Tags](#Section_3.1.3)
    - [3.1.4 serviceProvider Property Tag](#Section_3.1.4)
    - [3.1.5 year Property Tag](#Section_3.1.5)
    - [3.1.6 folderPath Property Tag](#Section_3.1.6)
    - [3.1.7 fileIdentifier Property Tag](#Section_3.1.7)
  - [3.2 MCEF Examples](#Section_3.2)
    - [3.2.1 X_DeviceCaps Example](#Section_3.2.1)
  - [3.3 MPME Examples](#Section_3.3)
    - [3.3.1 magicPacketWakeSupported](#Section_3.3.1)
    - [3.3.2 magicPacketSendSupported](#Section_3.3.2)
  - [3.4 Microsoft ProtocolInfo Extensions Examples](#Section_3.4)
    - [3.4.1 PlayToApp Extension](#Section_3.4.1)
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

This document defines the [**Microsoft Media Property Extensions (MMPE)**](#gt_microsoft-media-property-extensions-mmpe), the [**Microsoft Compatibility Extension Flags (MCEF)**](#gt_microsoft-compatibility-extension-flags-mcef), the [**Microsoft Power Management Extensions (MPME)**](#gt_microsoft-power-management-extensions-mpme), and the Microsoft ProtocolInfo Extensions. These flags and extensions extend the [**Universal Plug and Play (UPnP)**](#gt_universal-plug-and-play-upnp) interoperability guidelines, as specified by the UPnP Forum [[UPnP]](https://go.microsoft.com/fwlink/?LinkId=90553) and used by the [**Digital Living Network Alliance (DLNA)**](#gt_digital-living-network-alliance-dlna) [[DLNA]](https://go.microsoft.com/fwlink/?LinkId=178990).

Sections 1.7 and 2 of this specification are normative. All other sections and examples in this specification are informative.

<a id="Section_1.1"></a>
## 1.1 Glossary

This document uses the following terms:

<a id="gt_device-description-document-ddd"></a>
**device description document (DDD)**: A document used to specify device information and its capabilities, as described in the [**UPnP**](#gt_universal-plug-and-play-upnp) standard [[UPnP]](https://go.microsoft.com/fwlink/?LinkId=90553).

<a id="gt_digital-item-declaration-language-didl-lite"></a>
**digital item declaration language (DIDL-Lite)**: A subset of the Digital Item Declaration Language (DIDL), which is an [**XML**](#gt_xml) dialect developed within ISO/MPEG21.

<a id="gt_digital-living-network-alliance-dlna"></a>
**Digital Living Network Alliance (DLNA)**: A cross-industry organization of leading consumer electronics, computing industry, and mobile device companies, which are focused on delivering interoperability guidelines to allow entertainment devices in the home to operate with each other. DLNA has embraced WMM for its QoS strategy.

<a id="gt_digital-media-player-dmp"></a>
**Digital Media Player (DMP)**: A device class defined in the [**DLNA Guidelines**](#gt_dlna-guidelines). A [**DMP**](#gt_digital-media-player-dmp) is an [**UPnP**](#gt_universal-plug-and-play-upnp) control point, which means that it invokes [**UPnP**](#gt_universal-plug-and-play-upnp) actions on [**UPnP**](#gt_universal-plug-and-play-upnp) devices. The [**DMP**](#gt_digital-media-player-dmp) is not itself a [**UPnP**](#gt_universal-plug-and-play-upnp) Device.

<a id="gt_digital-media-renderer-dmr"></a>
**Digital Media Renderer (DMR)**: A Device Class defined in the [**DLNA Guidelines**](#gt_dlna-guidelines). A [**DMR**](#gt_digital-media-renderer-dmr) is [**UPnP**](#gt_universal-plug-and-play-upnp) Device that implements the [**UPnP**](#gt_universal-plug-and-play-upnp) MediaRenderer Device type.

<a id="gt_digital-media-server-dms"></a>
**Digital Media Server (DMS)**: A device class defined in the [**DLNA Guidelines**](#gt_dlna-guidelines). A [**DMS**](#gt_digital-media-server-dms) is an [**UPnP**](#gt_universal-plug-and-play-upnp) device that implements the [**UPnP**](#gt_universal-plug-and-play-upnp) MediaServer device type.

<a id="gt_dlna-guidelines"></a>
**DLNA guidelines**: The DLNA Networked Device Interoperability Guidelines [[DLNA]](https://go.microsoft.com/fwlink/?LinkId=178990) consist of three volumes that provide vendors with the information required to build interoperable networked platforms and devices for the digital home, including architecture and protocols, profiles for media formats, and link protection.

<a id="gt_hypertext-transfer-protocol-http"></a>
**Hypertext Transfer Protocol (HTTP)**: An application-level protocol for distributed, collaborative, hypermedia information systems (text, graphic images, sound, video, and other multimedia files) on the World Wide Web.

<a id="gt_microsoft-compatibility-extension-flags-mcef"></a>
**Microsoft Compatibility Extension Flags (MCEF)**: Flags provided by [**DMRs**](#gt_digital-media-renderer-dmr) and [**DMPs**](#gt_digital-media-player-dmp) to filter specific [**res**](#gt_res) elements exposed to these devices.

<a id="gt_microsoft-media-property-extensions-mmpe"></a>
**Microsoft Media Property Extensions (MMPE)**: Additional metadata properties that describe a media item that further enriches the metadata properties defined by [UPnP].

<a id="gt_microsoft-power-management-extensions-mpme"></a>
**Microsoft Power Management Extensions (MPME)**: [**XML**](#gt_xml) tags used to communicate the devices support of magic packets.

<a id="gt_microsoft-protocolinfo-extensions"></a>
**Microsoft ProtocolInfo Extensions**: Extensions to the [**ProtocolInfo**](#gt_protocolinfo) syntax, defined by Microsoft.

<a id="gt_protocolinfo"></a>
**ProtocolInfo**: As specified in [[UPNPCNMGR]](https://go.microsoft.com/fwlink/?LinkId=187219) section 2.5.2.

<a id="gt_real-time-streaming-protocol-rtsp"></a>
**Real-Time Streaming Protocol (RTSP)**: A protocol used for transferring real-time multimedia data (for example, audio and video) between a server and a client, as specified in [[RFC2326]](https://go.microsoft.com/fwlink/?LinkId=90335). It is a streaming protocol; this means that [**RTSP**](#gt_real-time-streaming-protocol-rtsp) attempts to facilitate scenarios in which the multimedia data is being simultaneously transferred and rendered (that is, video is displayed and audio is played).

<a id="gt_res"></a>
**res**: Identifies a resource. A resource is typically some type of a binary asset, such as a photo, song, video, etc. A [**res**](#gt_res) element contains an URI that identifies the resource.

<a id="gt_universal-plug-and-play-upnp"></a>
**Universal Plug and Play (UPnP)**: A set of computer network protocols, published by the UPnP Forum [UPnP], that allow devices to connect seamlessly and that simplify the implementation of networks in home (data sharing, communications, and entertainment) and corporate environments. UPnP achieves this by defining and publishing UPnP device control protocols built upon open, Internet-based communication standards.

<a id="gt_utf-8"></a>
**UTF-8**: A byte-oriented standard for encoding Unicode characters, defined in the Unicode standard. Unless specified otherwise, this term refers to the UTF-8 encoding form specified in [[UNICODE5.0.0/2007]](https://go.microsoft.com/fwlink/?LinkId=154659) section 3.9.

<a id="gt_xml"></a>
**XML**: The Extensible Markup Language, as described in [[XML1.0]](https://go.microsoft.com/fwlink/?LinkId=90599).

**MAY, SHOULD, MUST, SHOULD NOT, MUST NOT:** These terms (in all caps) are used as defined in [[RFC2119]](https://go.microsoft.com/fwlink/?LinkId=90317). All statements of optional behavior use either MAY, SHOULD, or SHOULD NOT.

<a id="Section_1.2"></a>
## 1.2 References

Links to a document in the Microsoft Open Specifications library point to the correct section in the most recently published version of the referenced document. However, because individual documents in the library are not updated at the same time, the section numbers in the documents may not match. You can confirm the correct section numbering by checking the [Errata](https://go.microsoft.com/fwlink/?linkid=850906).

<a id="Section_1.2.1"></a>
### 1.2.1 Normative References

We conduct frequent surveys of the normative references to assure their continued availability. If you have any issue with finding a normative reference, please contact [dochelp@microsoft.com](mailto:dochelp@microsoft.com). We will assist you in finding the relevant information.

[DLNA] Digital Living Network Alliance, "The DLNA Networked Device Interoperability Guidelines", [https://spirespark.com/dlna/guidelines](https://go.microsoft.com/fwlink/?LinkId=178990)

**Note** Registration is required to download the document.

[MS-DTYP] Microsoft Corporation, "[Windows Data Types](../MS-DTYP/MS-DTYP.md)".

[RFC2119] Bradner, S., "Key words for use in RFCs to Indicate Requirement Levels", BCP 14, RFC 2119, March 1997, [https://www.rfc-editor.org/info/rfc2119](https://go.microsoft.com/fwlink/?LinkId=90317)

[RFC3629] Yergeau, F., "UTF-8, A Transformation Format of ISO 10646", STD 63, RFC 3629, November 2003, [https://www.rfc-editor.org/info/rfc3629](https://go.microsoft.com/fwlink/?LinkId=90439)

[RFC5234] Crocker, D., Ed., and Overell, P., "Augmented BNF for Syntax Specifications: ABNF", STD 68, RFC 5234, January 2008, [https://www.rfc-editor.org/info/rfc5234](https://go.microsoft.com/fwlink/?LinkId=123096)

[UPnP] UPnP Forum, "Standards", [http://upnp.org/sdcps-and-certification/standards/sdcps/](https://go.microsoft.com/fwlink/?LinkId=90553)

[XML10] World Wide Web Consortium, "Extensible Markup Language (XML) 1.0 (Third Edition)", February 2004, [http://www.w3.org/TR/2004/REC-xml-20040204/](https://go.microsoft.com/fwlink/?LinkId=90600)

<a id="Section_1.2.2"></a>
### 1.2.2 Informative References

[MS-DLNHND] Microsoft Corporation, "[Digital Living Network Alliance (DLNA) Networked Device Interoperability Guidelines: Microsoft Extensions](../MS-DLNHND/MS-DLNHND.md)".

[UPNPARCH1] UPnP Forum, "UPnP Device Architecture 1.0", October 2008, [http://www.upnp.org/specs/arch/UPnP-arch-DeviceArchitecture-v1.0.pdf](https://go.microsoft.com/fwlink/?LinkId=90554)

[UPNPCDS1] UPnP Forum, "ContentDirectory:1 Service Template Version 1.01", June 2002, [http://www.upnp.org/standardizeddcps/documents/ContentDirectory1.0.pdf](https://go.microsoft.com/fwlink/?LinkId=178991)

[UPNPCNMGR] UPnP Forum, "ConnectionManager:1 Service Template Versions 1.01", June 2002, [http://www.upnp.org/standardizeddcps/documents/ConnectionManager1.0.pdf](https://go.microsoft.com/fwlink/?LinkId=187219)

<a id="Section_1.3"></a>
## 1.3 Overview

[**Microsoft Compatibility Extension Flags (MCEF)**](#gt_microsoft-compatibility-extension-flags-mcef) are used to request specific device behavior(s) to enhance interoperability among [**UPnP**](#gt_universal-plug-and-play-upnp) Devices. For example, device manufacturers can develop a UPnP capable network device in order to retrieve information about the media content that is exposed to the network by a [**digital media server (DMS)**](#gt_digital-media-server-dms). Such a device is enabled to include the MCEFs in its [**device description document (DDD)**](#gt_device-description-document-ddd) or User-Agent Header in order to tailor the metadata attributes in the [**XML**](#gt_xml) responses that are provided by the DMS during interaction for enhanced interoperability.

[**Microsoft Media Property Extensions (MMPE)**](#gt_microsoft-media-property-extensions-mmpe) are used to expose several media content properties that are defined by Microsoft. These properties are generally not expressible, or are difficult to express, with the existing UPnP metadata attributes. In order to provide the expected query results with the existing attributes, additional processing capabilities are required on the device. For example, by using the additional properties defined by Microsoft, the device is relieved of the "heavy-lifting" involved in generating similar results and is enabled to provide a richer media browsing experience to their users.

[**Microsoft Power Management Extensions (MPME)**](#gt_microsoft-power-management-extensions-mpme) are used to expose UPnP Device capabilities for power management. For example, a UPnP Device can support sleep mode and accept wake requests from other UPnP Devices. At the same time, a UPnP Device can support waking other UPnP Devices.

The [**Microsoft ProtocolInfo Extensions**](#gt_microsoft-protocolinfo-extensions) are extensions to the [**ProtocolInfo**](#gt_protocolinfo), defined by Microsoft. For example, a [**Digital Media Renderer (DMR)**](#gt_digital-media-renderer-dmr) can use the [PlayToApp extension (section 2.4.1)](#Section_e773e3ec8405435fb4f7b094a176fbd5) to indicate that it supports a nonstandard URI scheme.

<a id="Section_1.4"></a>
## 1.4 Relationship to Protocols and Other Structures

[**MMPE**](#gt_microsoft-media-property-extensions-mmpe) are extensions to the [**XML**](#gt_xml) syntax called [**DIDL-Lite**](#gt_digital-item-declaration-language-didl-lite), which are defined in the [**UPnP**](#gt_universal-plug-and-play-upnp) ContentDirectory service specification. For more information, see [[UPNPCDS1]](https://go.microsoft.com/fwlink/?LinkId=178991) Appendix A.

[**MPME**](#gt_microsoft-power-management-extensions-mpme) are extensions to the XML syntax for UPnP [**DDDs**](#gt_device-description-document-ddd). The DDDs are defined in [[UPNPARCH1]](https://go.microsoft.com/fwlink/?LinkId=90554) section 2.1.

MMPE, [**MCEF**](#gt_microsoft-compatibility-extension-flags-mcef), and MPME can be used in implementations of the Digital Living Network Alliance (DLNA) Home Networked Device Interoperability Guidelines: Microsoft Extensions [MS-DLNHND](../MS-DLNHND/MS-DLNHND.md).

<a id="Section_1.5"></a>
## 1.5 Applicability Statement

The [**MMPE**](#gt_microsoft-media-property-extensions-mmpe) and [**MCEF**](#gt_microsoft-compatibility-extension-flags-mcef) are only applicable to implementations of the Microsoft Extensions to the [**Digital Living Network Alliance (DLNA)**](#gt_digital-living-network-alliance-dlna) Home Networked Device Interoperability Guidelines [MS-DLNHND](../MS-DLNHND/MS-DLNHND.md).

The [**MPME**](#gt_microsoft-power-management-extensions-mpme) is only applicable to implementations of the Microsoft Extensions to the Digital Living Network Alliance (DLNA) Home Networked Device Interoperability Guidelines.

Implementations of the MMPE and/or MCEF and/or MPME are not required in order to interoperate with Windows. The Media Property and Compatibility Extensions enhance the Digital Living Network Alliance (DLNA) Home Networked Device Interoperability Guidelines and the Remote Media Streaming Initiation Protocol without breaking interoperability.

Implementers are recommended to consider whether or not the MMPE and/or MCEF and/or MPME are applicable to their scenarios in order to provide a richer multimedia experience.

<a id="Section_1.6"></a>
## 1.6 Versioning and Localization

The [**MMPE**](#gt_microsoft-media-property-extensions-mmpe), [**MCEF**](#gt_microsoft-compatibility-extension-flags-mcef), and [**MPME**](#gt_microsoft-power-management-extensions-mpme) do not support versioning.

The MMPE, MCEF, and MPME do not explicitly address localization. However, these Microsoft Extensions use the [**UTF-8**](#gt_utf-8) character set, as specified in [[DLNA]](https://go.microsoft.com/fwlink/?LinkId=178990) section 7.2.5.9 and [[RFC3629]](https://go.microsoft.com/fwlink/?LinkId=90439).

<a id="Section_1.7"></a>
## 1.7 Vendor-Extensible Fields

None.

<a id="Section_2"></a>
# 2 Structures

This protocol references commonly used data types, as defined in [MS-DTYP](../MS-DTYP/MS-DTYP.md).

<a id="Section_2.1"></a>
## 2.1 MMPE

Each MMPE is a property that describes a media item, where all but one of the properties can be included in a [**DIDL-Lite**](#gt_digital-item-declaration-language-didl-lite) [**XML**](#gt_xml) document. In the case of the property that is not included, the name of the property is used as the name of an XML tag that is included within a <desc> XML tag, which itself is included within an <item> tag that contains all of the tags associated with the media item.

The properties can also be specified as input parameters to the UPnP ContentDirectory [[UPNPCDS1]](https://go.microsoft.com/fwlink/?LinkId=178991) service Search and Browse actions, wherever those actions allow properties to be used. For example, the ContentDirectory service Search action allows property names to be used to formulate a search query.

- The sourceURL property (section [2.1.5](#Section_2.1.5)) cannot appear in DIDL-Lite
- The XML tags MUST follow the syntax rules for XML defined in [[XML10]](https://go.microsoft.com/fwlink/?LinkId=90600). Unless otherwise specified, any characters in the value of an XML tag MUST be escaped, using the XML escaping mechanism defined in [XML10] section 2.4.
- The syntax of each tag is specified using ABNF [[RFC5234]](https://go.microsoft.com/fwlink/?LinkId=123096).
<a id="Section_2.1.1"></a>
### 2.1.1 Artist Properties

A group of [**XML**](#gt_xml) properties that supports various artist roles, which is included in the multimedia content, such as album artist, performer (also known as a contributing artist), and conductor. Support for the artist properties enables devices to provide results for queries such as "browse by performer, and then find albums by the selected performer".

<a id="Section_2.1.1.1"></a>
#### 2.1.1.1 artistAlbumArtist

This property specifies the name of an artist that is listed on the album when the media item is part of an album (i.e., a music album). For some albums, the name of the album artist can differ from the name of the artist of individual songs.

Multiple instances of this property are allowed.

The syntax of the property is defined as follows:

PropertyName = "microsoft:artistAlbumArtist"; [**UTF-8**](#gt_utf-8)

PropertyValue = ALPHA; UTF-8

MMPE = "<" PropertyName ">" PropertyValue "</" PropertyName ">";

<a id="Section_2.1.1.2"></a>
#### 2.1.1.2 artistPerformer

This property specifies the name of a performing artist that is associated with the media item.

Multiple instances of this property are allowed.

The syntax of the property is defined as follows:

PropertyName = "microsoft:artistPerformer"; [**UTF-8**](#gt_utf-8)

PropertyValue = ALPHA; UTF-8

MMPE = "<" PropertyName ">" PropertyValue "</" PropertyName ">";

<a id="Section_2.1.1.3"></a>
#### 2.1.1.3 artistConductor

This property specifies the name of a conductor (typically, a musical conductor) that is associated with the media item.

Multiple instances of this property are allowed.

The syntax of the property is defined as follows:

PropertyName = "microsoft:artistConductor"; [**UTF-8**](#gt_utf-8)

PropertyValue = ALPHA; UTF-8

MMPE = "<" PropertyName ">" PropertyValue "</" PropertyName ">";

<a id="Section_2.1.2"></a>
### 2.1.2 Author Properties

A group of properties that supports various roles that one or more authors can have in multimedia content: Composer, Original Lyricist, or Writer. Support for the Author attributes enables devices to provide results for queries such as "browse by composer, and then find genres for the selected composer".

<a id="Section_2.1.2.1"></a>
#### 2.1.2.1 authorComposer

Specifies the name of a composer (typically, a musical composer) that is associated with the media item.

Multiple instances of this property are allowed.

The syntax of the property is defined as follows:

PropertyName = "microsoft:authorComposer"; [**UTF-8**](#gt_utf-8)

PropertyValue = ALPHA; UTF-8

MMPE = "<" PropertyName ">" PropertyValue "</" PropertyName ">";

<a id="Section_2.1.2.2"></a>
#### 2.1.2.2 authorOriginalLyricist

This property specifies the name of a person who created the original lyrics of the media item.

Multiple instances of this property are allowed.

The syntax of the property is defined as follows:

PropertyName = "microsoft:authorOriginalLyricist"; [**UTF-8**](#gt_utf-8)

PropertyValue = ALPHA; UTF-8

MMPE = "<" PropertyName ">" PropertyValue "</" PropertyName ">";

<a id="Section_2.1.2.3"></a>
#### 2.1.2.3 authorWriter

This property specifies the name of a person who is considered the writer of the media item.

Multiple instances of this property are allowed.

The syntax of the property is defined as follows:

PropertyName = "microsoft:authorWriter"; [**UTF-8**](#gt_utf-8)

PropertyValue = ALPHA; UTF-8

MMPE = "<" PropertyName ">" PropertyValue "</" PropertyName ">";

<a id="Section_2.1.3"></a>
### 2.1.3 Ratings Properties

The Ratings properties support metadata that is supplied from both the user and from the metadata provider. These properties allow devices to provide "prioritized" or "scoped" results to end users based on their preferences. This enables a user, for example, to choose to browse only musical content that has been rated at "5 or more stars".

There are four Ratings-related properties:

- [userRating](#Section_2.1.3.1) and [userEffectiveRating](#Section_2.1.3.2) represent the user rating (if present) and an automatic rating, respectively. The values of the userRating and userEffectiveRating properties are expressed as a number, in the range between 0 and 99, inclusive.
- [userRatingInStars](#Section_2.1.3.3) and [userEffectiveRatingInStars](#Section_2.1.3.4) represent the same information as userRating and userEffectiveRating, respectively. The values of the userRatingInStars and userEffectiveRatingInStars properties are expressed as a number, in the range between 0 and 5, inclusive.
At most, one instance of each property is allowed.

<a id="Section_2.1.3.1"></a>
#### 2.1.3.1 userRating

The syntax of the property is defined as follows:

PropertyName = "microsoft:userRating"; [**UTF-8**](#gt_utf-8)

PropertyValue = 1*2DIGIT; unsigned integer ranges from 0 to 99

MMPE = "<" PropertyName ">" PropertyValue "</" PropertyName ">";

<a id="Section_2.1.3.2"></a>
#### 2.1.3.2 userEffectiveRating

The syntax of the property is defined as follows:

PropertyName = "microsoft:userEffectiveRating"; [**UTF-8**](#gt_utf-8)

PropertyValue = 1*2DIGIT; unsigned integer ranges from 0 to 99

MMPE = "<" PropertyName ">" PropertyValue "</" PropertyName ">";

<a id="Section_2.1.3.3"></a>
#### 2.1.3.3 userRatingInStars

The syntax of the property is defined as follows:

PropertyName = "microsoft:userRatingInStars"; [**UTF-8**](#gt_utf-8)

PropertyValue = "0" / "1" / "2" / "3" / "4" / "5"; unsigned integer ranges from 0 to 5

MMPE = "<" PropertyName ">" PropertyValue "</" PropertyName ">";

<a id="Section_2.1.3.4"></a>
#### 2.1.3.4 userEffectiveRatingInStars

The syntax of the property is defined as follows:

PropertyName = "microsoft:userEffectiveRatingInStars"; [**UTF-8**](#gt_utf-8)

PropertyValue = "0" / "1" / "2" / "3" / "4" / "5"; unsigned integer ranges from 0 to 5

MMPE = "<" PropertyName ">" PropertyValue "</" PropertyName ">";

<a id="Section_2.1.4"></a>
### 2.1.4 serviceProvider

The serviceProvider property represents the name of the distributor of the media item. The serviceProvider property allows devices to return results categorized by the entity that provided the content.

Multiple instances of this property are allowed.

The syntax of the property is defined as follows:

PropertyName = "microsoft:serviceProvider"; [**UTF-8**](#gt_utf-8)

PropertyValue = ALPHA; UTF-8

MMPE = "<" PropertyName ">" PropertyValue "</" PropertyName ">";

<a id="Section_2.1.5"></a>
### 2.1.5 sourceURL

The sourceURL property supports the grouping of results by file system path, which enables a device to group media files by parent folder. For example, the device can return results that enumerate all of the pictures in the "January Ski Trip to Canada" folder.

**Note** The use of the "ParentID" attribute can provide results similar to sourceURL, but only for a container hierarchy that replicates the file system hierarchy.

At most, one instance of each property is allowed.

The syntax of the property is defined as follows:

PropertyName = "microsoft:sourceURL"; [**UTF-8**](#gt_utf-8)

PropertyValue = ALPHA; UTF-8

MMPE = "<" PropertyName ">" PropertyValue "</" PropertyName ">";

<a id="Section_2.1.6"></a>
### 2.1.6 year

The year property enables the organization of multimedia content based solely on year, whereas the commonly-used "dc:date" [**UPnP**](#gt_universal-plug-and-play-upnp) property provides the whole date. For example, use of the year property enables a device to more easily return results for all of the pictures taken in "2006".

The syntax of the property is defined as follows:

PropertyName = "microsoft:year"; [**UTF-8**](#gt_utf-8)

PropertyValue = 4DIGIT; unsigned integer, format YYYY

MMPE = "<" PropertyName ">" PropertyValue "</" PropertyName ">";

<a id="Section_2.1.7"></a>
### 2.1.7 folderPath

The folderPath property represents a folder path to the media item, relative to a root folder.

At most, one instance of each property is allowed.

The syntax of the property is defined as follows:

PropertyName = "microsoft:folderPath"; [**UTF-8**](#gt_utf-8)

PropertyValue = ALPHA; UTF-8

MMPE = "<" PropertyName ">" PropertyValue "</" PropertyName ">";

<a id="Section_2.1.8"></a>
### 2.1.8 fileIdentifier

The fileIdentifier property is obtained from the media file. The property is assigned by the creator of the media file.<1>

For example, if the same file is shared by two different [**DMS**](#gt_digital-media-server-dms) implementations, although the value of the "id" attribute on the "item" property can be different on each DMS, the value of the fileIdentifier property is the same, since the value is obtained from the file itself.

At most, one instance of each property is allowed.

The syntax of the property is defined as follows:

PropertyName = "microsoft:fileIdentifier"; [**UTF-8**](#gt_utf-8)

PropertyValue = ALPHA; UTF-8

MMPE = "<" PropertyName ">" PropertyValue "</" PropertyName ">";

<a id="Section_2.2"></a>
## 2.2 MCEF

MCEFs are used to define specific behavior(s) for a particular device in order to enhance interoperability. The flags can be provided by a [**DMP**](#gt_digital-media-player-dmp), or [**Digital Media Renderer (DMR)**](#gt_digital-media-renderer-dmr) via its User-Agent header, as described in [MS-DLNHND](../MS-DLNHND/MS-DLNHND.md) or its [**DDD**](#gt_device-description-document-ddd), as defined in [[UPNPARCH1]](https://go.microsoft.com/fwlink/?LinkId=90554) section 2.1. To provide the flag, the device MUST specify the Microsoft-defined microsoft:X_DeviceCaps tag within the Device node of the DDD, as shown in section [3.2.1](../MS-DLNHND/MS-DLNHND.md). The syntax to follow for this tag is specified using ABNF [[RFC5234]](https://go.microsoft.com/fwlink/?LinkId=123096), as follows:

**CompatibilityFlag**= 1*DIGIT; it is the decimal numerical representation of the bitwise-OR operation among the hexadecimal flags used, as defined in section [2.2.1](#Section_2.2.1);

<microsoft:X_DeviceCaps xmlns:microsoft="urn:schemas-microsoft-com:WMPNSS-1-0"/>CompatibilityFlag</microsoft:X_DeviceCaps>

**Note** The Microsoft-defined microsoft:X_DeviceCaps attribute does not change in any respect the manner regarding how DDDs are made available to other devices in the network as, described by [UPNPARCH1].

<a id="Section_2.2.1"></a>
### 2.2.1 Compatibility Flag Values and Behaviors

Any flag value that is not documented in this section is considered reserved and SHOULD not be used.

<a id="Section_2.2.1.1"></a>
#### 2.2.1.1 WMC_COMPAT_EXCLUDE_HTTP

This flag causes a [**DMS**](#gt_digital-media-server-dms) to exclude [**res**](#gt_res) and upnp:albumArtURI elements in the [**DIDL-Lite**](#gt_digital-item-declaration-language-didl-lite) response of the Browse or Search [**UPnP**](#gt_universal-plug-and-play-upnp) actions that implement the [**HTTP**](#gt_hypertext-transfer-protocol-http) protocol in their URLs, as specified in [[UPnP]](https://go.microsoft.com/fwlink/?LinkId=90553).

**Value**: %x1

**This flag affects the response of UPnP Actions:** ContentDirectory:Browse, ContentDirectory:Search, and ConnectionManager:GetProtocolInfo.

<res duration="0:03:20.000" bitrate="24000" protocolInfo="http-get:*:audio/mpeg:DLNA.ORG_PN=MP3;DLNA.ORG_OP=01;DLNA.ORG_FLAGS=01500000000000000000000000000000" sampleFrequency="44100" bitsPerSample="16" nrAudioChannels="2" microsoft:codec="{00000055-0000-0010-8000-00AA00389B71}" xmlns:microsoft="urn:schemas-microsoft-com:WMPNSS-1-0/">http://127.0.0.1:10243/WMPNSSv4/2815481477/0_ezI0OTI3N0I5LUU2MUQtNDdEMi05MTI3LTJBNjFDOTFGM0M5N30uMC40.mp3</res>

<upnp:albumArtURI dlna:profileID="JPEG_TN" xmlns:dlna="urn:schemas-dlna-org:metadata-1-0/">http://127.0.0.1:10243/WMPNSSv4/2815481477/ezI0OTI3N0I5LUU2MUQtNDdEMi05MTI3LTJBNjFDOTFGM0M5N30uMC40.jpg?albumArt=true,formatID=13</upnp:albumArtURI>

When this flag is specified, the value of the protocolInfo attribute, as defined in [[UPNPCDS1]](https://go.microsoft.com/fwlink/?LinkId=178991) section 6, on res elements, only specifies non-HTTP transport-dependent formats. Any res element with a protocolInfo attribute whose value begins with an "http-get" MUST be excluded from the response. For more information regarding the syntax of the [**ProtocolInfo**](#gt_protocolinfo) string, see [[UPNPCNMGR]](https://go.microsoft.com/fwlink/?LinkId=187219).

**Note** This flag MUST NOT be used in combination with [WMC_COMPAT_EXCLUDE_RTSP](#Section_2.2.1.2).

<a id="Section_2.2.1.2"></a>
#### 2.2.1.2 WMC_COMPAT_EXCLUDE_RTSP

This flag causes a [**DMS**](#gt_digital-media-server-dms) to exclude [**res**](#gt_res) elements in the [**DIDL-Lite**](#gt_digital-item-declaration-language-didl-lite) response of the Browse or Search [**UPnP**](#gt_universal-plug-and-play-upnp) actions that implement the [**RTSP**](#gt_real-time-streaming-protocol-rtsp) protocol in their URLs, as specified by [[UPnP]](https://go.microsoft.com/fwlink/?LinkId=90553). Elements in the DIDL-Lite response, as demonstrated in the following syntax block, MUST be removed with the use of this flag.

**Value:** %x2

**This flag affects the response of UPnP Actions**: ContentDirectory:Browse, ContentDirectory:Search, and ConnectionManager:GetProtocolInfo.

<res duration="0:03:20.000" bitrate="24000" protocolInfo="rtsp-rtp-udp:*:audio/mpeg:DLNA.ORG_PN=MP3;DLNA.ORG_OP=10;DLNA.ORG_FLAGS=83100000000000000000000000000000;DLNA.ORG_MAXSP=5" sampleFrequency="44100" bitsPerSample="16" nrAudioChannels="2" microsoft:codec="{00000055-0000-0010-8000-00AA00389B71}" xmlns:microsoft="urn:schemas-microsoft-com:WMPNSS-1-0/">rtsp://127.0.0.1:554/WMPNSSv4/2815481477/0_ezI0OTI3N0I5LUU2MUQtNDdEMi05MTI3LTJBNjFDOTFGM0M5N30uMC40.mp3</res>

A consequence of constructing the DIDL-Lite response as shown in this example is that the value of the protocolInfo attribute, as defined in [[UPNPCDS1]](https://go.microsoft.com/fwlink/?LinkId=178991) section 6, on res elements MUST specify only non-RTSP transport-dependent formats. Any res element with a protocolInfo attribute whose value begins with "rtsp-rtp-udp" MUST be excluded from the response. For more information regarding the syntax of the [**ProtocolInfo**](#gt_protocolinfo) string, see [[UPNPCNMGR]](https://go.microsoft.com/fwlink/?LinkId=187219).

**Note** This flag MUST NOT be used in combination with [WMC_COMPAT_EXCLUDE_HTTP](#Section_2.2.1.1) because at least one protocol (either [**HTTP**](#gt_hypertext-transfer-protocol-http) or RTSP) SHOULD be enabled. This flag MUST NOT be used in combination with [WMC_COMPAT_INCLUDE_RTSP_FOR_VIDEO](#Section_2.2.1.7).

<a id="Section_2.2.1.3"></a>
#### 2.2.1.3 WMC_COMPAT_EXCLUDE_DLNA

This flag causes a [**DMS**](#gt_digital-media-server-dms) to exclude all [**DLNA**](#gt_digital-living-network-alliance-dlna)-defined attributes and parameters in the [**DIDL-Lite**](#gt_digital-item-declaration-language-didl-lite) responses given by the Browse or Search [**UPnP**](#gt_universal-plug-and-play-upnp) actions, as specified by [[UPnP]](https://go.microsoft.com/fwlink/?LinkId=90553).

**Value**: %x4

**This flag affects the response of UPnP Actions**: ContentDirectory:Browse, ContentDirectory:Search, and ConnectionManager:GetProtocolInfo.

**Note** The dlna:profileID and xmlns:dlna attributes MUST NOT be included in the upnp:albumArtURI nodes.

<upnp:albumArtURI dlna:profileID="JPEG_SM" xmlns:dlna="urn:schemas-dlna-org:metadata-1-0/">http://127.0.0.1:10243/WMPNSSv4/2815481477/0_ezI0OTI3N0I5LUU2MUQtNDdEMi05MTI3LTJBNjFDOTFGM0M5N30uMC40.jpg?albumArt=true</upnp:albumArtURI>

The following content feature flags MUST also be removed from the protocolInfo attribute, as defined in [[UPNPCDS1]](https://go.microsoft.com/fwlink/?LinkId=178991) section 6, of [**res**](#gt_res) elements:

- DLNA.ORG_PN
- DLNA.ORG_OP
- DLNA.ORG_PS
- DLNA.ORG_CI
- DLNA.ORG_FLAGS
- DLNA.ORG_MAXSP
<res duration="0:03:20.000" bitrate="24000" protocolInfo="http-get:*:audio/mpeg:DLNA.ORG_PN=MP3;DLNA.ORG_OP=01;DLNA.ORG_FLAGS=01500000000000000000000000000000" sampleFrequency="44100" bitsPerSample="16" nrAudioChannels="2" microsoft:codec="{00000055-0000-0010-8000-00AA00389B71}" xmlns:microsoft="urn:schemas-microsoft-com:WMPNSS-1-0/">http://127.0.0.1:10243/WMPNSSv4/2815481477/0_ezI0OTI3N0I5LUU2MUQtNDdEMi05MTI3LTJBNjFDOTFGM0M5N30uMC40.mp3</res>

Because some devices fall down if the string DLNA exists in the protocol response, the [WMC_COMPAT_EXCLUDE_DLNA_1_5](#Section_2.2.1.4) compatibility flag MUST be set to indicate that the specified attributes have not been included in the upnp:albumArtURI and res nodes. Setting this compatibility flag causes the server to not include the DLNA string as specified in the [**XML**](#gt_xml) response.

Moreover, because DLNA support is non-existent if the [WMC_COMPAT_INCLUDE_RTSP_FOR_VIDEO](#Section_2.2.1.7) flag has been set, it MUST be ignored. By setting this flag, [**RTSP**](#gt_real-time-streaming-protocol-rtsp)-based URLs will be excluded from res nodes in the case of video content.

**Note** In order to preserve backwards compatibility, when the [WMC_COMPAT_EXCLUDE_RTSP](../MS-DLNHND/MS-DLNHND.md) flag is included within the descriptor <desc> tag, it can be escaped as described in [MS-DLNHND](../MS-DLNHND/MS-DLNHND.md) section 3.4.5.1.

In the case of the UPnP action ConnectionManager:GetProtocolInfo, all format support information MUST NOT contain protocol information that announces DLNA profiles, as specified in [[DLNA]](https://go.microsoft.com/fwlink/?LinkId=178990).

http-get:*:audio/x-ms-wma:DLNA.ORG_PN=WMABASE

**Note** The XML tags can be escaped, as described in section [3.1](#Section_3.1) of this document, when this compatibility flag is used.

<a id="Section_2.2.1.4"></a>
#### 2.2.1.4 WMC_COMPAT_EXCLUDE_DLNA_1_5

This flag causes a [**DMS**](#gt_digital-media-server-dms) to map the [**DLNA**](#gt_digital-living-network-alliance-dlna) Profile ID "MP3X" to "MP3", and to map the DLNA Profile IDs "WMVSPLL_BASE" and "WMVSPML_BASE" to "WMVMED_BASE". In addition, this flag causes the DLNA Profile ID for any media item whose DLNA Profile ID begins with "WMDRM_" to be omitted. When this flag is used, all URLs MUST have a file extension, such as ".mp3" for MP3 content and ".pcm" for LPCM content.

**Value:** %x8

**This flag affects the response of UPnP Actions**: ContentDirectory:Browse, ContentDirectory:Search, and ConnectionManager:GetProtocolInfo.

<res duration="0:03:20.000" bitrate="24000" protocolInfo="http-get:*:audio/mpeg:DLNA.ORG_PN=MP3;DLNA.ORG_OP=01;DLNA.ORG_FLAGS=01500000000000000000000000000000" sampleFrequency="44100" bitsPerSample="16" nrAudioChannels="2" microsoft:codec="{00000055-0000-0010-8000-00AA00389B71}" xmlns:microsoft="urn:schemas-microsoft-com:WMPNSS-1-0/">http://127.0.0.1:10243/WMPNSSv4/2815481477/1_ezI0OTI3N0I5LUU2MUQtNDdEMi05MTI3LTJBNjFDOTFGM0M5N30uMC40.mp3</res>

**Note** The [**XML**](#gt_xml) tags can be escaped, as described in section [3.1](#Section_3.1) of this document, when this compatibility flag is used.

<a id="Section_2.2.1.5"></a>
#### 2.2.1.5 WMC_COMPAT_EXCLUDE_PCMPARAMS

This flag causes a [**DMS**](#gt_digital-media-server-dms) to exclude sample rate and channels information from the protocolInfo attribute in the [**res**](#gt_res) element for audio/L16 and audio/L8 MIME types.

**Value**: %x10

**This flag affects the response of UPnP Actions**: ContentDirectory:Browse and ContentDirectory:Search.

<res duration="0:03:20.000" bitrate="176400" protocolInfo="http-get:*:audio/L16;rate=44100;channels=2:DLNA.ORG_PN=LPCM;DLNA.ORG_OP=10;DLNA.ORG_CI=1;DLNA.ORG_FLAGS=01500000000000000000000000000000" sampleFrequency="44100" bitsPerSample="16" nrAudioChannels="2" microsoft:codec="{00000001-0000-0010-8000-00AA00389B71}" xmlns:microsoft="urn:schemas-microsoft-com:WMPNSS-1-0/">http://127.0.0.1:10243/WMPNSSv4/2815481477/ezI0OTI3N0I5LUU2MUQtNDdEMi05MTI3LTJBNjFDOTFGM0M5N30uMC40?formatID=20</res>

<a id="Section_2.2.1.6"></a>
#### 2.2.1.6 WMC_COMPAT_EXCLUDE_WMDRMND

This flag causes a [**DMS**](#gt_digital-media-server-dms) to not generate [**res**](#gt_res) tags where the URL requires the use of WMDRM-ND.

**Value:** %x20

**This flag affects the response of UPnP Actions**: ContentDirectory:Browse and ContentDirectory:Search.

<a id="Section_2.2.1.7"></a>
#### 2.2.1.7 WMC_COMPAT_INCLUDE_RTSP_FOR_VIDEO

This flag causes a [**DMS**](#gt_digital-media-server-dms) to include [**res**](#gt_res) tags with [**RTSP**](#gt_real-time-streaming-protocol-rtsp)-based URLs for video even if [WMC_COMPAT_EXCLUDE_RTSP](#Section_2.2.1.2) and/or [WMC_COMPAT_EXCLUDE_DLNA_1_5](#Section_2.2.1.4) are set.

**Value:** %x40

**This flag affects the response of UPnP Actions**: ContentDirectory:Browse and ContentDirectory:Search.

<a id="Section_2.2.1.8"></a>
#### 2.2.1.8 WMC_COMPAT_EXCLUDE_WMALOSSLESS_NONTRANSCODED

This flag causes a [**DMS**](#gt_digital-media-server-dms) to not generate [**res**](#gt_res) tags with URLs for non-transcoded WMA Lossless content. This flag MUST be ignored if used in combination with [WMC_COMPAT_EXCLUDE_RES_FILTERING](#Section_2.2.1.15).

**Value**: %x80

**This flag affects the response of UPnP Actions**: ContentDirectory:Browse and ContentDirectory:Search.

<a id="Section_2.2.1.9"></a>
#### 2.2.1.9 WMC_COMPAT_EXCLUDE_SEARCH

This flag causes the ContentDirectory:Search [**UPnP**](#gt_universal-plug-and-play-upnp) action to not be supported for this [**DMS**](#gt_digital-media-server-dms). In order to accomplish this action, ContentDirectory:GetSearchCapabilities MUST NOT provide any search capabilities.

**Value:** %x100

**This flag affects the response of UPnP Actions**: ContentDirectory:Search and ContentDirectory:GetSearchCapabilities.

<a id="Section_2.2.1.10"></a>
#### 2.2.1.10 WMC_COMPAT_DO_NOT_LIMIT_RESPONSE_SIZE

This flag causes the [**DIDL-Lite**](#gt_digital-item-declaration-language-didl-lite) responses to not be limited to 200 kB in size for these [**UPnP**](#gt_universal-plug-and-play-upnp) actions.

**Value**: %x400

**This flag affects the response of UPnP Actions**: ContentDirectory:Browse and ContentDirectory:Search.

<a id="Section_2.2.1.11"></a>
#### 2.2.1.11 WMC_COMPAT_EXCLUDE_VIDEO_TRANSCODING

This flag causes a [**DMS**](#gt_digital-media-server-dms) to not offer [**res**](#gt_res) tags with URLs that correspond to transcoded versions of video items. This flag MUST be ignored if used in combination with [WMC_COMPAT_EXCLUDE_RES_FILTERING](#Section_2.2.1.15).

**Value**: %x800

**This flag affects the response of UPnP Actions**: ContentDirectory:Browse and ContentDirectory:Search.

<a id="Section_2.2.1.12"></a>
#### 2.2.1.12 WMC_COMPAT_PLAYLIST_FAKECHILDCOUNT

This flag causes a value of "1" to be returned for the child count of playlists containers. This flag is used to counteract the reduction in performance caused by calculating the "real" child count for playlist container.

**Value:** %x1000

**This flag affects the response of UPnP Actions**: ContentDirectory:Browse and ContentDirectory:Search.

<a id="Section_2.2.1.13"></a>
#### 2.2.1.13 WMC_COMPAT_EXCLUDE_NONPCM_AUDIO_TRANSCODING

This flag causes [**res**](#gt_res) tags with URLs that correspond to transcoded versions of audio items to not be offered, unless the res tag is for an audio item transcoded into LPCM. This flag MUST be ignored if used in combination with [WMC_COMPAT_EXCLUDE_RES_FILTERING](#Section_2.2.1.15).

**Value**: %x2000

**This flag affects the response of UPnP Actions**: ContentDirectory:Browse and ContentDirectory:Search.

<a id="Section_2.2.1.14"></a>
#### 2.2.1.14 WMC_COMPAT_EXCLUDE_TRANSCODING_TO_MPEG2

This flag causes [**res**](#gt_res) tags with URLs that correspond to transcoded versions of video items into the MPEG-2 format to not be offered. This flag MUST be ignored if used in combination with [WMC_COMPAT_EXCLUDE_RES_FILTERING](#Section_2.2.1.15).

**Value**: %x4000

**This flag affects the response of UPnP Actions**: ContentDirectory:Browse and ContentDirectory:Search.

<a id="Section_2.2.1.15"></a>
#### 2.2.1.15 WMC_COMPAT_EXCLUDE_RES_FILTERING

All [**DIDL-Lite**](#gt_digital-item-declaration-language-didl-lite) responses from a [**DMS**](#gt_digital-media-server-dms) MUST contain all applicable transcoding [**res**](#gt_res) elements associated to the requested media.

**Value**: %x8000

**This flag affects the response of UPnP Actions**: ContentDirectory:Browse and ContentDirectory:Search.

<a id="Section_2.3"></a>
## 2.3 MPME

[**MPMEs**](#gt_microsoft-power-management-extensions-mpme) are used to signal support for specific behaviors for a particular device in order to enhance power management. The MPME XML tags can be provided by a [**DMR**](#gt_digital-media-renderer-dmr) or a [**DMS**](#gt_digital-media-server-dms) in its [**DDD**](#gt_device-description-document-ddd), as described in [[UPNPARCH1]](https://go.microsoft.com/fwlink/?LinkId=90554) section 2.1. This section defines the MPME XML tags.

<a id="Section_2.3.1"></a>
### 2.3.1 Magic Packets

This section defines [**MPME**](#gt_microsoft-power-management-extensions-mpme) XML tags for indicating support for magic packets. For more information about magic packets, see [MS-DLNHND](../MS-DLNHND/MS-DLNHND.md) section 2.2.5.

<a id="Section_2.3.1.1"></a>
#### 2.3.1.1 microsoft:magicPacketWakeSupported

This is an [**XML**](#gt_xml) tag that a [**UPnP**](#gt_universal-plug-and-play-upnp) device provides in its [**DDD**](#gt_device-description-document-ddd) to announce that it can be awakened by the use of a magic packet.<2>

For more information about the syntax of magic packet, see [MS-DLNHND](../MS-DLNHND/MS-DLNHND.md) section 2.2.5.

An UPnP device MUST only provide this information if it implements a low power mode of operation.

An UPnP device that can be woken from a low power mode MUST provide the following tag in its DDD:

flag = "1" / "0"; true or false, respectively.

<microsoft:magicPacketWakeSupported xmlns:microsoft="urn:schemas-microsoft-com:WMPNSS-1-0">flag</microsoft:magicPacketWakeSupported>

<a id="Section_2.3.1.2"></a>
#### 2.3.1.2 microsoft:magicPacketSendSupported

This is an [**XML**](#gt_xml) tag that a [**UPnP**](#gt_universal-plug-and-play-upnp) device provides in its [**DDD**](#gt_device-description-document-ddd) to announce whether the device is able to wake a sleeping UPnP device.<3> The following syntax shows how the element is used to announce this capability.

flag = "1" / "0"; true or false respectively.

<microsoft:magicPacketSendSupported xmlns:microsoft="urn:schemas-microsoft-com:WMPNSS-1-0">flag</microsoft:magicPacketSendSupported>

<a id="Section_2.4"></a>
## 2.4 Microsoft ProtocolInfo Extensions

The [**Microsoft ProtocolInfo Extensions**](#gt_microsoft-protocolinfo-extensions) extend the syntax of the [**ProtocolInfo**](#gt_protocolinfo) syntax element, as described in [[UPNPCNMGR]](https://go.microsoft.com/fwlink/?LinkId=187219) section 2.5.2.

<a id="Section_2.4.1"></a>
### 2.4.1 PlayToApp Extension

The PlayToApp [**ProtocolInfo**](#gt_protocolinfo) extension can be used by [**DMR**](#gt_digital-media-renderer-dmr) devices to specify support for additional URI schemes beyond those defined in [[UPNPCNMGR]](https://go.microsoft.com/fwlink/?LinkId=187219) sections 5.1.1 through 5.1.4.<4>

The PlayToApp ProtocolInfo extension adheres to the extension mechanism for ProtocolInfo as defined in [UPNPCNMGR] section 5.1.5.

The syntax of the extension is defined as follows:

CustomURIScheme = 1*( ALPHA / DIGIT / "-" )

Protocol = "microsoft.com"

Network = "*"

ContentFormat = "application/vnd.ms-playtoapp;target=" DQUOTE CustomURIScheme DQUOTE

AdditionalInfo = "*"

PlayToApp = Protocol ":" Network ":" ContentFormat ":" AdditionalInfo

<a id="Section_3"></a>
# 3 Structure Examples

<a id="Section_3.1"></a>
## 3.1 MMPE Examples

In order to preserve backwards compatibility, [**XML**](#gt_xml) tags inside the descriptor <desc> tag can be escaped. For more information, refer to [MS-DLNHND](../MS-DLNHND/MS-DLNHND.md) section 3.4.5.1. For example, "<microsoft:artistAlbumArtist>" can appear as "<microsoft:artistAlbumArtist>" in the XML response.

<a id="Section_3.1.1"></a>
### 3.1.1 Artist Properties Tags

The following is an example of the usage of the Artist properties in an [**XML**](#gt_xml) response:

<desc id="Artist" nameSpace="urn:schemas-microsoft-com:WMPNSS-1-0/" xmlns:microsoft="urn:schemas-microsoft-com:WMPNSS-1-0/">

<microsoft:artistAlbumArtist>Album</microsoft:artistAlbumArtist>

<microsoft:artistPerformer>Performer</microsoft:artistPerformer>

<microsoft:artistConductor>Conductor</microsoft:artistConductor>

</desc>

<a id="Section_3.1.2"></a>
### 3.1.2 Author Properties Tags

The following is an example of the usage of the Author properties in an [**XML**](#gt_xml) response:

<desc id="Author" nameSpace="urn:schemas-microsoft-com:WMPNSS-1-0/" xmlns:microsoft="urn:schemas-microsoft-com:WMPNSS-1-0/">

<microsoft:authorComposer>Composer</microsoft:authorComposer>

<microsoft:authorOriginalLyricist>Lyricist</microsoft:authorOriginalLyricist>

<microsoft:authorWriter>Writer</microsoft:authorWriter>

</desc>

<a id="Section_3.1.3"></a>
### 3.1.3 Ratings Properties Tags

The following is an example of the usage of the Ratings properties in an [**XML**](#gt_xml) response:

<desc id="UserRating" nameSpace="urn:schemas-microsoft-com:WMPNSS-1-0/" xmlns:microsoft="urn:schemas-microsoft-com:WMPNSS-1-0/">

<microsoft:userRating>50</microsoft:userRating>

<microsoft:userEffectiveRating>60</microsoft:userEffectiveRating>

<microsoft:userRatingInStars>3</microsoft:userRatingInStars>

<microsoft:userEffectiveRatingInStars>3</microsoft:userEffectiveRatingInStars>

</desc>

<a id="Section_3.1.4"></a>
### 3.1.4 serviceProvider Property Tag

The following is an example of the usage of the serviceProvider property in an [**XML**](#gt_xml) response:

<desc id="ServiceProvider" nameSpace="urn:schemas-microsoft-com:WMPNSS-1-0/" xmlns:microsoft="urn:schemas-microsoft-com:WMPNSS-1-0/">

<microsoft:serviceProvider>Service Provider</microsoft:serviceProvider>

</desc>

<a id="Section_3.1.5"></a>
### 3.1.5 year Property Tag

The following is an example of the usage of the year property in an [**XML**](#gt_xml) response:

<desc id="Year" nameSpace="urn:schemas-microsoft-com:WMPNSS-1-0/" xmlns:microsoft="urn:schemas-microsoft-com:WMPNSS-1-0/">

<microsoft:year>2004</microsoft:year>

</desc>

<a id="Section_3.1.6"></a>
### 3.1.6 folderPath Property Tag

The following is an example of the usage of the folderPath property in an [**XML**](#gt_xml) response: <5>

<desc id="folderPath" nameSpace="urn:schemas-microsoft-com:WMPNSS-1-0/" xmlns:microsoft="urn:schemas-microsoft-com:WMPNSS-1-0/">

<microsoft:folderPath>Audio\Songs</microsoft:folderPath>

</desc>

<a id="Section_3.1.7"></a>
### 3.1.7 fileIdentifier Property Tag

The following is an example of the usage of the fileIdentifier property (section [2.1.8](#Section_2.1.8)) in an [**XML**](#gt_xml) response:

<desc id="fileInfo" nameSpace="urn:schemas-microsoft-com:WMPNSS-1-0/" xmlns:microsoft="urn:schemas-microsoft-com:WMPNSS-1-0/">

<microsoft:fileIdentifier>AMGt_id=T 821854;AMGp_id=P 4744;AMGa_id=R 78327;X_id={5E8A0C00-0500-11DB-89CA-0019B92A3933};XA_id={F7310100-0400-11DB-89CA-0019B92A3933};XAP_id={88120000-0600-11DB-89CA-0019B92A3933}</microsoft:fileIdentifier>

</desc>

<a id="Section_3.2"></a>
## 3.2 MCEF Examples

<a id="Section_3.2.1"></a>
### 3.2.1 X_DeviceCaps Example

Device compatibility flags are specified in a [**DDD**](#gt_device-description-document-ddd) by using the following format:

<device>

<UDN>uuid:00000000-1111-2222-3333-444444444444</UDN>

<friendlyName>Sample Renderer</friendlyName>

<deviceType>urn:schemas-upnp-org:device:MediaRenderer:1</deviceType>

<manufacturer>Microsoft</manufacturer>

...

<microsoft:X_DeviceCaps xmlns:microsoft="urn:schemas-microsoft-com:WMPNSS-1-0">94</microsoft:X_DeviceCaps>

</device>

Use of microsoft:X_DeviceCaps requires that the Microsoft [**XML**](#gt_xml) namespace (urn:schemas-microsoft-com:WMPNSS-1-0) be specified in the DDD. The value for microsoft:X_DeviceCaps is given in decimal and represents a bitwise OR combination of the individual compatibility flag values described in section [2.2](#Section_2.2). In this example, the value of "94" for microsoft:X_DeviceCaps indicates the following compatibility flags:

- [WMC_COMPAT_EXCLUDE_RTSP](#Section_2.2.1.2)
- [WMC_COMPAT_EXCLUDE_DLNA](#Section_2.2.1.3)
- [WMC_COMPAT_EXCLUDE_DLNA_1_5](#Section_2.2.1.4)
- [WMC_COMPAT_EXCLUDE_PCMPARAMS](#Section_2.2.1.5)
- [WMC_COMPAT_INCLUDE_RTSP_FOR_VIDEO](#Section_2.2.1.7)
<a id="Section_3.3"></a>
## 3.3 MPME Examples

<a id="Section_3.3.1"></a>
### 3.3.1 magicPacketWakeSupported

The following example shows a [**DDD**](#gt_device-description-document-ddd) that announces that the [**UPnP**](#gt_universal-plug-and-play-upnp) device supports [microsoft:magicPacketWakeSupported](#Section_2.3.1.1) (section 2.3.1.1). <6>

<device>

<UDN>uuid:00000000-1111-2222-3333-444444444444</UDN>

<friendlyName>Sample Renderer</friendlyName>

<deviceType>urn:schemas-upnp-org:device:MediaRenderer:1</deviceType>

<manufacturer>Microsoft</manufacturer>

...

<microsoft:magicPacketWakeSupported

xmlns:microsoft="urn:schemas-microsoft-com:WMPNSS-1-0">1

</microsoft:magicPacketWakeSupported>

</device>

<a id="Section_3.3.2"></a>
### 3.3.2 magicPacketSendSupported

The following example shows a [**DDD**](#gt_device-description-document-ddd) that announces that the [**UPnP**](#gt_universal-plug-and-play-upnp) device supports [microsoft:magicPacketSendSupported](#Section_2.3.1.2) (section 2.3.1.2). <7>

<device>

<UDN>uuid:00000000-1111-2222-3333-444444444444</UDN>

<friendlyName>Sample Renderer</friendlyName>

<deviceType>urn:schemas-upnp-org:device:MediaRenderer:1</deviceType>

<manufacturer>Microsoft</manufacturer>

...

<microsoft:magicPacketSendSupported

xmlns:microsoft="urn:schemas-microsoft-com:WMPNSS-1-0">1

</microsoft:magicPacketSendSupported>

</device>

<a id="Section_3.4"></a>
## 3.4 Microsoft ProtocolInfo Extensions Examples

<a id="Section_3.4.1"></a>
### 3.4.1 PlayToApp Extension

The following example shows a ProtocolInfo string (section [2.4.1](#Section_2.4.1)) that a [**DMR**](#gt_digital-media-renderer-dmr) device can include in its SinkProtocolInfo state variable ([[UPNPCNMGR]](https://go.microsoft.com/fwlink/?LinkId=187219) section 2.2.2) to declare that it supports playing media using the "example://" URI schemes.

microsoft.com:*:application/vnd.ms-playtoapp;target="example":*

<a id="Section_4"></a>
# 4 Security Considerations

The [**MMPE**](#gt_microsoft-media-property-extensions-mmpe) and [**MCEF**](#gt_microsoft-compatibility-extension-flags-mcef) do not introduce any new security considerations beyond those that already apply to [**XML**](#gt_xml)-based formats. Therefore, the same security considerations that pertain to the [**UPnP**](#gt_universal-plug-and-play-upnp) and [**DLNA guidelines**](#gt_dlna-guidelines) also apply.

<a id="Section_5"></a>
# 5 Appendix A: Product Behavior

The information in this specification is applicable to the following Microsoft products or supplemental software. References to product versions include updates to those products.

- Windows Vista operating system
- Windows 7 operating system
- Windows Home Server 2011 server software
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

<1> Section 2.1.8: The Microsoft:fileIdentifier XML tag is not supported in Windows Vista, Windows 7, and Windows Home Server 2011.

<2> Section 2.3.1.1: The [microsoft:magicPacketWakeSupported](#Section_2.3.1.1) [**XML**](#gt_xml) tag is not supported in Windows Vista.

<3> Section 2.3.1.2: The [microsoft:magicPacketSendSupported](#Section_2.3.1.2) XML tag is not supported in Windows Vista.

<4> Section 2.4.1: The PlayToApp [**ProtocolInfo**](#gt_protocolinfo) extension is not supported in Windows Vista, Windows 7, Windows Home Server 2011, and Windows 8.

<5> Section 3.1.6: The FolderPath XML tag is not supported in Windows Vista.

<6> Section 3.3.1: The microsoft:magicPacketWakeSupported XML tag is not supported in Windows Vista.

<7> Section 3.3.2: The microsoft:magicPacketSendSupported XML tag is not supported in Windows Vista.

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


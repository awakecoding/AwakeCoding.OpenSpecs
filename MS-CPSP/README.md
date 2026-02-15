# [MS-CPSP]: Connection Point Services: Phonebook Data Structure

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
  - [2.1 CPS Phonebook File](#Section_2.1)
  - [2.2 Region File](#Section_2.2)
</details>

<details>
<summary>3 Structure Examples</summary>

- [3 Structure Examples](#Section_3)
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

The Connection Point Services: Phonebook Data Structure specifies a format for documenting point of presence (POP) entry information and a logical grouping of POPs based on their geographic location or area. Connection Point Services (CPS) enables the automatic distribution and updating of custom phone books. These phone book files contain one or more POP entries, with each POP supplying a telephone number that provides dial-up access to an Internet access point. The companion region file contains geographic location information for each POP entry.

Sections 1.7 and 2 of this specification are normative. All other sections and examples in this specification are informative.

<a id="Section_1.1"></a>
## 1.1 Glossary

This document uses the following terms:

<a id="gt_access-control-list-acl"></a>
**access control list (ACL)**: A list of access control entries (ACEs) that collectively describe the security rules for authorizing access to some resource; for example, an object or set of objects.

<a id="gt_ascii"></a>
**ASCII**: The American Standard Code for Information Interchange (ASCII) is an 8-bit character-encoding scheme based on the English alphabet. ASCII codes represent text in computers, communications equipment, and other devices that work with text. ASCII refers to a single 8-bit ASCII character or an array of 8-bit ASCII characters with the high bit of each character set to zero.

<a id="gt_client"></a>
**client**: A computer on which the remote procedure call (RPC) client is executing.

<a id="gt_connection-point-services-cps-phonebook-file"></a>
**Connection Point Services (CPS) phonebook file**: A file that contains [**POP**](#gt_point-of-presence-pop) entries.

<a id="gt_dial-up-networking-dun-client"></a>
**dial-up networking (DUN) client**: The software on a user's client machine that makes the dial-up connection by using a modem or an Integrated Services Digital Network (ISDN) line.

<a id="gt_point-of-presence-pop"></a>
**point of presence (POP)**: The geographic location for which the Internet service provider (ISP) or the administrator of a corporate network provides a local access number.

<a id="gt_pop-entry"></a>
**POP entry**: A [**CPS phonebook file**](#gt_7653fbde-27ea-4593-bf47-46064b0a1c29) entry that contains a local access number for a specific [**region**](#gt_region) in a country. A POP entry also contains other parameters that are useful for end users, enterprise administrators, and Internet service providers (ISPs).

<a id="gt_pop-entry-field"></a>
**POP entry field**: A field in the [**POP entry**](#gt_pop-entry).

<a id="gt_region"></a>
**region**: A geographic location or area information. Region names are stored in a region file.

<a id="gt_region-file"></a>
**region file**: An [**ASCII**](#gt_ascii) text file that is used to store the [**region**](#gt_region) names.

**MAY, SHOULD, MUST, SHOULD NOT, MUST NOT:** These terms (in all caps) are used as defined in [[RFC2119]](https://go.microsoft.com/fwlink/?LinkId=90317). All statements of optional behavior use either MAY, SHOULD, or SHOULD NOT.

<a id="Section_1.2"></a>
## 1.2 References

Links to a document in the Microsoft Open Specifications library point to the correct section in the most recently published version of the referenced document. However, because individual documents in the library are not updated at the same time, the section numbers in the documents may not match. You can confirm the correct section numbering by checking the [Errata](https://go.microsoft.com/fwlink/?linkid=850906).

<a id="Section_1.2.1"></a>
### 1.2.1 Normative References

We conduct frequent surveys of the normative references to assure their continued availability. If you have any issue with finding a normative reference, please contact [dochelp@microsoft.com](mailto:dochelp@microsoft.com). We will assist you in finding the relevant information.

[E164] ITU-T, "The International Public Telecommunication Numbering Plan", Recommendation E.164, February 2005, [http://www.itu.int/rec/T-REC-E.164/e](https://go.microsoft.com/fwlink/?LinkId=89855)

**Note** There is a charge to download the specification.

[RFC2119] Bradner, S., "Key words for use in RFCs to Indicate Requirement Levels", BCP 14, RFC 2119, March 1997, [https://www.rfc-editor.org/info/rfc2119](https://go.microsoft.com/fwlink/?LinkId=90317)

<a id="Section_1.2.2"></a>
### 1.2.2 Informative References

[MSFT-CPS] Microsoft Corporation, "Connection Point Services and Connection Manager", April 2009, [https://technet.microsoft.com/en-us/library/dd672634(v=ws.10).aspx](https://go.microsoft.com/fwlink/?LinkId=130880)

<a id="Section_1.3"></a>
## 1.3 Overview

Users often use a dial-up connection, such as a modem or Integrated Services Digital Network (ISDN), to access resources on the Internet or on a corporate network. The Internet service providers (ISPs) that provide Internet access or the administrators of a corporate network can provide several local access numbers in the geographic areas where they provide service so that users need not pay long-distance charges. These geographic locations with their local access numbers are called [**points of presence (POPs)**](#gt_e1a3cd67-70af-4e44-b8b9-14a7aeac13f9).

The POPs of an ISP or corporate network can change over time and, when they change, the most current POP information has to be published to users in a reliable and cost-effective manner. The [**Connection Point Services (CPS) phonebook file**](#gt_connection-point-services-cps-phonebook-file) data structure specifies a format for documenting [**POP entry**](#gt_pop-entry) information.

Because there can be multiple POP entries in a geographic location or area, and to supply multiple connection options to users, the CPS phonebook file provides a logical grouping of POPs information based on the geographic location or area. For example, an ISDN number that provides higher bandwidth for users who have an ISDN connection may be included. In this document, geographic locations or areas are called [**regions**](#gt_region). Each POP has the information about the region it serves. The list of regions is stored in a separate file known as a [**region file**](#gt_region-file).

The [**dial-up networking (DUN) client**](#gt_dial-up-networking-dun-client) allows the user to select the POP entry of their choice and connect to the network. For example, users can select one local POP entry when they are in India and use another local POP entry if they visit the United States.

<a id="Section_1.4"></a>
## 1.4 Relationship to Protocols and Other Structures

Users can use any suitable transfer mechanism—including copying to a USB flash drive or using a protocol such as File Transfer Protocol (FTP) or Hypertext Transfer Protocol (HTTP)—to retrieve and store, or update, the [**Connection Point Services (CPS) phonebook file**](#gt_connection-point-services-cps-phonebook-file) and [**region file**](#gt_region-file) on their computers.<1>

<a id="Section_1.5"></a>
## 1.5 Applicability Statement

A [**dial-up networking (DUN) client**](#gt_dial-up-networking-dun-client) can use the [**CPS phonebook file**](#gt_7653fbde-27ea-4593-bf47-46064b0a1c29) and [**region file**](#gt_region-file) to connect to the Internet or to a corporate network.

<a id="Section_1.6"></a>
## 1.6 Versioning and Localization

None.

<a id="Section_1.7"></a>
## 1.7 Vendor-Extensible Fields

None.

<a id="Section_2"></a>
# 2 Structures

<a id="Section_2.1"></a>
## 2.1 CPS Phonebook File

The [**CPS phonebook file**](#gt_7653fbde-27ea-4593-bf47-46064b0a1c29) is stored as an [**ASCII**](#gt_ascii) text file. It contains zero or more [**POP**](#gt_point-of-presence-pop) entries that are separated by a line feed/carriage return.

If there are zero [**POP entries**](#gt_1caf1d63-2fef-47b2-bee2-c1132e312569) in the phonebook file, then processing of the phonebook file SHOULD gracefully stop without attempting to read the POP entries.

Each POP entry consists of a sequence of [**POP entry fields**](#gt_pop-entry-field) that are separated by a comma ",". Each POP entry MUST have 10 or 11 commas (the eleventh comma is optional). If the number of commas in a POP entry is less than 10, all subsequent POP entries MUST be ignored. If the number of commas in a POP entry is more than 11, all the POP entries in the CPS phonebook file MUST be ignored.

A POP entry contains the following fields in the following order. All the entries are represented as string values in the ASCII CPS phonebook file:

**POP Index:** This field MUST be an unsigned integer value that is represented as an ASCII string. The POP Index field is optional. If the POP Index contains characters other than numbers (0-9), this POP entry and all the subsequent POP entries MUST be ignored.

**Country Code:** This field MUST be an unsigned integer value that is represented as an ASCII string, as specified in [[E164]](https://go.microsoft.com/fwlink/?LinkId=89855). This field is the code for the country to which the user wants to make a dial-up connection. For example, the country code would be "1" for United States or "91" for India. This field MUST be present. This POP entry MUST be ignored if the country code is not present. All POP entries in the CPS phonebook file MUST be ignored if the Country Code has a nonnumeric character.

**Region Id:** An index of the [**region**](#gt_region) name in the [**region file**](#gt_region-file). This field MUST be an unsigned integer value that is represented as an ASCII string. This field is optional. The index starts with 1 (1-based), which corresponds to the first region name. Index 2 corresponds to the second region name. A value of zero identifies all regions. If the Region Id fails to identify a region, because the Region Id is beyond the number of regions in the file, the POP entry MUST still be processed but without any region information. All POP entries in the CPS phonebook file MUST be ignored if the Region Id has a nonnumeric character.

**POP Name:** The name of the POP entry. All ASCII characters are allowed in the POP Name except the comma ",". This field is optional and, if present, MUST have a maximum length of 31 characters. If the length of the POP Name exceeds 31 characters, the first 31 characters MUST be read as the POP Name and the remaining characters of the POP Name MUST be treated as the next field. However, in this case, all the subsequent POP entries MUST be ignored.

**Area Code:** This field denotes the telephonic area code within the designated country code for the access number. This field MUST be an unsigned integer value that is represented as an ASCII string. This field is optional and if present, MUST have a maximum length of 11 characters and MUST contain zero or more numbers (0-9). If the length exceeds 11 characters, the first 11 characters MUST be read as the Area Code and the remaining characters MUST be treated as the next field. However, in this case, all the subsequent POP entries MUST be ignored. If the Area Code contains non-numeric characters, it MUST be ignored.

**Access Number:** This field denotes the phone number that is used to dial the connection. This field MUST be present and MUST include one or more numbers (0-9), and zero or more number signs "#", asterisks "*", hyphens "-", or spaces " ". If this field is not present, the CPS phonebook file is still parsed, but actual dialing of the dial-up connection will fail. This field MUST have a maximum length of 41 characters. If the length exceeds 41 characters, the first 41 characters MUST be read as the Access Number and the remaining characters MUST be treated as the next field. However, in this case, all the subsequent POP entries MUST be ignored. If the Access Number field contains any characters outside of the allowed list stated above, it MUST still be read, but dialing of the number might fail.

**Minimum Analog Speed:** This field denotes the minimum analog speed, in kilobits per second, of the modem or Integrated Services Digital Network (ISDN) line. This field is optional and, if present, MUST be an unsigned integer value that is represented as an ASCII string. All the POP entries in the CPS phonebook file MUST be ignored if the Minimum Analog Speed has a nonnumeric character.

**Maximum Analog Speed:** This field denotes the maximum analog speed, in kilobits per second, of the modem or ISDN line. This field is optional and, if present, MUST be an unsigned integer value that is represented as an ASCII string. All the POP entries in the CPS phonebook file MUST be ignored if the Maximum Analog Speed has a nonnumeric character.

**Reserved Flag:** This optional field is reserved. If present, this field MUST be zero or a positive number that is represented as an ASCII string. If the Reserved Flag is a negative number or has a nonnumeric character, all the POP entries in the CPS phonebook file MUST be ignored.

**POP Flag:** This field is a set of flags that are used to specify the properties of the POP entry. If the POP Flag is a negative number or has a nonnumeric character, all the POP entries in the CPS phonebook file MUST be ignored. This field is optional and, if not present, MUST default to zero.

The POP Flag is the decimal representation of the bit sequence that consists of the following flags:

- **Sign on**: This POP Flag denotes that the user MUST authenticate each time the user dials the connection. This POP Flag MUST be zero. Otherwise, this POP entry MUST be ignored.
- **Sign up**: This POP Flag denotes that the POP allows the user to sign up for an account with the service provider.
- **Modem**: This POP Flag denotes that the user can make the connection by using a modem.
- **ISDN**: This POP Flag denotes that the user can dial the connection by using an ISDN line.
- **Custom 1**: This reserved flag SHOULD be zero and MUST be ignored by the [**DUN client**](#gt_8deaf5b3-4526-4f8c-a2c0-df9fdc15399c) for any value of this flag.
- **Multicast**: This POP Flag denotes that POP supports transport of IP multicast datagrams over the dial-up connection.
- **Surcharge**: This POP Flag denotes that the service provider can charge the user a surcharge for connecting to this POP.
- **Custom 2**: This reserved flag MUST be zero and ignored on receipt.
The bit representation of the POP Flag is as follows.

| Bit Range | Field | Description |
| --- | --- | --- |
| Variable | 0 (LSB) | Sign On 0 - Sign On 1 - Not Sign On |
| Variable | 1 | Sign Up 0 - Not Sign Up 1 - Sign Up |
| Variable | 2 | Modem 0 - Modem 1 - Not Modem |
| Variable | 3 | ISDN 0 - ISDN 1 - Not ISDN |
| Variable | 4 | Custom 1 Reserved flag, SHOULD be zero and MUST be ignored |
| Variable | 5 | Multicast 0 - Multicast 1 - Not Multicast |
| Variable | 6 | Surcharge 0 - Not Surcharge 1 - Surcharge |
| Variable | 7 | Custom 2 Reserved flag, must be zero and ignored |

**Dialup Networking Name:** The display name of the POP entry that can be used by the dial-up networking client to correlate any additional information with that POP entry. This optional field has a maximum length of 50 characters. All ASCII characters MUST be allowed in the Dialup Networking Name.

If the length exceeds 50 characters, the first 50 characters MUST be read as the Dialup Networking Name and the remaining characters MUST be ignored.

The Dialup Networking Name is terminated by a line feed/carriage return "\LF\CR\" or a comma ",".

<a id="Section_2.2"></a>
## 2.2 Region File

The [**region file**](#gt_region-file) is an [**ASCII**](#gt_ascii) text file that is used to store the [**region**](#gt_region) names. It contains one or more region names that are separated by line feed/carriage return "\LF\CR\" or comma ",". If the region file contains zero region names, no region information will be read and all [**POP entries**](#gt_1caf1d63-2fef-47b2-bee2-c1132e312569) in the [**phonebook file**](#gt_7653fbde-27ea-4593-bf47-46064b0a1c29) will be without region information.

The first line in the file MUST be an integer that is represented as an ASCII string and that denotes the number of region names in the region file. If the first line in the file contains non-numeric characters, all POP entries in the phonebook will be ignored. If this value is less than the number of region names, then the region names at the index greater than this value MUST be ignored. If the value is greater than the number of region names, then all region names MUST be read.

All the following lines in the file MUST contain the region name, one region per line.

The maximum length of a region name MUST be 31 characters. All ASCII characters MUST be allowed in the region name.

If the length exceeds 31 characters, the first 31 characters MUST be read as the region name and the remaining characters MUST be ignored.

<a id="Section_3"></a>
# 3 Structure Examples

Example of a [**POP entry**](#gt_pop-entry):

The following is an example of a POP entry that is stored in the [**CPS phonebook file**](#gt_7653fbde-27ea-4593-bf47-46064b0a1c29).

23,1,2,Redmond,999,5550134,9600,56000,0,96,\LF\CR

In the previous example, the POP entry fields are interpreted as follows.

POP Index = 23

Country Code = 1

Region Id = 2

POP Name = Redmond

Area Code = 999

Access Number = 5550134

Minimum Analog Speed = 9600

Maximum Analog Speed = 56000

Reserved Flag = 0

POP Flag = 96 (Selected Options: Sign On, Modem, ISDN, Surcharge)

Dialup Networking Name = ""

Another example of a POP entry in a CPS phonebook file (with all the optional fields omitted) follows.

,91,,,,55500123,,,,,,\LF\CR

In the previous example, the POP entry fields are interpreted as follows.

POP Index = 0

Country Code = 91

Region Id = 0

POP Name = ""

Area Code = ""

Access Number = 55500123

Minimum Analog Speed = 0

Maximum Analog Speed = 0

Reserved Flag = 0

POP Flag = 0

Dialup Networking Name = ""

Example of a [**region file**](#gt_region-file).

2\LF\CR

Seattle\LF\CR

Hyderabad\LF\CR

The "2" in the first line denotes the number of region entries in the region file. The entries that follow this line are the region names "Seattle" and "Hyderabad".

<a id="Section_4"></a>
# 4 Security Considerations

The [**CPS phonebook file**](#gt_7653fbde-27ea-4593-bf47-46064b0a1c29) is not protected and is vulnerable to tampering. It is up to the [**client**](#gt_client) to protect this file after copying it.<2>

<a id="Section_5"></a>
# 5 Appendix A: Product Behavior

The information in this specification is applicable to the following Microsoft products or supplemental software. References to product versions include updates to those products.

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
- Windows Server 2019 operating system
- Windows Server 2022 operating system
- Windows 11 operating system
- Windows Server 2025 operating system
Exceptions, if any, are noted in this section. If an update version, service pack or Knowledge Base (KB) number appears with a product name, the behavior changed in that update. The new behavior also applies to subsequent updates unless otherwise specified. If a product edition appears with the product version, behavior is different in that product edition.

Unless otherwise specified, any statement of optional behavior in this specification that is prescribed using the terms "SHOULD" or "SHOULD NOT" implies product behavior in accordance with the SHOULD or SHOULD NOT prescription. Unless otherwise specified, the term "MAY" implies that the product does not follow the prescription.

<1> Section 1.4: Phonebook Administrator, which is part of Connection Point Services (CPS), can be used on applicable Windows Server releases to create the Phonebook and Region files. Connection Point Services allows hosting of the phonebook and region files on an Internet Information Services (IIS) server. Connection Manager running on [**clients**](#gt_client) can download these files from the IIS server using Hypertext Transport Protocol (HTTP). For more information about CPS, refer to [[MSFT-CPS]](https://go.microsoft.com/fwlink/?LinkId=130880).

<2> Section 4: In Windows, the [**CPS phonebook file**](#gt_7653fbde-27ea-4593-bf47-46064b0a1c29) inherits the [**access control lists (ACLs)**](#gt_access-control-list-acl) of the parent folder.

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


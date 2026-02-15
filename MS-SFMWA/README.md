# [MS-SFMWA]: Server and File Management Web APIs Protocol

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
  - [2.2 Common Data Types](#Section_2.2)
    - [2.2.1 Namespaces](#Section_2.2.1)
    - [2.2.2 HTTP Headers](#Section_2.2.2)
      - [2.2.2.1 AppName](#Section_2.2.2.1)
      - [2.2.2.2 AppPublisherName](#Section_2.2.2.2)
      - [2.2.2.3 AppVersion](#Section_2.2.2.3)
      - [2.2.2.4 Authorization](#Section_2.2.2.4)
      - [2.2.2.5 Canary](#Section_2.2.2.5)
      - [2.2.2.6 Accept](#Section_2.2.2.6)
      - [2.2.2.7 Range](#Section_2.2.2.7)
    - [2.2.3 Common URI Parameters](#Section_2.2.3)
      - [2.2.3.1 alertkey](#Section_2.2.3.1)
      - [2.2.3.2 amount](#Section_2.2.3.2)
      - [2.2.3.3 ascending](#Section_2.2.3.3)
      - [2.2.3.4 containerpath](#Section_2.2.3.4)
      - [2.2.3.5 count](#Section_2.2.3.5)
      - [2.2.3.6 deletecontents](#Section_2.2.3.6)
      - [2.2.3.7 description](#Section_2.2.3.7)
      - [2.2.3.8 deviceid](#Section_2.2.3.8)
      - [2.2.3.9 email](#Section_2.2.3.9)
      - [2.2.3.10 emails](#Section_2.2.3.10)
      - [2.2.3.11 filter](#Section_2.2.3.11)
      - [2.2.3.12 firstname](#Section_2.2.3.12)
      - [2.2.3.13 groupguid](#Section_2.2.3.13)
      - [2.2.3.14 groupingdata](#Section_2.2.3.14)
      - [2.2.3.15 groupingmethoddata](#Section_2.2.3.15)
      - [2.2.3.16 heightdata](#Section_2.2.3.16)
      - [2.2.3.17 id](#Section_2.2.3.17)
      - [2.2.3.18 index](#Section_2.2.3.18)
      - [2.2.3.19 isoriginaldata](#Section_2.2.3.19)
      - [2.2.3.20 keywords](#Section_2.2.3.20)
      - [2.2.3.21 language](#Section_2.2.3.21)
      - [2.2.3.22 lastname](#Section_2.2.3.22)
      - [2.2.3.23 localusername](#Section_2.2.3.23)
      - [2.2.3.24 mediatypedata](#Section_2.2.3.24)
      - [2.2.3.25 name](#Section_2.2.3.25)
      - [2.2.3.26 newname](#Section_2.2.3.26)
      - [2.2.3.27 newpath](#Section_2.2.3.27)
      - [2.2.3.28 onlineusername](#Section_2.2.3.28)
      - [2.2.3.29 originalpath](#Section_2.2.3.29)
      - [2.2.3.30 overwrite](#Section_2.2.3.30)
      - [2.2.3.31 overwritepermissions](#Section_2.2.3.31)
      - [2.2.3.32 path](#Section_2.2.3.32)
      - [2.2.3.33 permission](#Section_2.2.3.33)
      - [2.2.3.34 query](#Section_2.2.3.34)
      - [2.2.3.35 remotewebaccess](#Section_2.2.3.35)
      - [2.2.3.36 requestedcountdata](#Section_2.2.3.36)
      - [2.2.3.37 scope](#Section_2.2.3.37)
      - [2.2.3.38 servername](#Section_2.2.3.38)
      - [2.2.3.39 shallowdata](#Section_2.2.3.39)
      - [2.2.3.40 sharename](#Section_2.2.3.40)
      - [2.2.3.41 sizedata](#Section_2.2.3.41)
      - [2.2.3.42 sortbyfield](#Section_2.2.3.42)
      - [2.2.3.43 sortorderdata](#Section_2.2.3.43)
      - [2.2.3.44 sortpropertydata](#Section_2.2.3.44)
      - [2.2.3.45 startingindex](#Section_2.2.3.45)
      - [2.2.3.46 startingindexdata](#Section_2.2.3.46)
      - [2.2.3.47 timeoutseconds](#Section_2.2.3.47)
      - [2.2.3.48 titleonlydata](#Section_2.2.3.48)
      - [2.2.3.49 usergroups](#Section_2.2.3.49)
      - [2.2.3.50 userid](#Section_2.2.3.50)
      - [2.2.3.51 username](#Section_2.2.3.51)
      - [2.2.3.52 usersid](#Section_2.2.3.52)
      - [2.2.3.53 vpnaccess](#Section_2.2.3.53)
      - [2.2.3.54 widthdata](#Section_2.2.3.54)
    - [2.2.4 Complex Types](#Section_2.2.4)
      - [2.2.4.1 AlertInfo](#Section_2.2.4.1)
      - [2.2.4.2 ArrayOfAlertInfo](#Section_2.2.4.2)
      - [2.2.4.3 ArrayOfConnectionInfo](#Section_2.2.4.3)
      - [2.2.4.4 ArrayOfDeviceInfo](#Section_2.2.4.4)
      - [2.2.4.5 ArrayOfDriveInfo](#Section_2.2.4.5)
      - [2.2.4.6 ArrayOfFolderInfo](#Section_2.2.4.6)
      - [2.2.4.7 ArrayOfGroupInfo](#Section_2.2.4.7)
      - [2.2.4.8 ArrayOfItemInfo](#Section_2.2.4.8)
      - [2.2.4.9 ArrayOfLink](#Section_2.2.4.9)
      - [2.2.4.10 ArrayOfMailbox](#Section_2.2.4.10)
      - [2.2.4.11 ArrayOfMetadataBase](#Section_2.2.4.11)
      - [2.2.4.12 ArrayOfMetadataItemStream](#Section_2.2.4.12)
      - [2.2.4.13 ArrayOfMSODomain](#Section_2.2.4.13)
      - [2.2.4.14 ArrayOfMSOLicense](#Section_2.2.4.14)
      - [2.2.4.15 ArrayOfMSOLicenseService](#Section_2.2.4.15)
      - [2.2.4.16 ArrayOfMSOLicenseSubscription](#Section_2.2.4.16)
      - [2.2.4.17 ArrayOfMSOLicenseSuite](#Section_2.2.4.17)
      - [2.2.4.18 ArrayOfMSOUser](#Section_2.2.4.18)
      - [2.2.4.19 ArrayOfStorageDriveInfo](#Section_2.2.4.19)
      - [2.2.4.20 ArrayOfStorageServerInfo](#Section_2.2.4.20)
      - [2.2.4.21 ArrayOfstring](#Section_2.2.4.21)
      - [2.2.4.22 ArrayOfUserInfo](#Section_2.2.4.22)
      - [2.2.4.23 ArrayOfWebApiProvider](#Section_2.2.4.23)
      - [2.2.4.24 CompanyAddress](#Section_2.2.4.24)
      - [2.2.4.25 ConnectionClientInfo](#Section_2.2.4.25)
      - [2.2.4.26 ConnectionInfo](#Section_2.2.4.26)
      - [2.2.4.27 CustomizationInfo](#Section_2.2.4.27)
      - [2.2.4.28 DeviceInfo](#Section_2.2.4.28)
      - [2.2.4.29 DriveInfo](#Section_2.2.4.29)
      - [2.2.4.30 FolderInfo](#Section_2.2.4.30)
      - [2.2.4.31 GroupInfo](#Section_2.2.4.31)
      - [2.2.4.32 ItemInfo](#Section_2.2.4.32)
      - [2.2.4.33 ItemList](#Section_2.2.4.33)
      - [2.2.4.34 ItemThumbnail](#Section_2.2.4.34)
      - [2.2.4.35 Link](#Section_2.2.4.35)
      - [2.2.4.36 Mailbox](#Section_2.2.4.36)
      - [2.2.4.37 Office365Mailbox](#Section_2.2.4.37)
      - [2.2.4.38 ExchangeServerMailbox](#Section_2.2.4.38)
      - [2.2.4.39 HostedMailbox](#Section_2.2.4.39)
      - [2.2.4.40 MetadataBase](#Section_2.2.4.40)
      - [2.2.4.41 MetadataContainer](#Section_2.2.4.41)
      - [2.2.4.42 MetadataDetailResult](#Section_2.2.4.42)
      - [2.2.4.43 MetadataItem](#Section_2.2.4.43)
      - [2.2.4.44 MetadataItemStream](#Section_2.2.4.44)
      - [2.2.4.45 MetadataResult](#Section_2.2.4.45)
      - [2.2.4.46 MetadataStreamResult](#Section_2.2.4.46)
      - [2.2.4.47 MSODomain](#Section_2.2.4.47)
      - [2.2.4.48 MSOLicense](#Section_2.2.4.48)
      - [2.2.4.49 MSOLicenseService](#Section_2.2.4.49)
      - [2.2.4.50 MSOLicenseSubscription](#Section_2.2.4.50)
      - [2.2.4.51 MSOLicenseSuite](#Section_2.2.4.51)
      - [2.2.4.52 MSOTenantInformation](#Section_2.2.4.52)
      - [2.2.4.53 MSOUser](#Section_2.2.4.53)
      - [2.2.4.54 PartialCollection_Of_AlertInfo](#Section_2.2.4.54)
      - [2.2.4.55 PartialCollection_Of_ConnectionInfo](#Section_2.2.4.55)
      - [2.2.4.56 PartialCollection_Of_DeviceInfo](#Section_2.2.4.56)
      - [2.2.4.57 PartialCollection_Of_DriveInfo](#Section_2.2.4.57)
      - [2.2.4.58 PartialCollection_Of_FolderInfo](#Section_2.2.4.58)
      - [2.2.4.59 PartialCollection_Of_UserInfo](#Section_2.2.4.59)
      - [2.2.4.60 ReadOnlyCollectionOfGroupInfoEV6sb80H](#Section_2.2.4.60)
      - [2.2.4.61 ReadOnlyCollectionOfMSOLicensepPGX_Pb6b](#Section_2.2.4.61)
      - [2.2.4.62 ReadOnlyCollectionOfMSOLicenseServicepPGX_Pb6b](#Section_2.2.4.62)
      - [2.2.4.63 ReadOnlyCollectionOfMSOLicenseSubscriptionpPGX_Pb6b](#Section_2.2.4.63)
      - [2.2.4.64 ReadOnlyCollectionOfMSOLicenseSuitepPGX_Pb6b](#Section_2.2.4.64)
      - [2.2.4.65 RemoteConnectionUserInfo](#Section_2.2.4.65)
      - [2.2.4.66 SearchItemList](#Section_2.2.4.66)
      - [2.2.4.67 ServerInfo](#Section_2.2.4.67)
      - [2.2.4.68 SharePointSiteAddressCollection](#Section_2.2.4.68)
      - [2.2.4.69 StorageDriveInfo](#Section_2.2.4.69)
      - [2.2.4.70 StorageServerInfo](#Section_2.2.4.70)
      - [2.2.4.71 UserInfo](#Section_2.2.4.71)
      - [2.2.4.72 WebApiProvider](#Section_2.2.4.72)
    - [2.2.5 Simple Types](#Section_2.2.5)
      - [2.2.5.1 ContainerType](#Section_2.2.5.1)
      - [2.2.5.2 guid](#Section_2.2.5.2)
      - [2.2.5.3 MSODomainTypes](#Section_2.2.5.3)
      - [2.2.5.4 MSOLicenseServiceTypes](#Section_2.2.5.4)
      - [2.2.5.5 Permission](#Section_2.2.5.5)
      - [2.2.5.6 ServerFolderType](#Section_2.2.5.6)
      - [2.2.5.7 ThumbnailFormat](#Section_2.2.5.7)
      - [2.2.5.8 StreamBody](#Section_2.2.5.8)
      - [2.2.5.9 char](#Section_2.2.5.9)
      - [2.2.5.10 duration](#Section_2.2.5.10)
</details>

<details>
<summary>3 Protocol Details</summary>

- [3 Protocol Details](#Section_3)
  - [3.1 SessionService Server Details](#Section_3.1)
    - [3.1.1 Abstract Data Model](#Section_3.1.1)
      - [3.1.1.1 SessionId](#Section_3.1.1.1)
      - [3.1.1.2 Canary](#Section_3.1.1.2)
    - [3.1.2 Timers](#Section_3.1.2)
    - [3.1.3 Initialization](#Section_3.1.3)
    - [3.1.4 Higher-Layer Triggered Events](#Section_3.1.4)
    - [3.1.5 Message Processing Events and Sequencing Rules](#Section_3.1.5)
      - [3.1.5.1 login](#Section_3.1.5.1)
        - [3.1.5.1.1 GET](#Section_3.1.5.1.1)
          - [3.1.5.1.1.1 Request Body](#Section_3.1.5.1.1.1)
          - [3.1.5.1.1.2 Response Body](#Section_3.1.5.1.1.2)
          - [3.1.5.1.1.3 Processing Details](#Section_3.1.5.1.1.3)
      - [3.1.5.2 logout](#Section_3.1.5.2)
        - [3.1.5.2.1 GET](#Section_3.1.5.2.1)
          - [3.1.5.2.1.1 Request Body](#Section_3.1.5.2.1.1)
          - [3.1.5.2.1.2 Response Body](#Section_3.1.5.2.1.2)
          - [3.1.5.2.1.3 Processing Details](#Section_3.1.5.2.1.3)
    - [3.1.6 Timer Events](#Section_3.1.6)
    - [3.1.7 Other Local Events](#Section_3.1.7)
  - [3.2 IFileContentAccessService Server Details](#Section_3.2)
    - [3.2.1 Abstract Data Model](#Section_3.2.1)
    - [3.2.2 Timers](#Section_3.2.2)
    - [3.2.3 Initialization](#Section_3.2.3)
    - [3.2.4 Higher-Layer Triggered Events](#Section_3.2.4)
    - [3.2.5 Message Processing Events and Sequencing Rules](#Section_3.2.5)
      - [3.2.5.1 filecontent?path={path}](#Section_3.2.5.1)
        - [3.2.5.1.1 GET](#Section_3.2.5.1.1)
          - [3.2.5.1.1.1 Request Body](#Section_3.2.5.1.1.1)
          - [3.2.5.1.1.2 Response Body](#Section_3.2.5.1.1.2)
          - [3.2.5.1.1.3 Processing Details](#Section_3.2.5.1.1.3)
      - [3.2.5.2 filecontent?path={path}&overwrite={overwrite}](#Section_3.2.5.2)
        - [3.2.5.2.1 POST](#Section_3.2.5.2.1)
          - [3.2.5.2.1.1 Request Body](#Section_3.2.5.2.1.1)
          - [3.2.5.2.1.2 Response Body](#Section_3.2.5.2.1.2)
          - [3.2.5.2.1.3 Processing Details](#Section_3.2.5.2.1.3)
      - [3.2.5.3 itemthumbnail?path={path}](#Section_3.2.5.3)
        - [3.2.5.3.1 GET](#Section_3.2.5.3.1)
          - [3.2.5.3.1.1 Request Body](#Section_3.2.5.3.1.1)
          - [3.2.5.3.1.2 Response Body](#Section_3.2.5.3.1.2)
          - [3.2.5.3.1.3 Processing Details](#Section_3.2.5.3.1.3)
    - [3.2.6 Timer Events](#Section_3.2.6)
    - [3.2.7 Other Local Events](#Section_3.2.7)
  - [3.3 IFileOperationService Server Details](#Section_3.3)
    - [3.3.1 Abstract Data Model](#Section_3.3.1)
    - [3.3.2 Timers](#Section_3.3.2)
    - [3.3.3 Initialization](#Section_3.3.3)
    - [3.3.4 Higher-Layer Triggered Events](#Section_3.3.4)
    - [3.3.5 Message Processing Events and Sequencing Rules](#Section_3.3.5)
      - [3.3.5.1 items/index/{index}/count/{count}?path={path}&filter={filter}&sortbyfield={sortbyfield}&ascending={ascending}](#Section_3.3.5.1)
        - [3.3.5.1.1 GET](#Section_3.3.5.1.1)
          - [3.3.5.1.1.1 Request Body](#Section_3.3.5.1.1.1)
          - [3.3.5.1.1.2 Response Body](#Section_3.3.5.1.1.2)
          - [3.3.5.1.1.3 Processing Details](#Section_3.3.5.1.1.3)
      - [3.3.5.2 items/index/{index}/count/{count}/search?query={query}&sortbyfield={sortbyfield}&ascending={ascending}&scope={scope}&timeoutseconds={timeoutseconds}](#Section_3.3.5.2)
        - [3.3.5.2.1 GET](#Section_3.3.5.2.1)
          - [3.3.5.2.1.1 Request Body](#Section_3.3.5.2.1.1)
          - [3.3.5.2.1.2 Response Body](#Section_3.3.5.2.1.2)
          - [3.3.5.2.1.3 Processing Details](#Section_3.3.5.2.1.3)
      - [3.3.5.3 folder/newsubfoldername?path={path}&language={language}](#Section_3.3.5.3)
        - [3.3.5.3.1 GET](#Section_3.3.5.3.1)
          - [3.3.5.3.1.1 Request Body](#Section_3.3.5.3.1.1)
          - [3.3.5.3.1.2 Response Body](#Section_3.3.5.3.1.2)
          - [3.3.5.3.1.3 Processing Details](#Section_3.3.5.3.1.3)
      - [3.3.5.4 itemmetadata?path={path}](#Section_3.3.5.4)
        - [3.3.5.4.1 GET](#Section_3.3.5.4.1)
          - [3.3.5.4.1.1 Request Body](#Section_3.3.5.4.1.1)
          - [3.3.5.4.1.2 Response Body](#Section_3.3.5.4.1.2)
          - [3.3.5.4.1.3 Processing Details](#Section_3.3.5.4.1.3)
      - [3.3.5.5 folder?path={path}](#Section_3.3.5.5)
        - [3.3.5.5.1 POST](#Section_3.3.5.5.1)
          - [3.3.5.5.1.1 Request Body](#Section_3.3.5.5.1.1)
          - [3.3.5.5.1.2 Response Body](#Section_3.3.5.5.1.2)
          - [3.3.5.5.1.3 Processing Details](#Section_3.3.5.5.1.3)
      - [3.3.5.6 item/rename?path={path}&newname={newname}](#Section_3.3.5.6)
        - [3.3.5.6.1 POST](#Section_3.3.5.6.1)
          - [3.3.5.6.1.1 Request Body](#Section_3.3.5.6.1.1)
          - [3.3.5.6.1.2 Response Body](#Section_3.3.5.6.1.2)
          - [3.3.5.6.1.3 Processing Details](#Section_3.3.5.6.1.3)
      - [3.3.5.7 item/delete?path={path}](#Section_3.3.5.7)
        - [3.3.5.7.1 POST](#Section_3.3.5.7.1)
          - [3.3.5.7.1.1 Request Body](#Section_3.3.5.7.1.1)
          - [3.3.5.7.1.2 Response Body](#Section_3.3.5.7.1.2)
          - [3.3.5.7.1.3 Processing Details](#Section_3.3.5.7.1.3)
      - [3.3.5.8 accessuri?path={path}](#Section_3.3.5.8)
        - [3.3.5.8.1 GET](#Section_3.3.5.8.1)
          - [3.3.5.8.1.1 Request Body](#Section_3.3.5.8.1.1)
          - [3.3.5.8.1.2 Response Body](#Section_3.3.5.8.1.2)
          - [3.3.5.8.1.3 Processing Details](#Section_3.3.5.8.1.3)
      - [3.3.5.9 item/move?newpath={newpath}&originalpath={originalpath}](#Section_3.3.5.9)
        - [3.3.5.9.1 POST](#Section_3.3.5.9.1)
          - [3.3.5.9.1.1 Request Body](#Section_3.3.5.9.1.1)
          - [3.3.5.9.1.2 Response Body](#Section_3.3.5.9.1.2)
          - [3.3.5.9.1.3 Processing Details](#Section_3.3.5.9.1.3)
      - [3.3.5.10 item/copy?newpath={newpath}&originalpath={originalpath}](#Section_3.3.5.10)
        - [3.3.5.10.1 POST](#Section_3.3.5.10.1)
          - [3.3.5.10.1.1 Request Body](#Section_3.3.5.10.1.1)
          - [3.3.5.10.1.2 Response Body](#Section_3.3.5.10.1.2)
          - [3.3.5.10.1.3 Processing Details](#Section_3.3.5.10.1.3)
    - [3.3.6 Timer Events](#Section_3.3.6)
    - [3.3.7 Other Local Events](#Section_3.3.7)
  - [3.4 IAzureADManagement Server Details](#Section_3.4)
    - [3.4.1 Abstract Data Model](#Section_3.4.1)
      - [3.4.1.1 MSOUser](#Section_3.4.1.1)
      - [3.4.1.2 MSOTenantInformation](#Section_3.4.1.2)
      - [3.4.1.3 ArrayOfMSODomain](#Section_3.4.1.3)
    - [3.4.2 Timers](#Section_3.4.2)
    - [3.4.3 Initialization](#Section_3.4.3)
    - [3.4.4 Higher-Layer Triggered Events](#Section_3.4.4)
    - [3.4.5 Message Processing Events and Sequencing Rules](#Section_3.4.5)
      - [3.4.5.1 msouser?localusername={localusername}](#Section_3.4.5.1)
        - [3.4.5.1.1 GET](#Section_3.4.5.1.1)
          - [3.4.5.1.1.1 Request Body](#Section_3.4.5.1.1.1)
          - [3.4.5.1.1.2 Response Body](#Section_3.4.5.1.1.2)
          - [3.4.5.1.1.3 Processing Details](#Section_3.4.5.1.1.3)
      - [3.4.5.2 msousers](#Section_3.4.5.2)
        - [3.4.5.2.1 GET](#Section_3.4.5.2.1)
          - [3.4.5.2.1.1 Request Body](#Section_3.4.5.2.1.1)
          - [3.4.5.2.1.2 Response Body](#Section_3.4.5.2.1.2)
          - [3.4.5.2.1.3 Processing Details](#Section_3.4.5.2.1.3)
      - [3.4.5.3 msouser/create?localusername={localusername}&onlineusername={onlineusername}](#Section_3.4.5.3)
        - [3.4.5.3.1 POST](#Section_3.4.5.3.1)
          - [3.4.5.3.1.1 Request Body](#Section_3.4.5.3.1.1)
          - [3.4.5.3.1.2 Response Body](#Section_3.4.5.3.1.2)
          - [3.4.5.3.1.3 Processing Details](#Section_3.4.5.3.1.3)
      - [3.4.5.4 msouser/assign?localusername={localusername}&onlineusername={onlineusername}](#Section_3.4.5.4)
        - [3.4.5.4.1 POST](#Section_3.4.5.4.1)
          - [3.4.5.4.1.1 Request Body](#Section_3.4.5.4.1.1)
          - [3.4.5.4.1.2 Response Body](#Section_3.4.5.4.1.2)
          - [3.4.5.4.1.3 Processing Details](#Section_3.4.5.4.1.3)
      - [3.4.5.5 msouser/unassign?localusername={localusername}](#Section_3.4.5.5)
        - [3.4.5.5.1 POST](#Section_3.4.5.5.1)
          - [3.4.5.5.1.1 Request Body](#Section_3.4.5.5.1.1)
          - [3.4.5.5.1.2 Response Body](#Section_3.4.5.5.1.2)
          - [3.4.5.5.1.3 Processing Details](#Section_3.4.5.5.1.3)
      - [3.4.5.6 msouser/enable?localusername={localusername}](#Section_3.4.5.6)
        - [3.4.5.6.1 POST](#Section_3.4.5.6.1)
          - [3.4.5.6.1.1 Request Body](#Section_3.4.5.6.1.1)
          - [3.4.5.6.1.2 Response Body](#Section_3.4.5.6.1.2)
          - [3.4.5.6.1.3 Processing Details](#Section_3.4.5.6.1.3)
      - [3.4.5.7 msouser/disable?localusername={localusername}](#Section_3.4.5.7)
        - [3.4.5.7.1 POST](#Section_3.4.5.7.1)
          - [3.4.5.7.1.1 Request Body](#Section_3.4.5.7.1.1)
          - [3.4.5.7.1.2 Response Body](#Section_3.4.5.7.1.2)
          - [3.4.5.7.1.3 Processing Details](#Section_3.4.5.7.1.3)
      - [3.4.5.8 msouser/delete?localusername={localusername}](#Section_3.4.5.8)
        - [3.4.5.8.1 POST](#Section_3.4.5.8.1)
          - [3.4.5.8.1.1 Request Body](#Section_3.4.5.8.1.1)
          - [3.4.5.8.1.2 Response Body](#Section_3.4.5.8.1.2)
          - [3.4.5.8.1.3 Processing Details](#Section_3.4.5.8.1.3)
      - [3.4.5.9 msodomains](#Section_3.4.5.9)
        - [3.4.5.9.1 GET](#Section_3.4.5.9.1)
          - [3.4.5.9.1.1 Request Body](#Section_3.4.5.9.1.1)
          - [3.4.5.9.1.2 Response Body](#Section_3.4.5.9.1.2)
          - [3.4.5.9.1.3 Processing Details](#Section_3.4.5.9.1.3)
      - [3.4.5.10 msosubscriptioninfo](#Section_3.4.5.10)
        - [3.4.5.10.1 GET](#Section_3.4.5.10.1)
          - [3.4.5.10.1.1 Request Body](#Section_3.4.5.10.1.1)
          - [3.4.5.10.1.2 Response Body](#Section_3.4.5.10.1.2)
          - [3.4.5.10.1.3 Processing Details](#Section_3.4.5.10.1.3)
      - [3.4.5.11 msolicense/set?localusername={localusername}](#Section_3.4.5.11)
        - [3.4.5.11.1 POST](#Section_3.4.5.11.1)
          - [3.4.5.11.1.1 Request Body](#Section_3.4.5.11.1.1)
          - [3.4.5.11.1.2 Response Body](#Section_3.4.5.11.1.2)
          - [3.4.5.11.1.3 Processing Details](#Section_3.4.5.11.1.3)
    - [3.4.6 Timer Events](#Section_3.4.6)
    - [3.4.7 Other Local Events](#Section_3.4.7)
  - [3.5 IMailboxManagement Server Details](#Section_3.5)
    - [3.5.1 Abstract Data Model](#Section_3.5.1)
      - [3.5.1.1 Mailbox](#Section_3.5.1.1)
      - [3.5.1.2 ArrayOfMailbox](#Section_3.5.1.2)
    - [3.5.2 Timers](#Section_3.5.2)
    - [3.5.3 Initialization](#Section_3.5.3)
    - [3.5.4 Higher-Layer Triggered Events](#Section_3.5.4)
    - [3.5.5 Message Processing Events and Sequencing Rules](#Section_3.5.5)
      - [3.5.5.1 mailbox?username={username}](#Section_3.5.5.1)
        - [3.5.5.1.1 GET](#Section_3.5.5.1.1)
          - [3.5.5.1.1.1 Request Body](#Section_3.5.5.1.1.1)
          - [3.5.5.1.1.2 Response Body](#Section_3.5.5.1.1.2)
          - [3.5.5.1.1.3 Processing Details](#Section_3.5.5.1.1.3)
      - [3.5.5.2 mailbox/create?username={username}&email={email}](#Section_3.5.5.2)
        - [3.5.5.2.1 POST](#Section_3.5.5.2.1)
          - [3.5.5.2.1.1 Request Body](#Section_3.5.5.2.1.1)
          - [3.5.5.2.1.2 Response Body](#Section_3.5.5.2.1.2)
          - [3.5.5.2.1.3 Processing Details](#Section_3.5.5.2.1.3)
      - [3.5.5.3 mailbox/set?username={username}&email={email}](#Section_3.5.5.3)
        - [3.5.5.3.1 POST](#Section_3.5.5.3.1)
          - [3.5.5.3.1.1 Request Body](#Section_3.5.5.3.1.1)
          - [3.5.5.3.1.2 Response Body](#Section_3.5.5.3.1.2)
          - [3.5.5.3.1.3 Processing Details](#Section_3.5.5.3.1.3)
      - [3.5.5.4 mailbox/unset?username={username}](#Section_3.5.5.4)
        - [3.5.5.4.1 POST](#Section_3.5.5.4.1)
          - [3.5.5.4.1.1 Request Body](#Section_3.5.5.4.1.1)
          - [3.5.5.4.1.2 Response Body](#Section_3.5.5.4.1.2)
          - [3.5.5.4.1.3 Processing Details](#Section_3.5.5.4.1.3)
      - [3.5.5.5 mailbox/disable?username={username}](#Section_3.5.5.5)
        - [3.5.5.5.1 POST](#Section_3.5.5.5.1)
          - [3.5.5.5.1.1 Request Body](#Section_3.5.5.5.1.1)
          - [3.5.5.5.1.2 Response Body](#Section_3.5.5.5.1.2)
          - [3.5.5.5.1.3 Processing Details](#Section_3.5.5.5.1.3)
      - [3.5.5.6 mailbox/delete?username={username}](#Section_3.5.5.6)
        - [3.5.5.6.1 POST](#Section_3.5.5.6.1)
          - [3.5.5.6.1.1 Request Body](#Section_3.5.5.6.1.1)
          - [3.5.5.6.1.2 Response Body](#Section_3.5.5.6.1.2)
          - [3.5.5.6.1.3 Processing Details](#Section_3.5.5.6.1.3)
      - [3.5.5.7 mailbox/enable?username={username}](#Section_3.5.5.7)
        - [3.5.5.7.1 POST](#Section_3.5.5.7.1)
          - [3.5.5.7.1.1 Request Body](#Section_3.5.5.7.1.1)
          - [3.5.5.7.1.2 Response Body](#Section_3.5.5.7.1.2)
          - [3.5.5.7.1.3 Processing Details](#Section_3.5.5.7.1.3)
      - [3.5.5.8 mailboxes](#Section_3.5.5.8)
        - [3.5.5.8.1 GET](#Section_3.5.5.8.1)
          - [3.5.5.8.1.1 Request Body](#Section_3.5.5.8.1.1)
          - [3.5.5.8.1.2 Response Body](#Section_3.5.5.8.1.2)
          - [3.5.5.8.1.3 Processing Details](#Section_3.5.5.8.1.3)
      - [3.5.5.9 domains](#Section_3.5.5.9)
        - [3.5.5.9.1 GET](#Section_3.5.5.9.1)
          - [3.5.5.9.1.1 Request Body](#Section_3.5.5.9.1.1)
          - [3.5.5.9.1.2 Response Body](#Section_3.5.5.9.1.2)
          - [3.5.5.9.1.3 Processing Details](#Section_3.5.5.9.1.3)
      - [3.5.5.10 mailbox/getemailaddresses?username={username}](#Section_3.5.5.10)
        - [3.5.5.10.1 GET](#Section_3.5.5.10.1)
          - [3.5.5.10.1.1 Request Body](#Section_3.5.5.10.1.1)
          - [3.5.5.10.1.2 Response Body](#Section_3.5.5.10.1.2)
          - [3.5.5.10.1.3 Processing Details](#Section_3.5.5.10.1.3)
      - [3.5.5.11 mailbox/setemailaddresses?username={username}&emails={emails}](#Section_3.5.5.11)
        - [3.5.5.11.1 POST](#Section_3.5.5.11.1)
          - [3.5.5.11.1.1 Request Body](#Section_3.5.5.11.1.1)
          - [3.5.5.11.1.2 Response Body](#Section_3.5.5.11.1.2)
          - [3.5.5.11.1.3 Processing Details](#Section_3.5.5.11.1.3)
    - [3.5.6 Timer Events](#Section_3.5.6)
    - [3.5.7 Other Local Events](#Section_3.5.7)
  - [3.6 IAlertManagement Server Details](#Section_3.6)
    - [3.6.1 Abstract Data Model](#Section_3.6.1)
      - [3.6.1.1 AlertInfo](#Section_3.6.1.1)
    - [3.6.2 Timers](#Section_3.6.2)
    - [3.6.3 Initialization](#Section_3.6.3)
    - [3.6.4 Higher-Layer Triggered Events](#Section_3.6.4)
    - [3.6.5 Message Processing Events and Sequencing Rules](#Section_3.6.5)
      - [3.6.5.1 alerts/index/{startingindex}/count/{amount}](#Section_3.6.5.1)
        - [3.6.5.1.1 GET](#Section_3.6.5.1.1)
          - [3.6.5.1.1.1 Request Body](#Section_3.6.5.1.1.1)
          - [3.6.5.1.1.2 Response Body](#Section_3.6.5.1.1.2)
          - [3.6.5.1.1.3 Processing Details](#Section_3.6.5.1.1.3)
      - [3.6.5.2 alert/enable?alertkey={alertkey}](#Section_3.6.5.2)
        - [3.6.5.2.1 POST](#Section_3.6.5.2.1)
          - [3.6.5.2.1.1 Request Body](#Section_3.6.5.2.1.1)
          - [3.6.5.2.1.2 Response Body](#Section_3.6.5.2.1.2)
          - [3.6.5.2.1.3 Processing Details](#Section_3.6.5.2.1.3)
      - [3.6.5.3 alert/disable?alertkey={alertkey}](#Section_3.6.5.3)
        - [3.6.5.3.1 POST](#Section_3.6.5.3.1)
          - [3.6.5.3.1.1 Request Body](#Section_3.6.5.3.1.1)
          - [3.6.5.3.1.2 Response Body](#Section_3.6.5.3.1.2)
          - [3.6.5.3.1.3 Processing Details](#Section_3.6.5.3.1.3)
      - [3.6.5.4 alert/clear?alertkey={alertkey}](#Section_3.6.5.4)
        - [3.6.5.4.1 POST](#Section_3.6.5.4.1)
          - [3.6.5.4.1.1 Request Body](#Section_3.6.5.4.1.1)
          - [3.6.5.4.1.2 Response Body](#Section_3.6.5.4.1.2)
          - [3.6.5.4.1.3 Processing Details](#Section_3.6.5.4.1.3)
      - [3.6.5.5 alert/repair?alertkey={alertkey}](#Section_3.6.5.5)
        - [3.6.5.5.1 POST](#Section_3.6.5.5.1)
          - [3.6.5.5.1.1 Request Body](#Section_3.6.5.5.1.1)
          - [3.6.5.5.1.2 Response Body](#Section_3.6.5.5.1.2)
          - [3.6.5.5.1.3 Processing Details](#Section_3.6.5.5.1.3)
    - [3.6.6 Timer Events](#Section_3.6.6)
    - [3.6.7 Other Local Events](#Section_3.6.7)
  - [3.7 IDeviceManagement Server Details](#Section_3.7)
    - [3.7.1 Abstract Data Model](#Section_3.7.1)
      - [3.7.1.1 DeviceInfo](#Section_3.7.1.1)
    - [3.7.2 Timers](#Section_3.7.2)
    - [3.7.3 Initialization](#Section_3.7.3)
    - [3.7.4 Higher-Layer Triggered Events](#Section_3.7.4)
    - [3.7.5 Message Processing Events and Sequencing Rules](#Section_3.7.5)
      - [3.7.5.1 devices/index/{startingindex}/count/{amount}](#Section_3.7.5.1)
        - [3.7.5.1.1 GET](#Section_3.7.5.1.1)
          - [3.7.5.1.1.1 Request Body](#Section_3.7.5.1.1.1)
          - [3.7.5.1.1.2 Response Body](#Section_3.7.5.1.1.2)
          - [3.7.5.1.1.3 Processing Details](#Section_3.7.5.1.1.3)
      - [3.7.5.2 device/{deviceid}/startbackup](#Section_3.7.5.2)
        - [3.7.5.2.1 POST](#Section_3.7.5.2.1)
          - [3.7.5.2.1.1 Request Body](#Section_3.7.5.2.1.1)
          - [3.7.5.2.1.2 Response Body](#Section_3.7.5.2.1.2)
          - [3.7.5.2.1.3 Processing Details](#Section_3.7.5.2.1.3)
      - [3.7.5.3 device/{deviceid}/stopbackup](#Section_3.7.5.3)
        - [3.7.5.3.1 POST](#Section_3.7.5.3.1)
          - [3.7.5.3.1.1 Request Body](#Section_3.7.5.3.1.1)
          - [3.7.5.3.1.2 Response Body](#Section_3.7.5.3.1.2)
          - [3.7.5.3.1.3 Processing Details](#Section_3.7.5.3.1.3)
    - [3.7.6 Timer Events](#Section_3.7.6)
    - [3.7.7 Other Local Events](#Section_3.7.7)
  - [3.8 IServiceManagement Server Details](#Section_3.8)
    - [3.8.1 Abstract Data Model](#Section_3.8.1)
      - [3.8.1.1 WebApiProvider](#Section_3.8.1.1)
    - [3.8.2 Timers](#Section_3.8.2)
    - [3.8.3 Initialization](#Section_3.8.3)
    - [3.8.4 Higher-Layer Triggered Events](#Section_3.8.4)
    - [3.8.5 Message Processing Events and Sequencing Rules](#Section_3.8.5)
      - [3.8.5.1 permittedbuiltinservices](#Section_3.8.5.1)
        - [3.8.5.1.1 GET](#Section_3.8.5.1.1)
          - [3.8.5.1.1.1 Request Body](#Section_3.8.5.1.1.1)
          - [3.8.5.1.1.2 Response Body](#Section_3.8.5.1.1.2)
          - [3.8.5.1.1.3 Processing Details](#Section_3.8.5.1.1.3)
    - [3.8.6 Timer Events](#Section_3.8.6)
    - [3.8.7 Other Local Events](#Section_3.8.7)
  - [3.9 IServerManagement Server Details](#Section_3.9)
    - [3.9.1 Abstract Data Model](#Section_3.9.1)
      - [3.9.1.1 WebApiProvider](#Section_3.9.1.1)
    - [3.9.2 Timers](#Section_3.9.2)
    - [3.9.3 Initialization](#Section_3.9.3)
    - [3.9.4 Higher-Layer Triggered Events](#Section_3.9.4)
    - [3.9.5 Message Processing Events and Sequencing Rules](#Section_3.9.5)
      - [3.9.5.1 serverinformation](#Section_3.9.5.1)
        - [3.9.5.1.1 GET](#Section_3.9.5.1.1)
          - [3.9.5.1.1.1 Request Body](#Section_3.9.5.1.1.1)
          - [3.9.5.1.1.2 Response Body](#Section_3.9.5.1.1.2)
          - [3.9.5.1.1.3 Processing Details](#Section_3.9.5.1.1.3)
    - [3.9.6 Timer Events](#Section_3.9.6)
    - [3.9.7 Other Local Events](#Section_3.9.7)
  - [3.10 ICustomizationManagement Server Details](#Section_3.10)
    - [3.10.1 Abstract Data Model](#Section_3.10.1)
      - [3.10.1.1 CustomizationInfo](#Section_3.10.1.1)
    - [3.10.2 Timers](#Section_3.10.2)
    - [3.10.3 Initialization](#Section_3.10.3)
    - [3.10.4 Higher-Layer Triggered Events](#Section_3.10.4)
    - [3.10.5 Message Processing Events and Sequencing Rules](#Section_3.10.5)
      - [3.10.5.1 customizationinformation](#Section_3.10.5.1)
        - [3.10.5.1.1 GET](#Section_3.10.5.1.1)
          - [3.10.5.1.1.1 Request Body](#Section_3.10.5.1.1.1)
          - [3.10.5.1.1.2 Response Body](#Section_3.10.5.1.1.2)
          - [3.10.5.1.1.3 Processing Details](#Section_3.10.5.1.1.3)
    - [3.10.6 Timer Events](#Section_3.10.6)
    - [3.10.7 Other Local Events](#Section_3.10.7)
  - [3.11 IMediaManagement Server Details](#Section_3.11)
    - [3.11.1 Abstract Data Model](#Section_3.11.1)
    - [3.11.2 Timers](#Section_3.11.2)
    - [3.11.3 Initialization](#Section_3.11.3)
    - [3.11.4 Higher-Layer Triggered Events](#Section_3.11.4)
    - [3.11.5 Message Processing Events and Sequencing Rules](#Section_3.11.5)
      - [3.11.5.1 metadata/item/mediatype/{mediatypedata}/groupingmethod/{groupingmethoddata}/sortproperty/{sortpropertydata}/sortorder/{sortorderdata}/index/{startingindexdata}/count/{requestedcountdata}?grouping={groupingdata}](#Section_3.11.5.1)
        - [3.11.5.1.1 GET](#Section_3.11.5.1.1)
          - [3.11.5.1.1.1 Request Body](#Section_3.11.5.1.1.1)
          - [3.11.5.1.1.2 Response Body](#Section_3.11.5.1.1.2)
          - [3.11.5.1.1.3 Processing Details](#Section_3.11.5.1.1.3)
      - [3.11.5.2 metadata/container/mediatype/{mediatypedata}/groupingmethod/{groupingmethoddata}?path={containerpath}](#Section_3.11.5.2)
        - [3.11.5.2.1 GET](#Section_3.11.5.2.1)
          - [3.11.5.2.1.1 Request Body](#Section_3.11.5.2.1.1)
          - [3.11.5.2.1.2 Response Body](#Section_3.11.5.2.1.2)
          - [3.11.5.2.1.3 Processing Details](#Section_3.11.5.2.1.3)
      - [3.11.5.3 search/mediatype/{mediatypedata}/groupingmethod/{groupingmethoddata}/index/{startingindexdata}/count/{requestedcountdata}?keywords={keywords}&grouping={groupingdata}&titleonly={titleonlydata}&shallow={shallowdata}](#Section_3.11.5.3)
        - [3.11.5.3.1 GET](#Section_3.11.5.3.1)
          - [3.11.5.3.1.1 Request Body](#Section_3.11.5.3.1.1)
          - [3.11.5.3.1.2 Response Body](#Section_3.11.5.3.1.2)
          - [3.11.5.3.1.3 Processing Details](#Section_3.11.5.3.1.3)
      - [3.11.5.4 photo/{id}/isoriginal/{isoriginaldata}/width/{widthdata}/height/{heightdata}](#Section_3.11.5.4)
        - [3.11.5.4.1 GET](#Section_3.11.5.4.1)
          - [3.11.5.4.1.1 Request Body](#Section_3.11.5.4.1.1)
          - [3.11.5.4.1.2 Response Body](#Section_3.11.5.4.1.2)
          - [3.11.5.4.1.3 Processing Details](#Section_3.11.5.4.1.3)
      - [3.11.5.5 thumbnail/mediatype/{mediatypedata}/id/{id}/width/{widthdata}/height/{heightdata}](#Section_3.11.5.5)
        - [3.11.5.5.1 GET](#Section_3.11.5.5.1)
          - [3.11.5.5.1.1 Request Body](#Section_3.11.5.5.1.1)
          - [3.11.5.5.1.2 Response Body](#Section_3.11.5.5.1.2)
          - [3.11.5.5.1.3 Processing Details](#Section_3.11.5.5.1.3)
      - [3.11.5.6 testdata?sizedata={sizedata}](#Section_3.11.5.6)
        - [3.11.5.6.1 POST](#Section_3.11.5.6.1)
          - [3.11.5.6.1.1 Request Body](#Section_3.11.5.6.1.1)
          - [3.11.5.6.1.2 Response Body](#Section_3.11.5.6.1.2)
          - [3.11.5.6.1.3 Processing Details](#Section_3.11.5.6.1.3)
      - [3.11.5.7 metadata/streams/mediatype/{mediatypedata}/id/{id}/index/{startingindexdata}/count/{requestedcountdata}](#Section_3.11.5.7)
        - [3.11.5.7.1 GET](#Section_3.11.5.7.1)
          - [3.11.5.7.1.1 Request Body](#Section_3.11.5.7.1.1)
          - [3.11.5.7.1.2 Response Body](#Section_3.11.5.7.1.2)
          - [3.11.5.7.1.3 Processing Details](#Section_3.11.5.7.1.3)
    - [3.11.6 Timer Events](#Section_3.11.6)
    - [3.11.7 Other Local Events](#Section_3.11.7)
  - [3.12 IStorageManagement Server Details](#Section_3.12)
    - [3.12.1 Abstract Data Model](#Section_3.12.1)
      - [3.12.1.1 FolderInfo](#Section_3.12.1.1)
      - [3.12.1.2 StorageDriveInfo](#Section_3.12.1.2)
      - [3.12.1.3 StorageServerInfo](#Section_3.12.1.3)
    - [3.12.2 Timers](#Section_3.12.2)
    - [3.12.3 Initialization](#Section_3.12.3)
    - [3.12.4 Higher-Layer Triggered Events](#Section_3.12.4)
    - [3.12.5 Message Processing Events and Sequencing Rules](#Section_3.12.5)
      - [3.12.5.1 servers](#Section_3.12.5.1)
        - [3.12.5.1.1 GET](#Section_3.12.5.1.1)
          - [3.12.5.1.1.1 Request Body](#Section_3.12.5.1.1.1)
          - [3.12.5.1.1.2 Response Body](#Section_3.12.5.1.1.2)
          - [3.12.5.1.1.3 Processing Details](#Section_3.12.5.1.1.3)
      - [3.12.5.2 storagedriveinfo?servername={servername}](#Section_3.12.5.2)
        - [3.12.5.2.1 GET](#Section_3.12.5.2.1)
          - [3.12.5.2.1.1 Request Body](#Section_3.12.5.2.1.1)
          - [3.12.5.2.1.2 Response Body](#Section_3.12.5.2.1.2)
          - [3.12.5.2.1.3 Processing Details](#Section_3.12.5.2.1.3)
      - [3.12.5.3 serverdrives/index/{index}/count/{count}](#Section_3.12.5.3)
        - [3.12.5.3.1 GET](#Section_3.12.5.3.1)
          - [3.12.5.3.1.1 Request Body](#Section_3.12.5.3.1.1)
          - [3.12.5.3.1.2 Response Body](#Section_3.12.5.3.1.2)
          - [3.12.5.3.1.3 Processing Details](#Section_3.12.5.3.1.3)
      - [3.12.5.4 serverfolders/index/{index}/count/{count}?username={username}](#Section_3.12.5.4)
        - [3.12.5.4.1 GET](#Section_3.12.5.4.1)
          - [3.12.5.4.1.1 Request Body](#Section_3.12.5.4.1.1)
          - [3.12.5.4.1.2 Response Body](#Section_3.12.5.4.1.2)
          - [3.12.5.4.1.3 Processing Details](#Section_3.12.5.4.1.3)
      - [3.12.5.5 serverfolder/create/overwritepermissions/{overwritepermissions}?sharename={sharename}&path={path}&description={description}&servername={servername}](#Section_3.12.5.5)
        - [3.12.5.5.1 POST](#Section_3.12.5.5.1)
          - [3.12.5.5.1.1 Request Body](#Section_3.12.5.5.1.1)
          - [3.12.5.5.1.2 Response Body](#Section_3.12.5.5.1.2)
          - [3.12.5.5.1.3 Processing Details](#Section_3.12.5.5.1.3)
      - [3.12.5.6 serverfolder/{id}/delete/deletecontents/{deletecontents}](#Section_3.12.5.6)
        - [3.12.5.6.1 POST](#Section_3.12.5.6.1)
          - [3.12.5.6.1.1 Request Body](#Section_3.12.5.6.1.1)
          - [3.12.5.6.1.2 Response Body](#Section_3.12.5.6.1.2)
          - [3.12.5.6.1.3 Processing Details](#Section_3.12.5.6.1.3)
      - [3.12.5.7 serverfolder/{id}/rename?newname={newname}](#Section_3.12.5.7)
        - [3.12.5.7.1 POST](#Section_3.12.5.7.1)
          - [3.12.5.7.1.1 Request Body](#Section_3.12.5.7.1.1)
          - [3.12.5.7.1.2 Response Body](#Section_3.12.5.7.1.2)
          - [3.12.5.7.1.3 Processing Details](#Section_3.12.5.7.1.3)
      - [3.12.5.8 serverfolder/{id}/modify/permission/{permission}?username={username}&name={name}&description={description}](#Section_3.12.5.8)
        - [3.12.5.8.1 POST](#Section_3.12.5.8.1)
          - [3.12.5.8.1.1 Request Body](#Section_3.12.5.8.1.1)
          - [3.12.5.8.1.2 Response Body](#Section_3.12.5.8.1.2)
          - [3.12.5.8.1.3 Processing Details](#Section_3.12.5.8.1.3)
      - [3.12.5.9 serverfolder/{id}/modify/usersid/{usersid}/permission/{permission}?name={name}&description={description}](#Section_3.12.5.9)
        - [3.12.5.9.1 POST](#Section_3.12.5.9.1)
          - [3.12.5.9.1.1 Request Body](#Section_3.12.5.9.1.1)
          - [3.12.5.9.1.2 Response Body](#Section_3.12.5.9.1.2)
          - [3.12.5.9.1.3 Processing Details](#Section_3.12.5.9.1.3)
    - [3.12.6 Timer Events](#Section_3.12.6)
    - [3.12.7 Other Local Events](#Section_3.12.7)
  - [3.13 IUserManagement Server Details](#Section_3.13)
    - [3.13.1 Abstract Data Model](#Section_3.13.1)
      - [3.13.1.1 UserInfo](#Section_3.13.1.1)
    - [3.13.2 Timers](#Section_3.13.2)
    - [3.13.3 Initialization](#Section_3.13.3)
    - [3.13.4 Higher-Layer Triggered Events](#Section_3.13.4)
    - [3.13.5 Message Processing Events and Sequencing Rules](#Section_3.13.5)
      - [3.13.5.1 users/index/{startingindex}/count/{amount}](#Section_3.13.5.1)
        - [3.13.5.1.1 GET](#Section_3.13.5.1.1)
          - [3.13.5.1.1.1 Request Body](#Section_3.13.5.1.1.1)
          - [3.13.5.1.1.2 Response Body](#Section_3.13.5.1.1.2)
          - [3.13.5.1.1.3 Processing Details](#Section_3.13.5.1.1.3)
      - [3.13.5.2 usergroups](#Section_3.13.5.2)
        - [3.13.5.2.1 GET](#Section_3.13.5.2.1)
          - [3.13.5.2.1.1 Request Body](#Section_3.13.5.2.1.1)
          - [3.13.5.2.1.2 Response Body](#Section_3.13.5.2.1.2)
          - [3.13.5.2.1.3 Processing Details](#Section_3.13.5.2.1.3)
      - [3.13.5.3 users/connection/index/{startingindex}/count/{amount}?username={username}](#Section_3.13.5.3)
        - [3.13.5.3.1 GET](#Section_3.13.5.3.1)
          - [3.13.5.3.1.1 Request Body](#Section_3.13.5.3.1.1)
          - [3.13.5.3.1.2 Response Body](#Section_3.13.5.3.1.2)
          - [3.13.5.3.1.3 Processing Details](#Section_3.13.5.3.1.3)
      - [3.13.5.4 user/{userid}/enable](#Section_3.13.5.4)
        - [3.13.5.4.1 POST](#Section_3.13.5.4.1)
          - [3.13.5.4.1.1 Request Body](#Section_3.13.5.4.1.1)
          - [3.13.5.4.1.2 Response Body](#Section_3.13.5.4.1.2)
          - [3.13.5.4.1.3 Processing Details](#Section_3.13.5.4.1.3)
      - [3.13.5.5 user/{userid}/disable](#Section_3.13.5.5)
        - [3.13.5.5.1 POST](#Section_3.13.5.5.1)
          - [3.13.5.5.1.1 Request Body](#Section_3.13.5.5.1.1)
          - [3.13.5.5.1.2 Response Body](#Section_3.13.5.5.1.2)
          - [3.13.5.5.1.3 Processing Details](#Section_3.13.5.5.1.3)
      - [3.13.5.6 user/setpassword/{userid}](#Section_3.13.5.6)
        - [3.13.5.6.1 POST](#Section_3.13.5.6.1)
          - [3.13.5.6.1.1 Request Body](#Section_3.13.5.6.1.1)
          - [3.13.5.6.1.2 Response Body](#Section_3.13.5.6.1.2)
          - [3.13.5.6.1.3 Processing Details](#Section_3.13.5.6.1.3)
      - [3.13.5.7 user/{id}/update?firstname={firstname}&lastname={lastname}&remotewebaccess={remotewebaccess}&vpnaccess={vpnaccess}](#Section_3.13.5.7)
        - [3.13.5.7.1 POST](#Section_3.13.5.7.1)
          - [3.13.5.7.1.1 Request Body](#Section_3.13.5.7.1.1)
          - [3.13.5.7.1.2 Response Body](#Section_3.13.5.7.1.2)
          - [3.13.5.7.1.3 Processing Details](#Section_3.13.5.7.1.3)
      - [3.13.5.8 usergroup/{groupguid}/addusers](#Section_3.13.5.8)
        - [3.13.5.8.1 POST](#Section_3.13.5.8.1)
          - [3.13.5.8.1.1 Request Body](#Section_3.13.5.8.1.1)
          - [3.13.5.8.1.2 Response Body](#Section_3.13.5.8.1.2)
          - [3.13.5.8.1.3 Processing Details](#Section_3.13.5.8.1.3)
      - [3.13.5.9 usergroup/{groupguid}/removeusers](#Section_3.13.5.9)
        - [3.13.5.9.1 POST](#Section_3.13.5.9.1)
          - [3.13.5.9.1.1 Request Body](#Section_3.13.5.9.1.1)
          - [3.13.5.9.1.2 Response Body](#Section_3.13.5.9.1.2)
          - [3.13.5.9.1.3 Processing Details](#Section_3.13.5.9.1.3)
      - [3.13.5.10 user/add?username={username}&firstname={firstname}&lastname={lastname}&remotewebaccess={remotewebaccess}&vpnaccess={vpnaccess}&usergroups={usergroups}](#Section_3.13.5.10)
        - [3.13.5.10.1 POST](#Section_3.13.5.10.1)
          - [3.13.5.10.1.1 Request Body](#Section_3.13.5.10.1.1)
          - [3.13.5.10.1.2 Response Body](#Section_3.13.5.10.1.2)
          - [3.13.5.10.1.3 Processing Details](#Section_3.13.5.10.1.3)
      - [3.13.5.11 user/{id}/delete](#Section_3.13.5.11)
        - [3.13.5.11.1 POST](#Section_3.13.5.11.1)
          - [3.13.5.11.1.1 Request Body](#Section_3.13.5.11.1.1)
          - [3.13.5.11.1.2 Response Body](#Section_3.13.5.11.1.2)
          - [3.13.5.11.1.3 Processing Details](#Section_3.13.5.11.1.3)
    - [3.13.6 Timer Events](#Section_3.13.6)
    - [3.13.7 Other Local Events](#Section_3.13.7)
  - [3.14 ISharePointSiteMgmt Server Details](#Section_3.14)
    - [3.14.1 Abstract Data Model](#Section_3.14.1)
    - [3.14.2 Timers](#Section_3.14.2)
    - [3.14.3 Initialization](#Section_3.14.3)
    - [3.14.4 Higher-Layer Triggered Events](#Section_3.14.4)
    - [3.14.5 Message Processing Events and Sequencing Rules](#Section_3.14.5)
      - [3.14.5.1 site](#Section_3.14.5.1)
        - [3.14.5.1.1 GET](#Section_3.14.5.1.1)
          - [3.14.5.1.1.1 Request Body](#Section_3.14.5.1.1.1)
          - [3.14.5.1.1.2 Response Body](#Section_3.14.5.1.1.2)
          - [3.14.5.1.1.3 Processing Details](#Section_3.14.5.1.1.3)
    - [3.14.6 Timer Events](#Section_3.14.6)
    - [3.14.7 Other Local Events](#Section_3.14.7)
  - [3.15 IWindowsPhoneManagement Server Details](#Section_3.15)
    - [3.15.1 Abstract Data Model](#Section_3.15.1)
    - [3.15.2 Timers](#Section_3.15.2)
    - [3.15.3 Initialization](#Section_3.15.3)
    - [3.15.4 Higher-Layer Triggered Events](#Section_3.15.4)
    - [3.15.5 Message Processing Events and Sequencing Rules](#Section_3.15.5)
      - [3.15.5.1 /notification/subscribe?deviceid={deviceid}](#Section_3.15.5.1)
        - [3.15.5.1.1 POST](#Section_3.15.5.1.1)
          - [3.15.5.1.1.1 Request Body](#Section_3.15.5.1.1.1)
          - [3.15.5.1.1.2 Response Body](#Section_3.15.5.1.1.2)
          - [3.15.5.1.1.3 Processing Details](#Section_3.15.5.1.1.3)
      - [3.15.5.2 /notification/unsubscribe?deviceid={deviceid}](#Section_3.15.5.2)
        - [3.15.5.2.1 POST](#Section_3.15.5.2.1)
          - [3.15.5.2.1.1 Request Body](#Section_3.15.5.2.1.1)
          - [3.15.5.2.1.2 Response Body](#Section_3.15.5.2.1.2)
          - [3.15.5.2.1.3 Processing Details](#Section_3.15.5.2.1.3)
    - [3.15.6 Timer Events](#Section_3.15.6)
    - [3.15.7 Other Local Events](#Section_3.15.7)
</details>

<details>
<summary>4 Protocol Examples</summary>

- [4 Protocol Examples](#Section_4)
  - [4.1 Login](#Section_4.1)
  - [4.2 Get Server Information](#Section_4.2)
  - [4.3 Get Server Folders](#Section_4.3)
  - [4.4 Retrieve the Metadata for Items within a Folder](#Section_4.4)
  - [4.5 Create a Folder](#Section_4.5)
  - [4.6 Upload a File](#Section_4.6)
  - [4.7 Logout](#Section_4.7)
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
</details>

<details>
<summary>7 Appendix B: Full Xml Schema</summary>

- [7 Appendix B: Full Xml Schema](#Section_7)
  - [7.1 http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi Schema](#Section_7.1)
  - [7.2 http://schemas.datacontract.org/2004/07/Microsoft.WindowsServerSolutions.Storage Schema](#Section_7.2)
  - [7.3 http://schemas.microsoft.com/2003/10/Serialization/Arrays Schema](#Section_7.3)
  - [7.4 http://schemas.datacontract.org/2004/07/Microsoft.WindowsServerSolutions.AzureADObjectModel Schema](#Section_7.4)
  - [7.5 http://schemas.datacontract.org/2004/07/System.Collections.ObjectModel Schema](#Section_7.5)
  - [7.6 http://schemas.microsoft.com/2003/10/Serialization/ Schema](#Section_7.6)
  - [7.7 http://schemas.datacontract.org/2004/07/Microsoft.WindowsServerSolutions.WebApi.Management.Storage Schema](#Section_7.7)
  - [7.8 http://schemas.datacontract.org/2004/07/Microsoft.WindowsServerSolutions.O365Integration Schema](#Section_7.8)
  - [7.9 http://schemas.microsoft.com/Message Schema](#Section_7.9)
</details>

<details>
<summary>8 Appendix C: Product Behavior</summary>

- [8 Appendix C: Product Behavior](#Section_8)
</details>

<details>
<summary>9 Change Tracking</summary>

- [9 Change Tracking](#Section_9)
</details>
<a id="Section_1"></a>
# 1 Introduction

The Server and File Management Web APIs Protocol is designed to enable access to and management of the server. It also allows users to access files through Web APIs over the Internet or intranet.

Sections 1.5, 1.8, 1.9, 2, and 3 of this specification are normative. All other sections and examples in this specification are informative.

<a id="Section_1.1"></a>
## 1.1 Glossary

This document uses the following terms:

<a id="gt_base64-encoding"></a>
**base64 encoding**: A binary-to-text encoding scheme whereby an arbitrary sequence of bytes is converted to a sequence of printable ASCII characters, as described in [[RFC4648]](https://go.microsoft.com/fwlink/?LinkId=90487).

<a id="gt_distributed-file-system-dfs"></a>
**Distributed File System (DFS)**: A file system that logically groups physical shared folders located on different servers by transparently connecting them to one or more hierarchical namespaces. [**DFS**](#gt_distributed-file-system-dfs) also provides fault-tolerance and load-sharing capabilities.

<a id="gt_globally-unique-identifier-guid"></a>
**globally unique identifier (GUID)**: A term used interchangeably with universally unique identifier (UUID) in Microsoft protocol technical documents (TDs). Interchanging the usage of these terms does not imply or require a specific algorithm or mechanism to generate the value. Specifically, the use of this term does not imply or require that the algorithms described in [[RFC4122]](https://go.microsoft.com/fwlink/?LinkId=90460) or [[C706]](https://go.microsoft.com/fwlink/?LinkId=89824) must be used for generating the [**GUID**](#gt_globally-unique-identifier-guid). See also universally unique identifier (UUID).

<a id="gt_hypertext-transfer-protocol-secure-https"></a>
**Hypertext Transfer Protocol Secure (HTTPS)**: An extension of HTTP that securely encrypts and decrypts web page requests. In some older protocols, "Hypertext Transfer Protocol over Secure Sockets Layer" is still used (Secure Sockets Layer has been deprecated). For more information, see [[SSL3]](https://go.microsoft.com/fwlink/?LinkId=90534) and [[RFC5246]](https://go.microsoft.com/fwlink/?LinkId=129803).

<a id="gt_secure-sockets-layer-ssl"></a>
**Secure Sockets Layer (SSL)**: A security protocol that supports confidentiality and integrity of messages in client and server applications that communicate over open networks. SSL supports server and, optionally, client authentication using X.509 certificates [[X509]](https://go.microsoft.com/fwlink/?LinkId=90590) and [[RFC5280]](https://go.microsoft.com/fwlink/?LinkId=131034). SSL is superseded by Transport Layer Security (TLS). TLS version 1.0 is based on SSL version 3.0 [SSL3].

<a id="gt_security-identifier-sid"></a>
**security identifier (SID)**: An identifier for security principals that is used to identify an account or a group. Conceptually, the [**SID**](#gt_security-identifier-sid) is composed of an account authority portion (typically a domain) and a smaller integer representing an identity relative to the account authority, termed the relative identifier (RID). The [**SID**](#gt_security-identifier-sid) format is specified in [MS-DTYP](../MS-DTYP/MS-DTYP.md) section 2.4.2; a string representation of [**SIDs**](#gt_security-identifier-sid) is specified in [MS-DTYP] section 2.4.2 and [MS-AZOD](../MS-AZOD/MS-AZOD.md) section 1.1.1.2.

<a id="gt_uniform-resource-identifier-uri"></a>
**Uniform Resource Identifier (URI)**: A string that identifies a resource. The URI is an addressing mechanism defined in Internet Engineering Task Force (IETF) Uniform Resource Identifier (URI): Generic Syntax [[RFC3986]](https://go.microsoft.com/fwlink/?LinkId=90453).

<a id="gt_user-principal-name-upn"></a>
**user principal name (UPN)**: A user account name (sometimes referred to as the user logon name) and a domain name that identifies the domain in which the user account is located. This is the standard usage for logging on to a Windows domain. The format is: someone@example.com (in the form of an email address). In Active Directory, the userPrincipalName attribute of the account object, as described in [MS-ADTS](../MS-ADTS/MS-ADTS.md).

<a id="gt_xml"></a>
**XML**: The Extensible Markup Language, as described in [[XML1.0]](https://go.microsoft.com/fwlink/?LinkId=90599).

**MAY, SHOULD, MUST, SHOULD NOT, MUST NOT:** These terms (in all caps) are used as defined in [[RFC2119]](https://go.microsoft.com/fwlink/?LinkId=90317). All statements of optional behavior use either MAY, SHOULD, or SHOULD NOT.

<a id="Section_1.2"></a>
## 1.2 References

Links to a document in the Microsoft Open Specifications library point to the correct section in the most recently published version of the referenced document. However, because individual documents in the library are not updated at the same time, the section numbers in the documents may not match. You can confirm the correct section numbering by checking the [Errata](https://go.microsoft.com/fwlink/?linkid=850906).

<a id="Section_1.2.1"></a>
### 1.2.1 Normative References

We conduct frequent surveys of the normative references to assure their continued availability. If you have any issue with finding a normative reference, please contact [dochelp@microsoft.com](mailto:dochelp@microsoft.com). We will assist you in finding the relevant information.

[RFC2119] Bradner, S., "Key words for use in RFCs to Indicate Requirement Levels", BCP 14, RFC 2119, March 1997, [https://www.rfc-editor.org/info/rfc2119](https://go.microsoft.com/fwlink/?LinkId=90317)

[RFC2616] Fielding, R., Gettys, J., Mogul, J., et al., "Hypertext Transfer Protocol -- HTTP/1.1", RFC 2616, June 1999, [https://www.rfc-editor.org/info/rfc2616](https://go.microsoft.com/fwlink/?LinkId=90372)

[RFC4346] Dierks, T., and Rescorla, E., "The Transport Layer Security (TLS) Protocol Version 1.1", RFC 4346, April 2006, [https://www.rfc-editor.org/info/rfc4346](https://go.microsoft.com/fwlink/?LinkId=90474)

[WSDL] Christensen, E., Curbera, F., Meredith, G., and Weerawarana, S., "Web Services Description Language (WSDL) 1.1", W3C Note, March 2001, [https://www.w3.org/TR/2001/NOTE-wsdl-20010315](https://go.microsoft.com/fwlink/?LinkId=90577)

[XMLNS] Bray, T., Hollander, D., Layman, A., et al., Eds., "Namespaces in XML 1.0 (Third Edition)", W3C Recommendation, December 2009, [https://www.w3.org/TR/2009/REC-xml-names-20091208/](https://go.microsoft.com/fwlink/?LinkId=191840)

[XMLSCHEMA1] Thompson, H., Beech, D., Maloney, M., and Mendelsohn, N., Eds., "XML Schema Part 1: Structures", W3C Recommendation, May 2001, [https://www.w3.org/TR/2001/REC-xmlschema-1-20010502/](https://go.microsoft.com/fwlink/?LinkId=90608)

[XMLSCHEMA2] Biron, P.V., Ed. and Malhotra, A., Ed., "XML Schema Part 2: Datatypes", W3C Recommendation, May 2001, [https://www.w3.org/TR/2001/REC-xmlschema-2-20010502/](https://go.microsoft.com/fwlink/?LinkId=90610)

<a id="Section_1.2.2"></a>
### 1.2.2 Informative References

None.

<a id="Section_1.3"></a>
## 1.3 Overview

The Server and File Management Web APIs Protocol is used to access a REST-based server and for file management over the HTTPS transports.

The protocol exposes a set of built-in web services for third-party developers to build applications on different devices that can access files and manage the server remotely. The protocol also allows third-party developers to add their own web services without the need to handle authentication.

<a id="Section_1.4"></a>
## 1.4 Relationship to Other Protocols

The following figure shows the relationship of this protocol to industry-standard protocols.

![Relationship of Server and File Management Web APIs Protocol to industry-standard protocols](media/image1.png)

Figure 1: Relationship of Server and File Management Web APIs Protocol to industry-standard protocols

<a id="Section_1.5"></a>
## 1.5 Prerequisites/Preconditions

All web services that are exposed in this protocol are hosted in Internet Information Services (IIS) 7.0 so that a user can call web services by using the [**Hypertext Transfer Protocol over Secure Sockets Layer (HTTPS)**](#gt_9239bd88-9747-44a6-83a6-473f53f175a7) protocol. [**Secure Sockets Layer (SSL)**](#gt_secure-sockets-layer-ssl) is required for secure communication.

<a id="Section_1.6"></a>
## 1.6 Applicability Statement

This protocol defines a set of server and file management REST APIs. This protocol is applicable to both Internet and intranet client-server scenarios.

<a id="Section_1.7"></a>
## 1.7 Versioning and Capability Negotiation

This protocol does not provide any mechanism for capability negotiation.

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

This protocol consists of a set of RESTful (representational state transfer) web services.

HTTPS over TCP/IP, as specified in [[RFC2616]](https://go.microsoft.com/fwlink/?LinkId=90372).

All client messages to the server MUST use HTTPS.

Protocol messages MUST be formatted as specified either in [**XML**](#gt_xml) or in Javascript Object Notation (JSON). Protocol server faults MUST be returned by using HTTP status codes as specified in [RFC2616], section 10, "Status Code Definitions".

<a id="Section_2.2"></a>
## 2.2 Common Data Types

This section contains common definitions that are used by this protocol. The syntax of the definitions uses an XML Schema, as specified in [[XMLSCHEMA1]](https://go.microsoft.com/fwlink/?LinkId=90608) and [[XMLSCHEMA2]](https://go.microsoft.com/fwlink/?LinkId=90610), and WSDL, as specified in [[WSDL]](https://go.microsoft.com/fwlink/?LinkId=90577).

<a id="Section_2.2.1"></a>
### 2.2.1 Namespaces

This specification defines and references various XML namespaces by using the mechanisms specified in [[XMLNS]](https://go.microsoft.com/fwlink/?LinkId=191840). Although this specification associates a specific XML namespace prefix for each XML namespace that is used, the choice of any particular XML namespace prefix is implementation-specific and not significant for interoperability.

| Prefix | NameSpaces URI | Reference |
| --- | --- | --- |
| xs | http://www.w3.org/2001/XMLSchema | [XMLSCHEMA] |
| tns1 | http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi | - |
| tns2 | http://schemas.datacontract.org/2004/07/Microsoft.WindowsServerSolutions.Storage | - |
| tns4 | http://schemas.microsoft.com/2003/10/Serialization/Arrays | - |
| tns5 | http://schemas.microsoft.com/2003/10/Serialization/ | - |
| tns6 | http://schemas.datacontract.org/2004/07/Microsoft.WindowsServerSolutions.AzureADObjectModel | - |
| tns7 | http://schemas.datacontract.org/2004/07/System.Collections.ObjectModel | - |
| tns8 | http://schemas.datacontract.org/2004/07/Microsoft.WindowsServerSolutions.WebApi.Management.Storage | - |
| tns9 | http://schemas.datacontract.org/2004/07/Microsoft.WindowsServerSolutions.O365Integration | - |
| tns10 | http://schemas.microsoft.com/Message | - |

<a id="Section_2.2.2"></a>
### 2.2.2 HTTP Headers

The following table summarizes the set of HTTP headers defined by this protocol.

The client MUST either pass Canary header or pass AppName, AppPublisherName, AppVersion, and Authorization to a server when the client calls an API that needs authentication information.

| Header | Description |
| --- | --- |
| Accept | Specifies the acceptable data format for the response. See section [2.2.2.6](#Section_2.2.2.6) |
| AppName | Defines the client application name. See section [2.2.2.1](#Section_2.2.2.1) |
| AppPublisherName | Defines the client application publisher name. See section [2.2.2.2](#Section_2.2.2.2) |
| AppVersion | Defines the client application version. See section [2.2.2.3](#Section_2.2.2.3) |
| Authorization | Defines the user authorization. See section [2.2.2.4](#Section_2.2.2.4) |
| Canary | Defines a user token returned in the Login response header. See section [2.2.2.5](#Section_2.2.2.5) |
| Range | Defines the client request only part of an entity. Bytes are numbered from 0. See section [2.2.2.7](#Section_2.2.2.7). |

<a id="Section_2.2.2.1"></a>
#### 2.2.2.1 AppName

The AppName header defines the client application name.

String = *(%x20-7E)

AppName = String

<a id="Section_2.2.2.2"></a>
#### 2.2.2.2 AppPublisherName

The AppPublisherName header defines the client application publisher name.

String = *(%x20-7E)

AppPublisherName = String

<a id="Section_2.2.2.3"></a>
#### 2.2.2.3 AppVersion

The AppVersion header defines the client application version.

String = *(%x20-7E)

AppVersion = String

<a id="Section_2.2.2.4"></a>
#### 2.2.2.4 Authorization

The Authorization header specifies the user authorization credentials. The client sends requests with an authorization header, the value of which starts with "Basic", followed by a blank space and a [**base64**](#gt_179b9392-9019-45a3-880b-26f6890522b7) encoded string that represents the user name and password separated by a colon.

String = *(%x20-7E)

Authorization = String

<a id="Section_2.2.2.5"></a>
#### 2.2.2.5 Canary

The Canary header is a user token that is returned in the Login response header. The client MUST either pass this header or pass AppName, AppPublisherName, AppVersion, and Authorization to the server.

String = *(%x20-7E)

Canary = String

<a id="Section_2.2.2.6"></a>
#### 2.2.2.6 Accept

The Accept request-header field defines the data format that is acceptable for the response.

The format of the Accept header is as follows:

Accept: "application/json" / "application/xml"

String = *(%x20-7E)

Accept = String

<a id="Section_2.2.2.7"></a>
#### 2.2.2.7 Range

Defines the client request only part of an entity. Bytes are numbered from 0.

This is a standard http header defined in [[RFC2616]](https://go.microsoft.com/fwlink/?LinkId=90372), section 14.35.1, "Byte Ranges"

String = *(%x20-7E)

Range = String

<a id="Section_2.2.3"></a>
### 2.2.3 Common URI Parameters

The following table summarizes the set of Common [**URI**](#gt_uniform-resource-identifier-uri) parameters defined by this protocol.

URI parameters are not case sensitive.

| URI parameter | Description |
| --- | --- |
| alertkey | See section [2.2.3.1](#Section_2.2.3.1) |
| amount | See section [2.2.3.2](#Section_2.2.3.2) |
| ascending | See section [2.2.3.3](#Section_2.2.3.3) |
| containerpath | See section [2.2.3.4](#Section_2.2.3.4) |
| count | See section [2.2.3.5](#Section_2.2.3.5) |
| deletecontents | See section [2.2.3.6](#Section_2.2.3.6) |
| description | See section [2.2.3.7](#Section_2.2.3.7) |
| deviceid | See section [2.2.3.8](#Section_2.2.3.8) |
| email | See section [2.2.3.9](#Section_2.2.3.9) |
| emails | See section [2.2.3.10](#Section_2.2.3.10) |
| filter | See section [2.2.3.11](#Section_2.2.3.11) |
| firstname | See section [2.2.3.12](#Section_2.2.3.12) |
| groupguid | See section [2.2.3.13](#Section_2.2.3.13) |
| groupingdata | See section [2.2.3.14](#Section_2.2.3.14) |
| groupingmethoddata | See section [2.2.3.15](#Section_2.2.3.15) |
| heightdata | See section [2.2.3.16](#Section_2.2.3.16) |
| id | See section [2.2.3.17](#Section_2.2.3.17) |
| index | See section [2.2.3.18](#Section_2.2.3.18) |
| isoriginaldata | See section [2.2.3.19](#Section_2.2.3.19) |
| keywords | See section [2.2.3.20](#Section_2.2.3.20) |
| language | See section [2.2.3.21](#Section_2.2.3.21) |
| lastname | See section [2.2.3.22](#Section_2.2.3.22) |
| localusername | See section [2.2.3.23](#Section_2.2.3.23) |
| mediatypedata | See section [2.2.3.24](#Section_2.2.3.24) |
| name | See section [2.2.3.25](#Section_2.2.3.25) |
| newname | See section [2.2.3.26](#Section_2.2.3.26) |
| newpath | See section [2.2.3.27](#Section_2.2.3.27) |
| onlineusername | See section [2.2.3.28](#Section_2.2.3.28) |
| originalpath | See section [2.2.3.29](#Section_2.2.3.29) |
| overwrite | See section [2.2.3.30](#Section_2.2.3.30) |
| overwritepermissions | See section [2.2.3.31](#Section_2.2.3.31) |
| path | See section [2.2.3.32](#Section_2.2.3.32) |
| permission | See section [2.2.3.33](#Section_2.2.3.33) |
| query | See section [2.2.3.34](#Section_2.2.3.34) |
| remotewebaccess | See section [2.2.3.35](#Section_2.2.3.35) |
| requestedcountdata | See section [2.2.3.36](#Section_2.2.3.36) |
| scope | See section [2.2.3.37](#Section_2.2.3.37) |
| servername | See section [2.2.3.38](#Section_2.2.3.38) |
| shallowdata | See section [2.2.3.39](#Section_2.2.3.39) |
| sharename | See section [2.2.3.40](#Section_2.2.3.40) |
| sizedata | See section [2.2.3.41](#Section_2.2.3.41) |
| sortbyfield | See section [2.2.3.42](#Section_2.2.3.42) |
| sortorderdata | See section [2.2.3.43](#Section_2.2.3.43) |
| sortpropertydata | See section [2.2.3.44](#Section_2.2.3.44) |
| startingindex | See section [2.2.3.45](#Section_2.2.3.45) |
| startingindexdata | See section [2.2.3.46](#Section_2.2.3.46) |
| timeoutseconds | See section [2.2.3.47](#Section_2.2.3.47) |
| titleonlydata | See section [2.2.3.48](#Section_2.2.3.48) |
| usergroups | See section [2.2.3.49](#Section_2.2.3.49) |
| userid | See section [2.2.3.50](#Section_2.2.3.50) |
| username | See section [2.2.3.51](#Section_2.2.3.51) |
| usersid | See section [2.2.3.52](#Section_2.2.3.52) |
| vpnaccess | See section [2.2.3.53](#Section_2.2.3.53) |
| widthdata | See section [2.2.3.54](#Section_2.2.3.54) |

<a id="Section_2.2.3.1"></a>
#### 2.2.3.1 alertkey

The key of an Alert instance. This parameter MUST be included in alert instance operation.

String = *(%x20-7E)

alertkey = String

<a id="Section_2.2.3.2"></a>
#### 2.2.3.2 amount

The *amount* parameter defines the number of items to be retrieved. It SHOULD be a string that can be converted to a positive integer.

String = *(%x20-7E)

amount = String

<a id="Section_2.2.3.3"></a>
#### 2.2.3.3 ascending

The *ascending* parameter is a Boolean value that indicates whether the sorting is ascending.

String = *(%x20-7E)

ascending = String

<a id="Section_2.2.3.4"></a>
#### 2.2.3.4 containerpath

The *containerpath* parameter describes the path to the container. To specify the root container, leave this parameter empty.

String = *(%x20-7E)

containerpath = String

<a id="Section_2.2.3.5"></a>
#### 2.2.3.5 count

The *count* parameter describes the number of items to be retrieved.

String = *(%x20-7E)

count = String

<a id="Section_2.2.3.6"></a>
#### 2.2.3.6 deletecontents

This is a flag that indicates whether the contents of the shared folder have been deleted when the folder is no longer shared.

Set the flag to TRUE to end sharing the folder and to delete the folder contents. Set the flag to FALSE to end sharing the folder without deleting its contents.

String = *(%x20-7E)

deletecontents = String

<a id="Section_2.2.3.7"></a>
#### 2.2.3.7 description

The *description* parameter defines user-friendly description information.

String = *(%x20-7E)

description = String

<a id="Section_2.2.3.8"></a>
#### 2.2.3.8 deviceid

The *deviceid* parameter defines the ID of device. It SHOULD be the [**security identifier (SID)**](#gt_security-identifier-sid) of the device.

String = *(%x20-7E)

deviceid = String

<a id="Section_2.2.3.9"></a>
#### 2.2.3.9 email

The *email* parameter defines the user's email address.

String = *(%x20-7E)

email = String

<a id="Section_2.2.3.10"></a>
#### 2.2.3.10 emails

This parameter defines an array of email addresses.

String = *(%x20-7E)

emails = String

<a id="Section_2.2.3.11"></a>
#### 2.2.3.11 filter

This parameter defines the type of the files to be retrieved. It MUST be All, Multimedia, or Document.

String = *(%x20-7E)

filter = String

<a id="Section_2.2.3.12"></a>
#### 2.2.3.12 firstname

Defines the first name of the user.

String = *(%x20-7E)

firstname = String

<a id="Section_2.2.3.13"></a>
#### 2.2.3.13 groupguid

Defines the he [**GUID**](#gt_globally-unique-identifier-guid) of the Group, which is specified in section [2.2.5.2](#Section_2.2.5.2).

String = *(%x20-7E)

groupguid = String

<a id="Section_2.2.3.14"></a>
#### 2.2.3.14 groupingdata

The *groupingdata* parameter describes the container path. To specify the root container, leave this parameter empty.

String = *(%x20-7E)

groupingdata = String

<a id="Section_2.2.3.15"></a>
#### 2.2.3.15 groupingmethoddata

The *groupingmethoddata* parameter describes the grouping method. Choose from one of the following values.

| Grouping Method Value | Applicable Media Types | Meaning |
| --- | --- | --- |
| album | music | Group by album. |
| albumartist | music | Group by album artist. |
| all | music, photo, or video | Group by media type. |
| artist | music | Group by artist. |
| date | photo | Group by date. |
| folder | photo or video | Group by folder. |
| genre | music | Group by musical genre (style). |
| playlist | music | Group by playlist. |
| rating | music | Group by rating. |

String = *(%x20-7E)

groupingmethoddata = String

<a id="Section_2.2.3.16"></a>
#### 2.2.3.16 heightdata

The *heightdata* parameter describes the height of an image.

String = *(%x20-7E)

heightdata = String

<a id="Section_2.2.3.17"></a>
#### 2.2.3.17 id

The *id* parameter describes the identifier of the item.

String = *(%x20-7E)

id = String

<a id="Section_2.2.3.18"></a>
#### 2.2.3.18 index

The *index* parameter defines the numerical position of the first item to be retrieved.

String = *(%x20-7E)

index = String

<a id="Section_2.2.3.19"></a>
#### 2.2.3.19 isoriginaldata

The *isoriginaldata* parameter describes whether to return the orginal data. If this parameter is set, the *widthdata* and *heightdata* parameters will not take effect, although they are still required in the request.

String = *(%x20-7E)

isoriginaldata = String

<a id="Section_2.2.3.20"></a>
#### 2.2.3.20 keywords

The *keywords* parameter describes a space-separated list of keywords to search for.

String = *(%x20-7E)

keywords = String

<a id="Section_2.2.3.21"></a>
#### 2.2.3.21 language

This parameter defines the language/region code (such as en-us) of the new folder name.

String = *(%x20-7E)

language = String

<a id="Section_2.2.3.22"></a>
#### 2.2.3.22 lastname

This parameter defines the last name of the user.

String = *(%x20-7E)

lastname = String

<a id="Section_2.2.3.23"></a>
#### 2.2.3.23 localusername

This parameter defines the local name of the user.

String = *(%x20-7E)

localusername = String

<a id="Section_2.2.3.24"></a>
#### 2.2.3.24 mediatypedata

The *mediatypedata* parameter describes the media type. Choose from one of the following values.

| Media Type Value | Meaning |
| --- | --- |
| music | Audio clips. |
| photo | Photos. |
| video | Video clips. |

String = *(%x20-7E)

mediatypedata = String

<a id="Section_2.2.3.25"></a>
#### 2.2.3.25 name

This parameter describes the name of item.

String = *(%x20-7E)

name = String

<a id="Section_2.2.3.26"></a>
#### 2.2.3.26 newname

The *newname* parameter describes the new name of the item.

String = *(%x20-7E)

newname = String

<a id="Section_2.2.3.27"></a>
#### 2.2.3.27 newpath

The *newpath* parameter describes the network path that begins with the server name, in the format /ServerName/FolderPath.

String = *(%x20-7E)

newpath = String

<a id="Section_2.2.3.28"></a>
#### 2.2.3.28 onlineusername

This parameter defines the online user’s name.

String = *(%x20-7E)

onlineusername = String

<a id="Section_2.2.3.29"></a>
#### 2.2.3.29 originalpath

The *originalpath* parameter is a network path that begins with the server name, in the format /ServerName/FolderPath.

String = *(%x20-7E)

originalpath = String

<a id="Section_2.2.3.30"></a>
#### 2.2.3.30 overwrite

The *overwrite* flag indicates whether to overwrite the item. It SHOULD be either TRUE or FALSE.

overwrite = TRUE | FALSE

<a id="Section_2.2.3.31"></a>
#### 2.2.3.31 overwritepermissions

This is a flag that indicates whether to overwrite the descriptions on the server folder. It SHOULD be a string of TRUE or FALSE.

overwritepermissions = TRUE | FALSE

<a id="Section_2.2.3.32"></a>
#### 2.2.3.32 path

This parameter is the path of directory or file.

If it is a network path that begins with the server name, it is in this format:

\\ServerName\FolderPath

If it is a local path, the format is as follows:

C:\folderName\ItemName

String = *(%x20-7E)

path = String

<a id="Section_2.2.3.33"></a>
#### 2.2.3.33 permission

The *permissions* parameter defines the user access permissions on a shared folder.

The value SHOULD be a string that can be converted to one of following integers:

- 0: None, no access.
- 1: ReadOnly, read-only access.
- 2: Full, read/write access.
- 3: Other, unknown or unspecified access.
String = *(%x20-7E)

permission = String

<a id="Section_2.2.3.34"></a>
#### 2.2.3.34 query

This parameter defines the string to search for within the names of the files and folders.

String = *(%x20-7E)

query = String

<a id="Section_2.2.3.35"></a>
#### 2.2.3.35 remotewebaccess

This flag indicates whether to allow the user to have remote web access. It SHOULD be either TRUE (to allow the user to have remote web access) or FALSE.

String = *(%x20-7E)

remotewebaccess = String

<a id="Section_2.2.3.36"></a>
#### 2.2.3.36 requestedcountdata

The *requestedcountdata* parameter describes the requested number of media items to be retrieved.

String = *(%x20-7E)

requestedcountdata = String

<a id="Section_2.2.3.37"></a>
#### 2.2.3.37 scope

This is the UNC path of the folder in which the search is performed.

String = *(%x20-7E)

scope = String

<a id="Section_2.2.3.38"></a>
#### 2.2.3.38 servername

This parameter identifies the server name.

String = *(%x20-7E)

servername = String

<a id="Section_2.2.3.39"></a>
#### 2.2.3.39 shallowdata

The *shallowdata* parameter describes whether the search is shallow or deep.

String = *(%x20-7E)

shallowdata = String

<a id="Section_2.2.3.40"></a>
#### 2.2.3.40 sharename

This is the name of the shared folder. It cannot contain the following characters:

- < (less than)
- >(greater than)
- : (colon)
- " (double quote)
- / (forward slash)
- \ (backslash)
- | (vertical bar or pipe)
- ? (question mark)
- * (asterisk)
String = *(%x20-7E)

sharename = String

<a id="Section_2.2.3.41"></a>
#### 2.2.3.41 sizedata

The *sizedata* parameter describes the size of the test data to be retrieved.

String = *(%x20-7E)

sizedata = String

<a id="Section_2.2.3.42"></a>
#### 2.2.3.42 sortbyfield

This is the field of the file item property by which file items are sorted.

String = *(%x20-7E)

sortbyfield = String

<a id="Section_2.2.3.43"></a>
#### 2.2.3.43 sortorderdata

The *sortorderdata* parameter describes the sort order. The following values are allowed.

| Sort Order Value | Meaning |
| --- | --- |
| ASC | Sort in ascending order. |
| default | Sort in the default sort order. |
| DESC | Sort in descending order. |

String = *(%x20-7E)

sortorderdata = String

<a id="Section_2.2.3.44"></a>
#### 2.2.3.44 sortpropertydata

The *sortpropertydata* parameter describes the metadata property on which to sort the media items. The following values are allowed.

| Metadata Property Type | Meaning |
| --- | --- |
| date | Sort by date. |
| default | Sort by the default metadata property type in the web service. |
| title | Sort by title. |

String = *(%x20-7E)

sortpropertydata = String

<a id="Section_2.2.3.45"></a>
#### 2.2.3.45 startingindex

The *startingindex* parameter is the numerical position of the first item to be retrieved. It SHOULD be a string that can be converted to a positive integer.

String = *(%x20-7E)

startingindex = String

<a id="Section_2.2.3.46"></a>
#### 2.2.3.46 startingindexdata

The *startingindexdata* parameter describes the numerical position of the first media item to be retrieved.

String = *(%x20-7E)

startingindexdata = String

<a id="Section_2.2.3.47"></a>
#### 2.2.3.47 timeoutseconds

The *timeoutseconds* parameter defines the number of seconds after which the request times out.

String = *(%x20-7E)

timeoutseconds = String

<a id="Section_2.2.3.48"></a>
#### 2.2.3.48 titleonlydata

The *titleonlydata* parameter describes whether the search is performed on the title only. If this parameter is not specified, the default value is FALSE.

String = *(%x20-7E)

titleonlydata = String

<a id="Section_2.2.3.49"></a>
#### 2.2.3.49 usergroups

The *usergroups* parameter is a list of the group GUIDs separated by commas, as specified in section [2.2.5.2](#Section_2.2.5.2).

String = *(%x20-7E)

usergroups = String

<a id="Section_2.2.3.50"></a>
#### 2.2.3.50 userid

The *userid* identifies the user. It SHOULD be a [**SID**](#gt_security-identifier-sid).

String = *(%x20-7E)

userid = String

<a id="Section_2.2.3.51"></a>
#### 2.2.3.51 username

The username parameter defines the user name and SHOULD be the logon name of the user.

String = *(%x20-7E)

username = String

<a id="Section_2.2.3.52"></a>
#### 2.2.3.52 usersid

This parameter defines the [**security identifier (SID)**](#gt_security-identifier-sid) of a user.

String = *(%x20-7E)

usersid = String

<a id="Section_2.2.3.53"></a>
#### 2.2.3.53 vpnaccess

This is a flag that indicates whether to allow the user to have access to a virtual private network (VPN). It is set to TRUE to allow a user to have access to a VPN; otherwise, it is set to FALSE.

String = *(%x20-7E)

vpnaccess = String

<a id="Section_2.2.3.54"></a>
#### 2.2.3.54 widthdata

The *widthdata* parameter describes the width of an image.

String = *(%x20-7E)

widthdata = String

<a id="Section_2.2.4"></a>
### 2.2.4 Complex Types

The following table summarizes the set of common XML Schema complex type definitions defined by this specification.

| Complex Type | Description |
| --- | --- |
| AlertInfo | The AlertInfo type contains informational data about a Network Health Alert. |
| ArrayOfAlertInfo | This type describes an array of AlertInfo. |
| ArrayOfConnectionInfo | This type describes an array of ConnectionInfo. |
| ArrayOfDeviceInfo | This type describes an array of DeviceInfo. |
| ArrayOfDriveInfo | This type describes an array of DriveInfo. |
| ArrayOfFolderInfo | This type describes an array of FolderInfo. |
| ArrayOfGroupInfo | This type describes an array of GroupInfo. |
| ArrayOfItemInfo | This type describes an array of ItemInfo. |
| ArrayOfLink | This type describes an array of Link. |
| ArrayOfMailbox | This type describes an array of Mailbox. |
| ArrayOfMetadataBase | This type describes an array of MetadataBase. |
| ArrayOfMetadataItemStream | This type describes an array of MetadataItemStream. |
| ArrayOfMSODomain | This type describes an array of MSODomain. |
| ArrayOfMSOLicense | This type describes an array of MSOLicense. |
| ArrayOfMSOLicenseService | This type describes an array of MSOLisenseService. |
| ArrayOfMSOLicenseSubscription | This type describes an array of MSOLicenseSubscription. |
| ArrayOfMSOLicenseSuite | This type contains the license suite information for the online service. |
| ArrayOfMSOUser | This type describes an array of MSOUser. |
| ArrayOfStorageDriveInfo | This type describes an array of StorageDriveInfo. |
| ArrayOfStorageServerInfo | This type describes an array of StorageServerInfo. |
| ArrayOfstring | This type describes an array of string. |
| ArrayOfUserInfo | This type describes an array of UserInfo. |
| ArrayOfWebApiProvider | This type describes an array of WebApiProvider. |
| CompanyAddress | The CompanyAddress type contains the address of the company. |
| ConnectionClientInfo | The ConnectionClientInfo type contains client information of the connection instance. |
| ConnectionInfo | The ConnectionInfo type contains user connection data information. |
| CustomizationInfo | The CustomizationInfo type contains customization data information. |
| DeviceInfo | The DeviceInfo type contains informational data about the device that is managed byWindows. |
| DriveInfo | The DriveInfo type contains informational data about the server drive. |
| FolderInfo | The FolderInfo type contains informational data about the folder that is managed by the server. |
| GroupInfo | The GroupInfo type contains informational data about the group. |
| ItemInfo | The file item metadata. |
| ItemList | The collection of the file item metadata. |
| ItemThumbnail | The ItemThumbnail type contains informational data about Thumbnail. |
| Link | The Link type contains informational data about the customization link. |
| Mailbox | The Mailbox type contains information about the mailbox. |
| MetadataBase | The MetadataBase type is the base type for all the metadata of all the media content. |
| MetadataContainer | The MetadataContainer type describes the container for media content. |
| MetadataDetailResult | The MetadataDetailResult describes the detail information for the metadata container. |
| MetadataItem | The MetadataItem type contains the definition of the specific media item. |
| MetadataItemStream | The MetadataItemStream type describes the stream information of the media item. |
| MetadataResult | The MetadataResult type contains a list of media items and media containers, together with the total number that matches the query request. |
| MetadataStreamResult | The MetadataStreamResult type contains a list of media stream items, together with the count number of streams for the specified media items. |
| Office365Mailbox | The Office365Mailbox type contains the information about the Office 365 mailbox. |
| ExchangeServerMailbox | The ExchangeServerMailbox type contains the information about the Exchange mailbox. |
| HostedMailbox | The HostedMailbox type contains the information about the hosted mailbox. |
| MSODomain | The MSODomain type contains the domain information for the online service. |
| MSOLicense | The MSOLicense type contains the license information for the online service |
| MSOLicenseService | The MSOLicenseService type contains the license type information for the online service |
| MSOLicenseSubscription | The MSOLicenseSubscription type contains the license subscription information for the online service. |
| MSOLicenseSuite | The MSOLicenseSuite type contains the license suite information for the online service. |
| MSOTenantInformation | The MSOTenantInformation type contains the tenant information for the online service. |
| MSOUser | The MSOUser type contains the user information for the online service. |
| PartialCollection_Of_AlertInfo | This type describes a partial collection of AlertInfo. |
| PartialCollection_Of_ConnectionInfo | This type describes a partial collection of ConnectionInfo. |
| PartialCollection_Of_DeviceInfo | This type describes a partial collection of DeviceInfo. |
| PartialCollection_Of_DriveInfo | This type describes a partial collection of DriveInfo. |
| PartialCollection_Of_FolderInfo | This type describes a partial collection of FolderInfo. |
| PartialCollection_Of_UserInfo | This type describes a partial collection of UserInfo. |
| ReadOnlyCollectionOfGroupInfoEV6sb80H | This type describes a read-only connection of GroupInfo. |
| ReadOnlyCollectionOfMSOLicensepPGX_Pb6b | This type describes a read-only connection of MSOLicense. |
| ReadOnlyCollectionOfMSOLicenseServicepPGX_Pb6b | This type describes a read-only connection of MSOLicenseService. |
| ReadOnlyCollectionOfMSOLicenseSubscriptionpPGX_Pb6b | This type describes a read-only connection of MSOLicenseSubscription. |
| ReadOnlyCollectionOfMSOLicenseSuitepPGX_Pb6b | This type describes a read-only collection of MSOLicenseSuite as specified in section [2.2.4.51](#Section_2.2.4.51). |
| RemoteConnectionUserInfo | The RemoteConnectionUserInfo type contains user information about the remote connection. |
| SearchItemList | The collection of searched file item metadata. |
| ServerInfo | The ServerInfo type contains informational data about the server. |
| SharePointSiteAddressCollection | The SharePointSiteAddressCollection type contains the SharePoint site addresses. |
| StorageDriveInfo | This type contains information about the drive used to create the storage folder (see section [2.2.4.30](#Section_2.2.4.30)). |
| StorageServerInfo | This type contains information about the server used to create the storage folder. |
| UserInfo | The UserInfo type contains informational data about the user. |
| WebApiProvider | The WebApiProvider type contains informational data about the WebApi provider. |

<a id="Section_2.2.4.1"></a>
#### 2.2.4.1 AlertInfo

The AlertInfo type contains informational data about a Network Health Alert.

**Namespace:** http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi

<xs:complexType name="AlertInfo">

<xs:sequence>

<xs:element minOccurs="0" maxOccurs="1" name="CanRepair" type="xs:boolean"/>

<xs:element minOccurs="0" maxOccurs="1" name="DateAndTime" type="xs:dateTime"/>

<xs:element minOccurs="0" maxOccurs="1" name="Description" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="IsSuppressed" type="xs:boolean"/>

<xs:element minOccurs="0" maxOccurs="1" name="Key" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="MachineName" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="Severity" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="Title" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="TroubleshootingSteps" nillable="true" type="xs:string"/>

</xs:sequence>

</xs:complexType>

**CanRepair:** If the alert is repairable, this is set to TRUE; otherwise, FALSE.

**DateAndTime:** The date and time when the alert was raised.

**Description:** The description of the alert.

**IsSuppressed:** If the alert is suppressed, this is set to TRUE; otherwise, FALSE.

**Key:** The key of the alert.

**MachineName:** The name of the machine on which the alert is raised.

**Severity:** The health status.

**Title:** The name of the feature definition for which the alert is raised.

**TroubleshootingSteps:** The troubleshooting steps of the alert.

<a id="Section_2.2.4.2"></a>
#### 2.2.4.2 ArrayOfAlertInfo

This type describes an array of AlertInfo.

**Namespace:** http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi

<xs:complexType name="ArrayOfAlertInfo">

<xs:sequence>

<xs:element minOccurs="0" maxOccurs="unbounded" name="AlertInfo" nillable="true" type="tns1:AlertInfo"/>

</xs:sequence>

</xs:complexType>

**AlertInfo:** The instance of AlertInfo. See section [2.2.4.1](#Section_2.2.4.1)

<a id="Section_2.2.4.3"></a>
#### 2.2.4.3 ArrayOfConnectionInfo

This type describes an array of ConnectionInfo.

**Namespace:** http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi

<xs:complexType name="ArrayOfConnectionInfo">

<xs:sequence>

<xs:element minOccurs="0" maxOccurs="unbounded" name="ConnectionInfo" nillable="true" type="tns1:ConnectionInfo"/>

</xs:sequence>

</xs:complexType>

**ConnectionInfo:** The connection information instance.

<a id="Section_2.2.4.4"></a>
#### 2.2.4.4 ArrayOfDeviceInfo

This type describes an array of DeviceInfo.

**Namespace:** http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi

<xs:complexType name="ArrayOfDeviceInfo">

<xs:sequence>

<xs:element minOccurs="0" maxOccurs="unbounded" name="DeviceInfo" nillable="true" type="tns1:DeviceInfo"/>

</xs:sequence>

</xs:complexType>

**DeviceInfo:** The instance of DeviceInfo, as specified in section [2.2.4.28](#Section_2.2.4.28).

<a id="Section_2.2.4.5"></a>
#### 2.2.4.5 ArrayOfDriveInfo

This type describes an array of DriveInfo.

**Namespace:** http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi

<xs:complexType name="ArrayOfDriveInfo">

<xs:sequence>

<xs:element minOccurs="0" maxOccurs="unbounded" name="DriveInfo" nillable="true" type="tns1:DriveInfo"/>

</xs:sequence>

</xs:complexType>

**DriveInfo:** The instance of DriveInfo, as specified in section [2.2.4.29](#Section_2.2.4.29).

<a id="Section_2.2.4.6"></a>
#### 2.2.4.6 ArrayOfFolderInfo

This type describes an array of FolderInfo.

**Namespace:** http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi

<xs:complexType name="ArrayOfFolderInfo">

<xs:sequence>

<xs:element minOccurs="0" maxOccurs="unbounded" name="FolderInfo" nillable="true" type="tns1:FolderInfo"/>

</xs:sequence>

</xs:complexType>

**FolderInfo:** The instance of FolderInfo, as specified in section [2.2.4.30](#Section_2.2.4.30).

<a id="Section_2.2.4.7"></a>
#### 2.2.4.7 ArrayOfGroupInfo

This type describes an array of GroupInfo.

**Namespace:** http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi

<xs:complexType name="ArrayOfGroupInfo">

<xs:sequence>

<xs:element minOccurs="0" maxOccurs="unbounded" name="GroupInfo" nillable="true" type="tns1:GroupInfo"/>

</xs:sequence>

</xs:complexType>

**GroupInfo:** The instance of Group, as specified in section [2.2.4.31](#Section_2.2.4.31).

<a id="Section_2.2.4.8"></a>
#### 2.2.4.8 ArrayOfItemInfo

This type describes an array of ItemInfo.

**Namespace:** http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi

<xs:complexType name="ArrayOfItemInfo">

<xs:sequence>

<xs:element minOccurs="0" maxOccurs="unbounded" name="ItemInfo" nillable="true" type="tns1:ItemInfo"/>

</xs:sequence>

</xs:complexType>

**ItemInfo:** The instance of ItemInfo as specified in section [2.2.4.32](#Section_2.2.4.32).

<a id="Section_2.2.4.9"></a>
#### 2.2.4.9 ArrayOfLink

This type describes an array of Link.

**Namespace:** http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi

<xs:complexType name="ArrayOfLink">

<xs:sequence>

<xs:element minOccurs="0" maxOccurs="unbounded" name="Link" nillable="true" type="tns1:Link"/>

</xs:sequence>

</xs:complexType>

**Link:** The instance of Link type represents the customization link information, as specified in section [2.2.4.35](#Section_2.2.4.35).

<a id="Section_2.2.4.10"></a>
#### 2.2.4.10 ArrayOfMailbox

This type describes an array of Mailbox.

**Namespace:** http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi

<xs:complexType name="ArrayOfMailbox">

<xs:sequence>

<xs:element minOccurs="0" maxOccurs="unbounded" name="Mailbox" nillable="true" type="tns1:Mailbox"/>

</xs:sequence>

</xs:complexType>

**Mailbox:** The instance of Mailbox, as specified in section [2.2.4.36](#Section_2.2.4.36).

<a id="Section_2.2.4.11"></a>
#### 2.2.4.11 ArrayOfMetadataBase

This type describes an array of MetadataBase.<1>

**Namespace:** http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi

<xs:complexType name="ArrayOfMetadataBase">

<xs:sequence>

<xs:element minOccurs="0" maxOccurs="unbounded" name="MetadataBase" nillable="true" type="tns1:MetadataBase"/>

</xs:sequence>

</xs:complexType>

**MetadataBase:** The instance of Metadata, as specified in section [2.2.4.40](#Section_2.2.4.40).

<a id="Section_2.2.4.12"></a>
#### 2.2.4.12 ArrayOfMetadataItemStream

This type describes an array of MetadataItemStream as specified in section [2.2.4.44](#Section_2.2.4.44).<2>

**Namespace:** http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi

<xs:complexType name="ArrayOfMetadataItemStream">

<xs:sequence>

<xs:element minOccurs="0" maxOccurs="unbounded" name="MetadataItemStream" nillable="true" type="tns1:MetadataItemStream"/>

</xs:sequence>

</xs:complexType>

**MetadataItemStream:** Describes the stream information of the media item.

<a id="Section_2.2.4.13"></a>
#### 2.2.4.13 ArrayOfMSODomain

This type describes an array of MSODomain, specified in section [2.2.4.47](#Section_2.2.4.47).

**Namespace:** http://schemas.datacontract.org/2004/07/Microsoft.WindowsServerSolutions.AzureADObjectModel

<xs:complexType name="ArrayOfMSODomain">

<xs:sequence>

<xs:element minOccurs="0" maxOccurs="unbounded" name="MSODomain" nillable="true" type="tns6:MSODomain"/>

</xs:sequence>

</xs:complexType>

**MSODomain:** An instance of MSODomain.

<a id="Section_2.2.4.14"></a>
#### 2.2.4.14 ArrayOfMSOLicense

This type describes an array of MSOLicense, specified in section [2.2.4.48](#Section_2.2.4.48).

**Namespace:** http://schemas.datacontract.org/2004/07/Microsoft.WindowsServerSolutions.AzureADObjectModel

<xs:complexType name="ArrayOfMSOLicense">

<xs:sequence>

<xs:element minOccurs="0" maxOccurs="unbounded" name="MSOLicense" nillable="true" type="tns6:MSOLicense"/>

</xs:sequence>

</xs:complexType>

**MSOLicense:** The instance of MSOLicense.

<a id="Section_2.2.4.15"></a>
#### 2.2.4.15 ArrayOfMSOLicenseService

This type describes an array of MSOLicenseService specified in section [2.2.4.49](#Section_2.2.4.49).

**Namespace:** http://schemas.datacontract.org/2004/07/Microsoft.WindowsServerSolutions.AzureADObjectModel

<xs:complexType name="ArrayOfMSOLicenseService">

<xs:sequence>

<xs:element minOccurs="0" maxOccurs="unbounded" name="MSOLicenseService" nillable="true" type="tns6:MSOLicenseService"/>

</xs:sequence>

</xs:complexType>

**MSOLicenseService:** The instance of MSOLicenseService.

<a id="Section_2.2.4.16"></a>
#### 2.2.4.16 ArrayOfMSOLicenseSubscription

This type describes an array of MSOLicenseSubscription, specified in section [2.2.4.50](#Section_2.2.4.50).

**Namespace:** http://schemas.datacontract.org/2004/07/Microsoft.WindowsServerSolutions.AzureADObjectModel

<xs:complexType name="ArrayOfMSOLicenseSubscription">

<xs:sequence>

<xs:element minOccurs="0" maxOccurs="unbounded" name="MSOLicenseSubscription" nillable="true" type="tns6:MSOLicenseSubscription"/>

</xs:sequence>

</xs:complexType>

**MSOLicenseSubscription:** The instance of MSOLicenseSubscription.

<a id="Section_2.2.4.17"></a>
#### 2.2.4.17 ArrayOfMSOLicenseSuite

This type describes an array of MSOLicenseSuite, specified in section [2.2.4.51](#Section_2.2.4.51).

**Namespace:** http://schemas.datacontract.org/2004/07/Microsoft.WindowsServerSolutions.AzureADObjectModel

<xs:complexType name="ArrayOfMSOLicenseSuite">

<xs:sequence>

<xs:element minOccurs="0" maxOccurs="unbounded" name="MSOLicenseSuite" nillable="true" type="tns6:MSOLicenseSuite"/>

</xs:sequence>

</xs:complexType>

**MSOLicenseSuite:** The instance of MSOLicenseSuite.

<a id="Section_2.2.4.18"></a>
#### 2.2.4.18 ArrayOfMSOUser

This type describes an array of MSOUser, specified in section [2.2.4.53](#Section_2.2.4.53).

**Namespace:** http://schemas.datacontract.org/2004/07/Microsoft.WindowsServerSolutions.AzureADObjectModel

<xs:complexType name="ArrayOfMSOUser">

<xs:sequence>

<xs:element minOccurs="0" maxOccurs="unbounded" name="MSOUser" nillable="true" type="tns6:MSOUser"/>

</xs:sequence>

</xs:complexType>

**MSOUser:** The instance of MSOUser.

<a id="Section_2.2.4.19"></a>
#### 2.2.4.19 ArrayOfStorageDriveInfo

This type describes an array of StorageDriveInfo.

**Namespace:** http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi

<xs:complexType name="ArrayOfStorageDriveInfo">

<xs:sequence>

<xs:element minOccurs="0" maxOccurs="unbounded" name="StorageDriveInfo" nillable="true" type="tns1:StorageDriveInfo"/>

</xs:sequence>

</xs:complexType>

**StorageDriveInfo:** The instance of StorageDriveInfo. See section [2.2.4.69](#Section_2.2.4.69)

<a id="Section_2.2.4.20"></a>
#### 2.2.4.20 ArrayOfStorageServerInfo

This type describes an array of storageServerInfo.

**Namespace:** http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi

<xs:complexType name="ArrayOfStorageServerInfo">

<xs:sequence>

<xs:element minOccurs="0" maxOccurs="unbounded" name="StorageServerInfo" nillable="true" type="tns1:StorageServerInfo"/>

</xs:sequence>

</xs:complexType>

**StorageServerInfo:** The instance of StorageServerInfo. See section [2.2.4.70](#Section_2.2.4.70)

<a id="Section_2.2.4.21"></a>
#### 2.2.4.21 ArrayOfstring

This type describes an array of string.

**Namespace:** http://schemas.microsoft.com/2003/10/Serialization/Arrays

<xs:complexType name="ArrayOfstring">

<xs:sequence>

<xs:element minOccurs="0" maxOccurs="unbounded" name="string" nillable="true" type="xs:string"/>

</xs:sequence>

</xs:complexType>

**string:** The instance of string.

<a id="Section_2.2.4.22"></a>
#### 2.2.4.22 ArrayOfUserInfo

This type describes an array of UserInfo.

**Namespace:** http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi

<xs:complexType name="ArrayOfUserInfo">

<xs:sequence>

<xs:element minOccurs="0" maxOccurs="unbounded" name="UserInfo" nillable="true" type="tns1:UserInfo"/>

</xs:sequence>

</xs:complexType>

**UserInfo:** The instance of UserInfo. See section [2.2.4.71](#Section_2.2.4.71)

<a id="Section_2.2.4.23"></a>
#### 2.2.4.23 ArrayOfWebApiProvider

This type describes an array of WebApiProvider, as specified in section [2.2.4.72](#Section_2.2.4.72).

**Namespace:** http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi

<xs:complexType name="ArrayOfWebApiProvider">

<xs:sequence>

<xs:element minOccurs="0" maxOccurs="unbounded" name="WebApiProvider" nillable="true" type="tns1:WebApiProvider"/>

</xs:sequence>

</xs:complexType>

**WebApiProvider:** The instance of WebApiProvider. See section 2.2.4.72

<a id="Section_2.2.4.24"></a>
#### 2.2.4.24 CompanyAddress

This type describes the address of a company.

**Namespace:** http://schemas.datacontract.org/2004/07/Microsoft.WindowsServerSolutions.AzureADObjectModel

<xs:complexType name="CompanyAddress">

<xs:sequence>

<xs:element minOccurs="0" maxOccurs="1" name="City" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="Country" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="PostalCode" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="State" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="Street" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="TelephoneNumber" nillable="true" type="xs:string"/>

</xs:sequence>

</xs:complexType>

**City:** The city of the company.

**Country:** The country of the company.

**PostalCode:** The postal code of the company.

**State:** The state of the company.

**Street:** The street of the company.

**TelephoneNumber:** The telephone number of the company.

<a id="Section_2.2.4.25"></a>
#### 2.2.4.25 ConnectionClientInfo

The ConnectionClientInfo type contains client information of the connection instance.

**Namespace:** http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi

<xs:complexType name="ConnectionClientInfo">

<xs:sequence>

<xs:element minOccurs="0" maxOccurs="1" name="ClientApplicationName" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="ClientApplicationPublisher" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="ClientApplicationVersion" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="ClientHostname" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="ClientIPAddress" nillable="true" type="xs:string"/>

</xs:sequence>

</xs:complexType>

**ClientApplicationName:** The client application name.

**ClientApplicationPublisher:** The client application publisher information.

**ClientApplicationVersion:** The client application version.

**ClientHostname:** The client host name.

**ClientIPAddress:** The client IP address.

<a id="Section_2.2.4.26"></a>
#### 2.2.4.26 ConnectionInfo

The ConnectionInfo type contains user connection data information.

**Namespace:** http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi

<xs:complexType name="ConnectionInfo">

<xs:sequence>

<xs:element minOccurs="0" maxOccurs="1" name="ClientInfo" nillable="true" type="tns1:ConnectionClientInfo"/>

<xs:element minOccurs="0" maxOccurs="1" name="EndTime" type="xs:dateTime"/>

<xs:element minOccurs="0" maxOccurs="1" name="ServiceType" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="StartTime" type="xs:dateTime"/>

<xs:element minOccurs="0" maxOccurs="1" name="UserInfo" nillable="true" type="tns1:RemoteConnectionUserInfo"/>

</xs:sequence>

</xs:complexType>

**ClientInfo:** The client information of the connection. See section [2.2.4.25](#Section_2.2.4.25).

**EndTime:** The end time of the connection.

**ServiceType:** The service type of the connection.

**StartTime:** The start time of the connection.

**UserInfo:** The user information of the connection. See section [2.2.4.65](#Section_2.2.4.65).

<a id="Section_2.2.4.27"></a>
#### 2.2.4.27 CustomizationInfo

The CustomizationInfo type contains customization data information.

**Namespace:** http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi

<xs:complexType name="CustomizationInfo">

<xs:sequence>

<xs:element minOccurs="0" maxOccurs="1" name="BackgroundImage" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="Links" nillable="true" type="tns1:ArrayOfLink"/>

<xs:element minOccurs="0" maxOccurs="1" name="Logo" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="Title" nillable="true" type="xs:string"/>

</xs:sequence>

</xs:complexType>

**BackgroundImage:** The [**URI**](#gt_uniform-resource-identifier-uri) of the background image.

**Links:** An array that contains customization links.

**Logo:** The URI of the logo.

**Title:** The URI of the title.

<a id="Section_2.2.4.28"></a>
#### 2.2.4.28 DeviceInfo

The DeviceInfo type contains informational data about a device that is managed by the server.

**Namespace:** http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi

<xs:complexType name="DeviceInfo">

<xs:sequence>

<xs:element minOccurs="0" maxOccurs="1" name="AntiSpywareStatus" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="AntiVirusStatus" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="BackupProgress" type="xs:int"/>

<xs:element minOccurs="0" maxOccurs="1" name="BackupStatus" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="CanBackup" type="xs:boolean"/>

<xs:element minOccurs="0" maxOccurs="1" name="DeviceDescription" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="DeviceName" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="DeviceType" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="FirewallStatus" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="Key" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="OSFamily" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="OSName" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="OSServicePack" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="OnlineStatus" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="SecurityCenterStatus" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="SystemType" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="UpdateDetailStatus" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="UpdateStatus" nillable="true" type="xs:string"/>

</xs:sequence>

</xs:complexType>

**AntiSpywareStatus:** The antispyware status of the device.

**AntiVirusStatus:** The antivirus status of the device.

**BackupProgress:** The backup process if the backup status is InProcess.

**BackupStatus:** The backup status of devices. It SHOULD one of these values:

- Unknown
- Configured
- Successful
- Failed
- Incomplete
- InProgress
- NotConfigured
- InQueue
- PreparingForBackup
- FinalizingBackup
- RecoveryInProgress
**CanBackup:** A flag that indicates whether the device can start backup.

**DeviceDescription:** The description of the device.

**DeviceName:** The name of the device.

**DeviceType:** The type of device, which SHOULD be one of these values:

- Unknown
- ArchivedClient
- Client
- SolutionServer
**FirewallStatus:** The firewall status of the device.

**Key:** The key of the device.

**OnlineStatus:** The online status of the device, which SHOULD be one of these values:

- Unknown
- Online
- Offline
**OSFamily:** The operating system information, which SHOULD one of these values:

- Unknown
- WindowsSeverity
- Macintosh
**OSName:** The name of the operating system of the device.

**OSServicePack:** The operating system service pack version of the device.

**SecurityCenterStatus:** The security center status of the device.

**SystemType:** The system type of the device, which SHOULD be one of these values:

- Unknown
- X86
- AMD64
**UpdateDetailStatus:** The Windows update detail information of the device.

**UpdateStatus:** The Windows update status of the device.

<a id="Section_2.2.4.29"></a>
#### 2.2.4.29 DriveInfo

The DriveInfo type contains informational data about the server drive.

**Namespace:** http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi

<xs:complexType name="DriveInfo">

<xs:sequence>

<xs:element minOccurs="0" maxOccurs="1" name="Capacity" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="DataStatus" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="DiskID" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="DriveGuid" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="FileSystemType" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="ID" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="MountPoint" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="Name" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="NextSnapshotTime" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="SnapshotsEnabled" type="xs:boolean"/>

<xs:element minOccurs="0" maxOccurs="1" name="Status" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="SystemDrive" type="xs:boolean"/>

<xs:element minOccurs="0" maxOccurs="1" name="UsedSpace" nillable="true" type="xs:string"/>

</xs:sequence>

</xs:complexType>

**Capacity:** The total capacity of this drive in bytes.

**DataStatus:** The data status of this drive.

**DiskID:** The unique ID of the parent disk.

**DriveGuid:** The drive [**GUID**](#gt_globally-unique-identifier-guid), which persists across reboots.

**FileSystemType:** The file system on this drive, which SHOULD be one of the following:

- Unknown
- Raw
- FAT
- FAT32
- NTFS
- CDFS
- UDF
- EXFAT
- CSVFS
- REFS
**ID:** The unique ID of the drive.

**MountPoint:** The mount point of the drive.

**Name:** The user-friendly name of the drive.

**NextSnapshotTime:** The time at which the drive takes the next snapshot.

**SnapshotsEnabled:** A flag that indicates whether snapshots are enabled for this drive.

**Status:** The status of this drive.

**SystemDrive:** A flag that indicates whether the drive is a system drive.

**UsedSpace:** The total used space on this drive in bytes.

<a id="Section_2.2.4.30"></a>
#### 2.2.4.30 FolderInfo

The FolderInfo type contains informational data about the folder that is managed by the server.

**Namespace:** http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi

<xs:complexType name="FolderInfo">

<xs:sequence>

<xs:element minOccurs="0" maxOccurs="1" name="AccessPermission" nillable="true" xmlns:q9="http://schemas.datacontract.org/2004/07/Microsoft.WindowsServerSolutions.Storage" type="q9:Permission"/>

<xs:element minOccurs="0" maxOccurs="1" name="CurrentStatus" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="Description" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="DriveFreeSpace" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="DriveID" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="FolderType" nillable="true" xmlns:q10="http://schemas.datacontract.org/2004/07/Microsoft.WindowsServerSolutions.WebApi.Management.Storage" type="q10:ServerFolderType"/>

<xs:element minOccurs="0" maxOccurs="1" name="ID" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="Name" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="Path" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="SharePath" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="Shared" type="xs:boolean"/>

<xs:element minOccurs="0" maxOccurs="1" name="UncPath" nillable="true" type="xs:string"/>

</xs:sequence>

</xs:complexType>

**AccessPermission:** The user access permission on this folder, as specified in section [2.2.5.5](#Section_2.2.5.5).

**CurrentStatus:** The folder status.

**Description:** The user-friendly description of the folder.

**DriveFreeSpace:** The free space of the parent drive.

**DriveID:** The ID of the drive this folder is on.

**FolderType:** The folder type. It SHOULD be one of ServerFolderType, see section [2.2.5.6](#Section_2.2.5.6).

**ID:** The unique ID of the folder.

**Name:** The folder name.

**Path:** The local path of the folder.

**Shared:** A flag that indicates whether the folder is shared.

**SharePath:** The share path of this folder. If the folder is not shared, this is NULL.

**UncPath:** The Universal Naming Convention (UNC) path of the folder.

<a id="Section_2.2.4.31"></a>
#### 2.2.4.31 GroupInfo

The GroupInfo type contains informational data about the group.

**Namespace:** http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi

<xs:complexType name="GroupInfo">

<xs:sequence>

<xs:element minOccurs="0" maxOccurs="1" name="CurrentSid" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="GroupName" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="Guid" nillable="true" xmlns:q12="http://schemas.microsoft.com/2003/10/Serialization/" type="q12:guid"/>

<xs:element minOccurs="0" maxOccurs="1" name="RemoteWebAccess" type="xs:boolean"/>

<xs:element minOccurs="0" maxOccurs="1" name="VpnAccess" type="xs:boolean"/>

<xs:element minOccurs="0" maxOccurs="1" name="WindowsAccount" nillable="true" type="xs:string"/>

</xs:sequence>

</xs:complexType>

**CurrentSid:** The [**SID**](#gt_security-identifier-sid) of the group.

**GroupName:** The name of the group.

**Guid:** The Guid of the group.

**RemoteWebAccess:** A flag that indicates whether the group has remote web access permission.

**VpnAccess:** A flag that indicates whether the group has VPN access permission.

**WindowsAccount:** The Windows account of the group.

<a id="Section_2.2.4.32"></a>
#### 2.2.4.32 ItemInfo

This is the file item metadata.

**Namespace:** http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi

<xs:complexType name="ItemInfo">

<xs:sequence>

<xs:element minOccurs="0" maxOccurs="1" name="AccessPermission" nillable="true" xmlns:q1="http://schemas.datacontract.org/2004/07/Microsoft.WindowsServerSolutions.Storage" type="q1:Permission"/>

<xs:element minOccurs="0" maxOccurs="1" name="CreateTime" type="xs:dateTime"/>

<xs:element minOccurs="0" maxOccurs="1" name="CreateTimeUtc" type="xs:dateTime"/>

<xs:element minOccurs="0" maxOccurs="1" name="IsDirectory" type="xs:boolean"/>

<xs:element minOccurs="0" maxOccurs="1" name="ModifiedTime" type="xs:dateTime"/>

<xs:element minOccurs="0" maxOccurs="1" name="ModifiedTimeUtc" type="xs:dateTime"/>

<xs:element minOccurs="0" maxOccurs="1" name="Name" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="Path" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="Size" type="xs:long"/>

</xs:sequence>

</xs:complexType>

**AccessPermission:** This is a number that represents the current user's access permission to the file item. It MUST be one of the following: 0 (no access), 1 (read-only access), 2 (read/write access), or 3 (unknown or unspecific access).

**CreateTime:** The time that the file is created.

**CreateTimeUtc:** The UTC time that the file is created.

**IsDirectory:** A Boolean value that indicates whether the file item is a directory.

**ModifiedTime:** The last modified time of the file item.

**ModifiedTimeUtc:** The last modified UTC time of the file item.

**Name:** The name of the file item.

**Path:** The UNC path of the file item.

**Size:** The size (in bytes) of the file item.

<a id="Section_2.2.4.33"></a>
#### 2.2.4.33 ItemList

The collection of file item metadata.

**Namespace:** http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi

<xs:complexType name="ItemList">

<xs:sequence>

<xs:element minOccurs="0" maxOccurs="1" name="Items" nillable="true" type="tns1:ArrayOfItemInfo"/>

<xs:element minOccurs="0" maxOccurs="1" name="TotalCount" type="xs:int"/>

</xs:sequence>

</xs:complexType>

**Items:** The collection of file item metadata.

**TotalCount:** The total count of the matched file items regardless of index and count parameter.

<a id="Section_2.2.4.34"></a>
#### 2.2.4.34 ItemThumbnail

The ItemThumbnail type contains informational data about the Thumbnail.

**Namespace:** http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi

<xs:complexType name="ItemThumbnail">

<xs:sequence>

<xs:element minOccurs="0" maxOccurs="1" name="Buffer" nillable="true" type="xs:base64Binary"/>

<xs:element minOccurs="0" maxOccurs="1" name="Format" nillable="true" type="tns1:ThumbnailFormat"/>

<xs:element minOccurs="0" maxOccurs="1" name="Height" type="xs:int"/>

<xs:element minOccurs="0" maxOccurs="1" name="Width" type="xs:int"/>

</xs:sequence>

</xs:complexType>

**Buffer:** The raw image buffer.

**Format:** The image format.

**Height:** The image height.

**Width:** The image width.

<a id="Section_2.2.4.35"></a>
#### 2.2.4.35 Link

The Link type contains informational data about the link that can be customized by the administrator.

**Namespace:** http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi

<xs:complexType name="Link">

<xs:sequence>

<xs:element minOccurs="0" maxOccurs="1" name="Address" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="Title" nillable="true" type="xs:string"/>

</xs:sequence>

</xs:complexType>

**Address:** The URI of the customizable link.

**Title:** The title of the customizable link.

<a id="Section_2.2.4.36"></a>
#### 2.2.4.36 Mailbox

The Mailbox type contains the information about the mailbox.

**Namespace:** http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi

<xs:complexType name="Mailbox">

<xs:sequence>

<xs:element minOccurs="0" maxOccurs="1" name="Email" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="UserName" nillable="true" type="xs:string"/>

</xs:sequence>

</xs:complexType>

**Email:** The email address.

**UserName:** The local user name.

<a id="Section_2.2.4.37"></a>
#### 2.2.4.37 Office365Mailbox

The Office365Mailbox type contains the information about the Office 365 mailbox.

**Namespace**: http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi

<xs:complexType name="Office365Mailbox">

<xs:complexContent mixed="false">

<xs:extension base="tns1:Mailbox">

<xs:sequence>

<xs:element minOccurs="0" name="Activated" type="xs:boolean" />

</xs:sequence>

</xs:extension>

</xs:complexContent>

</xs:complexType>

**Activated**: A flag that indicates whether the mailbox is activated.

<a id="Section_2.2.4.38"></a>
#### 2.2.4.38 ExchangeServerMailbox

The ExchangeServerMailbox type contains the information about the Exchange mailbox.

**Namespace**: http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi

<xs:complexType name="ExchangeServerMailbox">

<xs:complexContent mixed="false">

<xs:extension base="tns1:Mailbox">

<xs:sequence>

<xs:element minOccurs="0" name="Quota" type="xs:double" />

<xs:element minOccurs="0" name="QuotaEnforced" type="xs:boolean" />

</xs:sequence>

</xs:extension>

</xs:complexContent>

</xs:complexType>

**Quota**: The quota of the mailbox in gigabytes.

**QuotaEnforced**: A flag that indicates whether the quota is enforced.

<a id="Section_2.2.4.39"></a>
#### 2.2.4.39 HostedMailbox

The HostedMailbox type contains the information about the hosted mailbox.

**Namespace**: http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi

<xs:complexType name="HostedMailbox">

<xs:complexContent mixed="false">

<xs:extension base="tns1:Mailbox">

<xs:sequence>

<xs:element minOccurs="0" name="Enabled" type="xs:boolean" />

</xs:sequence>

</xs:extension>

</xs:complexContent>

</xs:complexType>

**Enabled**: A flag that indicates whether the mailbox is enabled.

<a id="Section_2.2.4.40"></a>
#### 2.2.4.40 MetadataBase

This is the base type for all the metadata of all the media content, including each specific item and container.<3>

**Namespace:** http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi

<xs:complexType name="MetadataBase">

<xs:sequence>

<xs:element minOccurs="0" maxOccurs="1" name="Date" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="Id" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="Title" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="TypeName" nillable="true" type="xs:string"/>

</xs:sequence>

</xs:complexType>

**Date:** The date of the item.

**Id:** The ID of the item.

**Title:** The title of the item.

**TypeName:** The type name of the item.

<a id="Section_2.2.4.41"></a>
#### 2.2.4.41 MetadataContainer

The MetadataContainer type describes the container for media content.<4> According to different grouping methods used for browsing, the meaning of the container will be different. For example, if it is grouped by Music Album, then the media item in each container will be the music from the same album. If it is grouped by the folder, then it can be a regular file, and the media item in each container will be the media in the same folder.

**Namespace:** http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi

<xs:complexType name="MetadataContainer">

<xs:complexContent mixed="false">

<xs:extension base="tns1:MetadataBase">

<xs:sequence>

<xs:element minOccurs="0" maxOccurs="1" name="AllCount" type="xs:int"/>

<xs:element minOccurs="0" maxOccurs="1" name="AllDuration" type="xs:long"/>

<xs:element minOccurs="0" maxOccurs="1" name="AllSize" type="xs:long"/>

<xs:element minOccurs="0" maxOccurs="1" name="CalculationDone" type="xs:boolean"/>

<xs:element minOccurs="0" maxOccurs="1" name="ContainerType" nillable="true" type="tns1:ContainerType"/>

<xs:element minOccurs="0" maxOccurs="1" name="Count" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="FullPath" nillable="true" type="xs:string"/>

</xs:sequence>

</xs:extension>

</xs:complexContent>

</xs:complexType>

**AllCount:** The count of subcontainers and subitems (recursive).

**AllDuration:** Total duration of subcontainers and subitems (recursive).

**AllSize:** Total size of subcontainers and subtems (recursive).

**CalculationDone:** A flag indicating whether the detail information is available.

**ContainerType:** The type of container.

**Count:** The count of subcontainers and sub-items (nonrecursive).

**FullPath:** The full path for the container when grouping by folder.

<a id="Section_2.2.4.42"></a>
#### 2.2.4.42 MetadataDetailResult

The MetadataDetailResult type describes the detail information for the metadata container.<5>

**Namespace:** http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi

<xs:complexType name="MetadataDetailResult">

<xs:sequence>

<xs:element minOccurs="0" maxOccurs="1" name="Result" nillable="true" type="tns1:MetadataContainer"/>

</xs:sequence>

</xs:complexType>

**Result:** The result of MetadataDetail.

<a id="Section_2.2.4.43"></a>
#### 2.2.4.43 MetadataItem

The MetadataItem type contains the definition of the specific media item.<6>

**Namespace:** http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi

<xs:complexType name="MetadataItem">

<xs:complexContent mixed="false">

<xs:extension base="tns1:MetadataBase">

<xs:sequence>

<xs:element minOccurs="0" maxOccurs="1" name="Album" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="AlbumArtist" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="Duration" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="ParentFullPath" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="Rating" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="Resolution" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="Size" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="Tags" nillable="true" type="xs:string"/>

</xs:sequence>

</xs:extension>

</xs:complexContent>

</xs:complexType>

**Album:** The album of the media item.

**AlbumArtist:** The album artist of the media item.

**Duration:** The duration of the media item.

**ParentFullPath:** The full path of the media item's parent container.

**Rating:** The rating of the media item.

**Resolution:** The resolution of the media item.

**Size:** The size of the media item.

**Tags:** The tags of the media item.

<a id="Section_2.2.4.44"></a>
#### 2.2.4.44 MetadataItemStream

The MetadataItemStream type describes the stream information of the media item.<7>

**Namespace:** http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi

<xs:complexType name="MetadataItemStream">

<xs:sequence>

<xs:element minOccurs="0" maxOccurs="1" name="Bitrate" type="xs:int"/>

<xs:element minOccurs="0" maxOccurs="1" name="Height" type="xs:int"/>

<xs:element minOccurs="0" maxOccurs="1" name="MimeType" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="Profile" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="RelativePath" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="RequiresTranscoding" type="xs:boolean"/>

<xs:element minOccurs="0" maxOccurs="1" name="Width" type="xs:int"/>

</xs:sequence>

</xs:complexType>

**Bitrate:** The bitrate of the media stream.

**Height:** The height of the media stream.

**MimeType:** The Multipurpose Internet Mail Exchange (MIME) type of the media stream.

**Profile:** The profile of the media stream.

**RelativePath:** The relative path of the media stream, which can be used to generate the full path of the media stream.

**RequiresTranscoding:** Indicates whether this media stream requires transcoding on the server side.

**Width:** The width of the media stream.

<a id="Section_2.2.4.45"></a>
#### 2.2.4.45 MetadataResult

The MetadataResult type contains a list of media items and media containers, together with the total number that matches the query request.<8>

**Namespace:** http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi

<xs:complexType name="MetadataResult">

<xs:sequence>

<xs:element minOccurs="0" maxOccurs="1" name="Result" nillable="true" type="tns1:ArrayOfMetadataBase"/>

<xs:element minOccurs="0" maxOccurs="1" name="TotalMatches" type="xs:unsignedInt"/>

</xs:sequence>

</xs:complexType>

**Result:** A list of media items and media containers.

**TotalMatches:** The total number that matches the query request.

<a id="Section_2.2.4.46"></a>
#### 2.2.4.46 MetadataStreamResult

The MetadataStreamResult type contains a list of media stream items, together with the number of streams for the specified media items.<9>

**Namespace:** http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi

<xs:complexType name="MetadataStreamResult">

<xs:sequence>

<xs:element minOccurs="0" maxOccurs="1" name="Result" nillable="true" type="tns1:ArrayOfMetadataItemStream"/>

<xs:element minOccurs="0" maxOccurs="1" name="TotalMatches" type="xs:unsignedInt"/>

</xs:sequence>

</xs:complexType>

**Result:** A list of media stream items.

**TotalMatches:** The count number of streams for the specified media items.

<a id="Section_2.2.4.47"></a>
#### 2.2.4.47 MSODomain

The MSODomain type contains the domain information for the online service.

**Namespace:** http://schemas.datacontract.org/2004/07/Microsoft.WindowsServerSolutions.AzureADObjectModel

<xs:complexType name="MSODomain">

<xs:sequence>

<xs:element minOccurs="0" maxOccurs="1" name="CapabilityType" nillable="true" type="tns6:MSODomainTypes"/>

<xs:element minOccurs="0" maxOccurs="1" name="IsPrimary" type="xs:boolean"/>

<xs:element minOccurs="0" maxOccurs="1" name="IsVerified" type="xs:boolean"/>

<xs:element minOccurs="0" maxOccurs="1" name="Name" nillable="true" type="xs:string"/>

</xs:sequence>

</xs:complexType>

**CapabilityType:** The domain type.

**IsPrimary:** A flag that indicates whether this domain is primary.

**IsVerified:** A flag that indicates whether this domain is verified.

**Name:** The domain name.

<a id="Section_2.2.4.48"></a>
#### 2.2.4.48 MSOLicense

The MSOLicense type contains the license information for the online service.

**Namespace:** http://schemas.datacontract.org/2004/07/Microsoft.WindowsServerSolutions.AzureADObjectModel

<xs:complexType name="MSOLicense">

<xs:sequence>

<xs:element minOccurs="0" maxOccurs="1" name="AccountName" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="Services" nillable="true" xmlns:q3="http://schemas.datacontract.org/2004/07/System.Collections.ObjectModel" type="q3:ReadOnlyCollectionOfMSOLicenseServicepPGX_Pb6b"/>

<xs:element minOccurs="0" maxOccurs="1" name="SkuId" nillable="true" type="xs:string"/>

</xs:sequence>

</xs:complexType>

**AccountName:** The account name of the license.

**Services:** The service of the license.

**SkuId:** The SKU ID of the license.

<a id="Section_2.2.4.49"></a>
#### 2.2.4.49 MSOLicenseService

The MSOLicenseService type contains the license type information for the online service.

**Namespace:** http://schemas.datacontract.org/2004/07/Microsoft.WindowsServerSolutions.AzureADObjectModel

<xs:complexType name="MSOLicenseService">

<xs:sequence>

<xs:element minOccurs="0" maxOccurs="1" name="Activated" type="xs:boolean"/>

<xs:element minOccurs="0" maxOccurs="1" name="Description" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="ServicePlan" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="ServiceType" type="tns6:MSOLicenseServiceTypes"/>

</xs:sequence>

</xs:complexType>

**Activated:** A flag that indicates whether the service is activated.

**Description:** The description of the license.

**ServicePlan:** The service plan for the license.

**ServiceType:** The service type for the license.

<a id="Section_2.2.4.50"></a>
#### 2.2.4.50 MSOLicenseSubscription

The MSOLicenseSubscription type contains the license subscription information for the online service.

**Namespace:** http://schemas.datacontract.org/2004/07/Microsoft.WindowsServerSolutions.AzureADObjectModel

<xs:complexType name="MSOLicenseSubscription">

<xs:sequence>

<xs:element minOccurs="0" maxOccurs="1" name="BillingExpirationTime" type="xs:dateTime"/>

<xs:element minOccurs="0" maxOccurs="1" name="Expired" type="xs:boolean"/>

</xs:sequence>

</xs:complexType>

**BillingExpirationTime:** The billing expiration time of the subscription.

**Expired:** A flag that indicates whether the subscription is expired.

<a id="Section_2.2.4.51"></a>
#### 2.2.4.51 MSOLicenseSuite

The MSOLicenseSuite type contains the license suite information for the online service.

**Namespace:** http://schemas.datacontract.org/2004/07/Microsoft.WindowsServerSolutions.AzureADObjectModel

<xs:complexType name="MSOLicenseSuite">

<xs:sequence>

<xs:element minOccurs="0" maxOccurs="1" name="ConsumedLicenses" type="xs:int"/>

<xs:element minOccurs="0" maxOccurs="1" name="Description" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="License" nillable="true" type="tns6:MSOLicense"/>

<xs:element minOccurs="0" maxOccurs="1" name="Subscriptions" nillable="true" xmlns:q5="http://schemas.datacontract.org/2004/07/System.Collections.ObjectModel" type="q5:ReadOnlyCollectionOfMSOLicenseSubscriptionpPGX_Pb6b"/>

<xs:element minOccurs="0" maxOccurs="1" name="TotalLicenses" type="xs:int"/>

</xs:sequence>

</xs:complexType>

**ConsumedLicenses:** The number of consumed licenses.

**Description:** The description of the license.

**License:** The license type included in the license suite.

**Subscriptions:** The collection of the subscriptions for the license suite.

**TotalLicenses:** The total license number of licenses.

<a id="Section_2.2.4.52"></a>
#### 2.2.4.52 MSOTenantInformation

The MSOTenantInformation type contains the tenant information for the online service.

**Namespace:** http://schemas.datacontract.org/2004/07/Microsoft.WindowsServerSolutions.AzureADObjectModel

<xs:complexType name="MSOTenantInformation">

<xs:sequence>

<xs:element minOccurs="0" maxOccurs="1" name="Activated" type="xs:boolean"/>

<xs:element minOccurs="0" maxOccurs="1" name="Address" nillable="true" type="tns6:CompanyAddress"/>

<xs:element minOccurs="0" maxOccurs="1" name="CompanyName" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="InitialDomain" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="LicenseSuite" nillable="true" xmlns:q4="http://schemas.datacontract.org/2004/07/System.Collections.ObjectModel" type="q4:ReadOnlyCollectionOfMSOLicenseSuitepPGX_Pb6b"/>

<xs:element minOccurs="0" maxOccurs="1" name="PrimaryDomain" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="TechnicalContact" nillable="true" type="xs:string"/>

</xs:sequence>

</xs:complexType>

**Activated:** A flag that indicates whether the online account is activated for this tenant.

**Address:** The address of the company.

**CompanyName:** The name of the company.

**InitialDomain:** The initial domain.

**LicenseSuite:** The license suite.

**PrimaryDomain:** The primary domain.

**TechnicalContact:** The technical contact information.

<a id="Section_2.2.4.53"></a>
#### 2.2.4.53 MSOUser

The MSOUser type contains the user information for the online service.

**Namespace:** http://schemas.datacontract.org/2004/07/Microsoft.WindowsServerSolutions.AzureADObjectModel

<xs:complexType name="MSOUser">

<xs:sequence>

<xs:element minOccurs="0" maxOccurs="1" name="Activated" type="xs:boolean"/>

<xs:element minOccurs="0" maxOccurs="1" name="FirstName" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="LastName" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="Licenses" nillable="true" xmlns:q1="http://schemas.datacontract.org/2004/07/System.Collections.ObjectModel" type="q1:ReadOnlyCollectionOfMSOLicensepPGX_Pb6b"/>

<xs:element minOccurs="0" maxOccurs="1" name="LocalUserName" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="ObjectId" nillable="true" xmlns:q2="http://schemas.microsoft.com/2003/10/Serialization/" type="q2:guid"/>

<xs:element minOccurs="0" maxOccurs="1" name="UserPrincipalName" nillable="true" type="xs:string"/>

</xs:sequence>

</xs:complexType>

**Activated:** A flag that indicates whether the user is activated.

**FirstName:** The first name of the local user.

**LastName:** The last name of the local user.

**Licenses:** The licenses assigned to the online user.

**LocalUserName:** The local user name.

**ObjectId:** The object ID of the online user.

**UserPrincipalName:** The principle name for the user.

<a id="Section_2.2.4.54"></a>
#### 2.2.4.54 PartialCollection_Of_AlertInfo

This type describes a partial collection of AlertInfo (section [2.2.4.1](#Section_2.2.4.1)). If **CollectionSize** is less than zero, the collection is not available and the **CollectionChunk** field SHOULD be ignored.

**Namespace:** http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi

<xs:complexType name="PartialCollection_Of_AlertInfo">

<xs:sequence>

<xs:element minOccurs="0" maxOccurs="1" name="CollectionChunk" nillable="true" type="tns1:ArrayOfAlertInfo"/>

<xs:element minOccurs="0" maxOccurs="1" name="CollectionModified" type="xs:dateTime"/>

<xs:element minOccurs="0" maxOccurs="1" name="CollectionSize" type="xs:int"/>

</xs:sequence>

</xs:complexType>

**CollectionChunk:** The items retrieved from the overall collection.

**CollectionModified:** The date and time the collection was last changed.

**CollectionSize:** The total number of items in the complete collection.

<a id="Section_2.2.4.55"></a>
#### 2.2.4.55 PartialCollection_Of_ConnectionInfo

This type describes a partial collection of ConnectionInfo (section [2.2.4.26](#Section_2.2.4.26)). If **CollectionSize** is less than zero, the collection is not available and the **CollectionChunk** field SHOULD be ignored.

**Namespace:** http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi

<xs:complexType name="PartialCollection_Of_ConnectionInfo">

<xs:sequence>

<xs:element minOccurs="0" maxOccurs="1" name="CollectionChunk" nillable="true" type="tns1:ArrayOfConnectionInfo"/>

<xs:element minOccurs="0" maxOccurs="1" name="CollectionModified" type="xs:dateTime"/>

<xs:element minOccurs="0" maxOccurs="1" name="CollectionSize" type="xs:int"/>

</xs:sequence>

</xs:complexType>

**CollectionChunk:** The items retrieved from the overall collection.

**CollectionModified:** The date and time the collection last changed.

**CollectionSize:** The total number of items in the complete collection.

<a id="Section_2.2.4.56"></a>
#### 2.2.4.56 PartialCollection_Of_DeviceInfo

This type describes a partial collection of DeviceInfo (section [2.2.4.28](#Section_2.2.4.28)). If **CollectionSize** is less than zero, the collection is not available and the **CollectionChunk** field SHOULD be ignored.

**Namespace:** http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi

<xs:complexType name="PartialCollection_Of_DeviceInfo">

<xs:sequence>

<xs:element minOccurs="0" maxOccurs="1" name="CollectionChunk" nillable="true" type="tns1:ArrayOfDeviceInfo"/>

<xs:element minOccurs="0" maxOccurs="1" name="CollectionModified" type="xs:dateTime"/>

<xs:element minOccurs="0" maxOccurs="1" name="CollectionSize" type="xs:int"/>

</xs:sequence>

</xs:complexType>

**CollectionChunk:** The items retrieved from the overall collection.

**CollectionModified:** The date and time the collection last changed.

**CollectionSize:** The total number of items in the complete collection.

<a id="Section_2.2.4.57"></a>
#### 2.2.4.57 PartialCollection_Of_DriveInfo

This type describes a partial collection of DriveInfo (section [2.2.4.29](#Section_2.2.4.29)). If **CollectionSize** is less than zero, the collection is not available and the **CollectionChunk** field SHOULD be ignored.

**Namespace:** http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi

<xs:complexType name="PartialCollection_Of_DriveInfo">

<xs:sequence>

<xs:element minOccurs="0" maxOccurs="1" name="CollectionChunk" nillable="true" type="tns1:ArrayOfDriveInfo"/>

<xs:element minOccurs="0" maxOccurs="1" name="CollectionModified" type="xs:dateTime"/>

<xs:element minOccurs="0" maxOccurs="1" name="CollectionSize" type="xs:int"/>

</xs:sequence>

</xs:complexType>

**CollectionChunk:** Items retrieved from the overall collection.

**CollectionModified:** Date and time the collection last changed.

**CollectionSize:** The total number of items in the complete collection.

<a id="Section_2.2.4.58"></a>
#### 2.2.4.58 PartialCollection_Of_FolderInfo

This Type describes a partial collection of FolderInfo (section [2.2.4.30](#Section_2.2.4.30)). If **CollectionSize** is less than zero, the collection is not available and the **CollectionChunk** field SHOULD be ignored.

**Namespace:** http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi

<xs:complexType name="PartialCollection_Of_FolderInfo">

<xs:sequence>

<xs:element minOccurs="0" maxOccurs="1" name="CollectionChunk" nillable="true" type="tns1:ArrayOfFolderInfo"/>

<xs:element minOccurs="0" maxOccurs="1" name="CollectionModified" type="xs:dateTime"/>

<xs:element minOccurs="0" maxOccurs="1" name="CollectionSize" type="xs:int"/>

</xs:sequence>

</xs:complexType>

**CollectionChunk:** The items retrieved from the overall collection.

**CollectionModified:** The date and time the collection last changed.

**CollectionSize:** The total number of items in the complete collection.

<a id="Section_2.2.4.59"></a>
#### 2.2.4.59 PartialCollection_Of_UserInfo

This type describes an partial collection of UserInfo (section [2.2.4.71](#Section_2.2.4.71)). If **CollectionSize** is less than zero, the collection is not available and the **CollectionChunk** field SHOULD be ignored.

**Namespace:** http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi

<xs:complexType name="PartialCollection_Of_UserInfo">

<xs:sequence>

<xs:element minOccurs="0" maxOccurs="1" name="CollectionChunk" nillable="true" type="tns1:ArrayOfUserInfo"/>

<xs:element minOccurs="0" maxOccurs="1" name="CollectionModified" type="xs:dateTime"/>

<xs:element minOccurs="0" maxOccurs="1" name="CollectionSize" type="xs:int"/>

</xs:sequence>

</xs:complexType>

**CollectionChunk:** The items retrieved from the overall collection.

**CollectionModified:** The date and time the collection changed lastly.

**CollectionSize:** The total number of items in the complete collection.

<a id="Section_2.2.4.60"></a>
#### 2.2.4.60 ReadOnlyCollectionOfGroupInfoEV6sb80H

This type describes a read-only collection of GroupInfo (section [2.2.4.31](#Section_2.2.4.31)).

**Namespace:** http://schemas.datacontract.org/2004/07/System.Collections.ObjectModel

<xs:complexType name="ReadOnlyCollectionOfGroupInfoEV6sb80H">

<xs:sequence>

<xs:element minOccurs="1" maxOccurs="1" name="list" nillable="true" xmlns:q5="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" type="q5:ArrayOfGroupInfo"/>

</xs:sequence>

</xs:complexType>

**list:** The content of the read-only collection, it contains the list of GroupInfo instances.

<a id="Section_2.2.4.61"></a>
#### 2.2.4.61 ReadOnlyCollectionOfMSOLicensepPGX_Pb6b

This type describes a read-only collection of MSOLicense (section [2.2.4.48](#Section_2.2.4.48)).

**Namespace:** http://schemas.datacontract.org/2004/07/System.Collections.ObjectModel

<xs:complexType name="ReadOnlyCollectionOfMSOLicensepPGX_Pb6b">

<xs:sequence>

<xs:element minOccurs="1" maxOccurs="1" name="list" nillable="true" xmlns:q1="http://schemas.datacontract.org/2004/07/Microsoft.WindowsServerSolutions.AzureADObjectModel" type="q1:ArrayOfMSOLicense"/>

</xs:sequence>

</xs:complexType>

**list:** The content of the read-only collection; it contains the list of MSOLicense instances.

<a id="Section_2.2.4.62"></a>
#### 2.2.4.62 ReadOnlyCollectionOfMSOLicenseServicepPGX_Pb6b

This type describes a read-only collection of MSOLicenseService (section [2.2.4.49](#Section_2.2.4.49)).

**Namespace:** http://schemas.datacontract.org/2004/07/System.Collections.ObjectModel

<xs:complexType name="ReadOnlyCollectionOfMSOLicenseServicepPGX_Pb6b">

<xs:sequence>

<xs:element minOccurs="1" maxOccurs="1" name="list" nillable="true" xmlns:q2="http://schemas.datacontract.org/2004/07/Microsoft.WindowsServerSolutions.AzureADObjectModel" type="q2:ArrayOfMSOLicenseService"/>

</xs:sequence>

</xs:complexType>

**list:** The content of the read-only collection; it contains the list of MSOLicenseService instances.

<a id="Section_2.2.4.63"></a>
#### 2.2.4.63 ReadOnlyCollectionOfMSOLicenseSubscriptionpPGX_Pb6b

This type describes a read-only collection of MSOLicenseSubscription (section [2.2.4.50](#Section_2.2.4.50)).

**Namespace:** http://schemas.datacontract.org/2004/07/System.Collections.ObjectModel

<xs:complexType name="ReadOnlyCollectionOfMSOLicenseSubscriptionpPGX_Pb6b">

<xs:sequence>

<xs:element minOccurs="1" maxOccurs="1" name="list" nillable="true" xmlns:q4="http://schemas.datacontract.org/2004/07/Microsoft.WindowsServerSolutions.AzureADObjectModel" type="q4:ArrayOfMSOLicenseSubscription"/>

</xs:sequence>

</xs:complexType>

**list:** The content of the read-only collection; it contains the list of MSOLicenseSubscription instances.

<a id="Section_2.2.4.64"></a>
#### 2.2.4.64 ReadOnlyCollectionOfMSOLicenseSuitepPGX_Pb6b

This type describes a read-only collection of MSOLicenseSuite as specified in section [2.2.4.51](#Section_2.2.4.51).

**Namespace:** http://schemas.datacontract.org/2004/07/System.Collections.ObjectModel

<xs:complexType name="ReadOnlyCollectionOfMSOLicenseSuitepPGX_Pb6b">

<xs:sequence>

<xs:element minOccurs="1" maxOccurs="1" name="list" nillable="true" xmlns:q3="http://schemas.datacontract.org/2004/07/Microsoft.WindowsServerSolutions.AzureADObjectModel" type="q3:ArrayOfMSOLicenseSuite"/>

</xs:sequence>

</xs:complexType>

**list:** The content of the read-only collection; it contains the list of MSOLicenseSuite instances.

<a id="Section_2.2.4.65"></a>
#### 2.2.4.65 RemoteConnectionUserInfo

The RemoteConnectionUserInfo type contains user information for a remote connection (see section [2.2.4.26](#Section_2.2.4.26)).

**Namespace:** http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi

<xs:complexType name="RemoteConnectionUserInfo">

<xs:sequence>

<xs:element minOccurs="0" maxOccurs="1" name="AccountName" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="FirstName" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="LastName" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="SidValue" nillable="true" type="xs:string"/>

</xs:sequence>

</xs:complexType>

**AccountName:** The account name of the user.

**FirstName:** The first name of the user.

**LastName:** The last name of the user.

**SidValue:** The [**SID**](#gt_security-identifier-sid) of the user.

<a id="Section_2.2.4.66"></a>
#### 2.2.4.66 SearchItemList

The SearchItemList type is a collection of metadata from the search results.

**Namespace:** http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi

<xs:complexType name="SearchItemList">

<xs:complexContent mixed="false">

<xs:extension base="tns1:ItemList">

<xs:sequence>

<xs:element minOccurs="0" maxOccurs="1" name="UnsearchedShares" nillable="true" xmlns:q2="http://schemas.microsoft.com/2003/10/Serialization/Arrays" type="q2:ArrayOfstring"/>

</xs:sequence>

</xs:extension>

</xs:complexContent>

</xs:complexType>

**UnsearchedShares:** A collection of top-level shared folder names that were not successfully searched.

<a id="Section_2.2.4.67"></a>
#### 2.2.4.67 ServerInfo

The ServerInfo type contains informational data about the server.

**Namespace:** http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi

<xs:complexType name="ServerInfo">

<xs:sequence>

<xs:element minOccurs="0" maxOccurs="1" name="IsMediaStreamingServiceAvailable" type="xs:boolean"/>

<xs:element minOccurs="0" maxOccurs="1" name="IsTsGatewayEnabled" type="xs:boolean"/>

<xs:element minOccurs="0" maxOccurs="1" name="ServerDomainGuid" nillable="true" xmlns:q7="http://schemas.microsoft.com/2003/10/Serialization/" type="q7:guid"/>

<xs:element minOccurs="0" maxOccurs="1" name="ServerGuid" nillable="true" xmlns:q8="http://schemas.microsoft.com/2003/10/Serialization/" type="q8:guid"/>

<xs:element minOccurs="0" maxOccurs="1" name="ServerInternetDomainName" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="ServerName" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="ServerSku" type="xs:int"/>

<xs:element minOccurs="0" maxOccurs="1" name="ServerUtcNow" type="xs:dateTime"/>

<xs:element minOccurs="0" maxOccurs="1" name="ServerVersion" nillable="true" type="xs:string"/>

</xs:sequence>

</xs:complexType>

**IsMediaStreamingServiceAvailable:** A flag that indicates whether the media streaming service is available on the server.

**IsTsGatewayEnabled:** A flag that indicates whether the TsGateway service is available on the server.

**ServerDomainGuid:** The [**globally unique identifier (GUID)**](#gt_globally-unique-identifier-guid) of the domain to which the server belongs.

**ServerGuid:** The GUID of the server.

**ServerInternetDomainName:** The Internet domain name of the server.

**ServerName:** The NetBIOS name of the server.

**ServerSku:** The Product Type of the hosting server.

**ServerUtcNow:** The current date and time on the server in coordinated universal time (UTC).

**ServerVersion:** The version of the server.

<a id="Section_2.2.4.68"></a>
#### 2.2.4.68 SharePointSiteAddressCollection

The SharePointSiteAddressCollection type contains the SharePoint site address information.

**Namespace:** http://schemas.datacontract.org/2004/07/Microsoft.WindowsServerSolutions.O365Integration

<xs:complexType name="SharePointSiteAddressCollection">

<xs:sequence>

<xs:element minOccurs="0" maxOccurs="1" name="MySiteAddress" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="TeamSiteAddress" nillable="true" type="xs:string"/>

</xs:sequence>

</xs:complexType>

**MySiteAddress:** The My Site address.

**TeamSiteAddress:** The SharePoint team site address.

<a id="Section_2.2.4.69"></a>
#### 2.2.4.69 StorageDriveInfo

The StorageDriveInfo type contains informational data about the drive to be used to create a storage folder (see section [2.2.4.30](#Section_2.2.4.30)).

**Namespace:** http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi

<xs:complexType name="StorageDriveInfo">

<xs:sequence>

<xs:element minOccurs="0" maxOccurs="1" name="DeviceName" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="FileSystem" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="ShortName" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="Size" type="xs:unsignedLong"/>

<xs:element minOccurs="0" maxOccurs="1" name="SizeRemaining" type="xs:unsignedLong"/>

<xs:element minOccurs="0" maxOccurs="1" name="VolumeName" nillable="true" type="xs:string"/>

</xs:sequence>

</xs:complexType>

**DeviceName:** The name of the device to which the drive belongs.

**FileSystem:** The file system of the drive.

**ShortName:** The short name of the drive.

**Size:** The total size of the drive.

**SizeRemaining:** The free space of the drive.

**VolumeName:** The volume name of the drive.

<a id="Section_2.2.4.70"></a>
#### 2.2.4.70 StorageServerInfo

The StorageServerInfo type contains informational data about the server that can be used to create a storage folder (see section [2.2.4.30](#Section_2.2.4.30)).

**Namespace:** http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi

<xs:complexType name="StorageServerInfo">

<xs:sequence>

<xs:element minOccurs="0" maxOccurs="1" name="DeviceName" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="DfsNameSpace" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="DfsPhysicalPath" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="IsSecondServer" type="xs:boolean"/>

<xs:element minOccurs="0" maxOccurs="1" name="OperatingSystemName" nillable="true" type="xs:string"/>

</xs:sequence>

</xs:complexType>

**DeviceName:** The name of the server.

**DfsNameSpace:** The [**DFS**](#gt_distributed-file-system-dfs) namespace of server. This SHOULD be NULL if the server is the second server.

**DfsPhysicalPath:** The DFS physical path of server. It SHOULD be NULL if the server is the second server.

**IsSecondServer:** A flag that indicates whether the server is second server.

**OperatingSystemName:** The name of the operating system of the server.

<a id="Section_2.2.4.71"></a>
#### 2.2.4.71 UserInfo

The UserInfo type contains informational data about the user.

**Namespace:** http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi

<xs:complexType name="UserInfo">

<xs:sequence>

<xs:element minOccurs="0" maxOccurs="1" name="AccessLevel" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="CanChangePassword" type="xs:boolean"/>

<xs:element minOccurs="0" maxOccurs="1" name="FirstName" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="Key" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="LastName" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="RemoteWebAccess" type="xs:boolean"/>

<xs:element minOccurs="0" maxOccurs="1" name="UserGroups" nillable="true" type="tns1:ArrayOfGroupInfo"/>

<xs:element minOccurs="0" maxOccurs="1" name="UserGuid" nillable="true" xmlns:q11="http://schemas.microsoft.com/2003/10/Serialization/" type="q11:guid"/>

<xs:element minOccurs="0" maxOccurs="1" name="UserName" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="UserStatus" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="VpnAccess" type="xs:boolean"/>

</xs:sequence>

</xs:complexType>

**AccessLevel:** The access level for the current user account, which SHOULD be one of the following values:

- Unknown
- Guest
- User
- Administrator
**CanChangePassword:** A flag that indicates whether the user's password can be changed.

**FirstName:** The first name of the user that is associated with the user account.

**Key:** The unique key of the user.

**LastName:** The last name of the user that is associated with the user account.

**RemoteWebAccess:** A flag that indicates whether the user has remote web access permission.

**UserGroups:** The list of groups to which the user belongs.

**UserGuid:** The [**GUID**](#gt_globally-unique-identifier-guid) of the user.

**UserName:** The name of the user account.

**UserStatus:** The user status, which SHOULD be one of the following values:

- Disabled
- Enabled
- Error
**VpnAccess:** A flag that indicates whether the user has VPN access permission.

<a id="Section_2.2.4.72"></a>
#### 2.2.4.72 WebApiProvider

The WebApiProvider type contains informational data about the WebApi provider.

**Namespace:** http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi

<xs:complexType name="WebApiProvider">

<xs:sequence>

<xs:element minOccurs="0" maxOccurs="1" name="ContractName" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="ContractNameSpace" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="RelativeLocation" type="xs:anyURI"/>

</xs:sequence>

</xs:complexType>

**ContractName:** The name of the provider.

**ContractNameSpace:** The namespace of the provider.

**RelativeLocation:** The location of the provider relative to the application root.

<a id="Section_2.2.5"></a>
### 2.2.5 Simple Types

The following table summarizes the set of common XML schema simple type definitions defined by this specification.

| Simple Type | Description |
| --- | --- |
| ContainerType | Describes the type of media container. |
| guid | Represents a [**GUID**](#gt_globally-unique-identifier-guid). |
| MSODomainTypes | Indicates the type of the domain for the online services. |
| MSOLicenseServiceTypes | Indicates the type of the license services. |
| Permission | Describes the user access permissions on a folder. |
| ServerFolderType | Describes the server folder type. |
| ThumbnailFormat | A class that specifies the preferred thumbnail image format. |
| StreamBody | A base64 encoded stream of data. |
| char | The char simple type represents a Unicode character. |
| duration | The duration simple type represents a duration. |

<a id="Section_2.2.5.1"></a>
#### 2.2.5.1 ContainerType

The ContainerType describes the type of media container.<10>

**Namespace:** http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi

<xs:simpleType name="ContainerType">

<xs:restriction base="xs:string">

<xs:enumeration value="Album"/>

<xs:enumeration value="Artist"/>

<xs:enumeration value="Playlist"/>

<xs:enumeration value="Rating"/>

<xs:enumeration value="Genre"/>

<xs:enumeration value="Folder"/>

<xs:enumeration value="Date"/>

</xs:restriction>

</xs:simpleType>

The following table specifies the allowable values for **ContainerType**.

| Value | Meaning |
| --- | --- |
| Album | The type of the media container is "Album". |
| Artist | The type of the media container is "Artist". |
| Playlist | The type of the media container is "Playlist". |
| Rating | The type of the media container is "Rating". |
| Genre | The type of the media container is "Genre". |
| Folder | The type of the media container is "Folder". |
| Date | The type of the media container is "Date". |

<a id="Section_2.2.5.2"></a>
#### 2.2.5.2 guid

This represents a [**GUID**](#gt_globally-unique-identifier-guid).

**Namespace:** http://schemas.microsoft.com/2003/10/Serialization/

<xs:simpleType name="guid">

<xs:restriction base="xs:string">

<xs:pattern value="[\da-fA-F]{8}-[\da-fA-F]{4}-[\da-fA-F]{4}-[\da-fA-F]{4}-[\da-fA-F]{12}"/>

</xs:restriction>

</xs:simpleType>

<a id="Section_2.2.5.3"></a>
#### 2.2.5.3 MSODomainTypes

Indicates the type of the domain for the online services.

**Namespace:** http://schemas.datacontract.org/2004/07/Microsoft.WindowsServerSolutions.AzureADObjectModel

<xs:simpleType name="MSODomainTypes">

<xs:restriction base="xs:string">

<xs:enumeration value="None"/>

<xs:enumeration value="Email"/>

<xs:enumeration value="SharePoint"/>

</xs:restriction>

</xs:simpleType>

The following table specifies the allowable values for **MSODomainTypes**.

| Value | Meaning |
| --- | --- |
| None | The type of the domain is None. |
| Email | The type of the domain is email. |
| SharePoint | The type of the domain is SharePoint. |

<a id="Section_2.2.5.4"></a>
#### 2.2.5.4 MSOLicenseServiceTypes

Indicates the type of the license services.

**Namespace:** http://schemas.datacontract.org/2004/07/Microsoft.WindowsServerSolutions.AzureADObjectModel

<xs:simpleType name="MSOLicenseServiceTypes">

<xs:list>

<xs:simpleType>

<xs:restriction base="xs:string">

<xs:enumeration value="None"/>

<xs:enumeration value="Unknown"/>

<xs:enumeration value="ExchangeOnline"/>

<xs:enumeration value="SharePointOnline"/>

<xs:enumeration value="LyncOnline"/>

<xs:enumeration value="IntuneOnline"/>

</xs:restriction>

</xs:simpleType>

</xs:list>

</xs:simpleType>

The following table specifies the allowable values for **MSOLicenseServiceTypes**.

| Value | Meaning |
| --- | --- |
| None | The type of the license service is "None". |
| Unknown | The type of the license service is "Unknown". |
| ExchangeOnline | The type of the license service is "ExchangeOnline". |
| SharePointOnline | The type of the license service is "SharePointOnline". |
| LyncOnline | The type of the license service is "LyncOnline". |
| IntuneOnline | The type of the license service is "IntuneOnline". |

<a id="Section_2.2.5.5"></a>
#### 2.2.5.5 Permission

This class describes the user access permissions on a folder.

**Namespace:** http://schemas.datacontract.org/2004/07/Microsoft.WindowsServerSolutions.Storage

<xs:simpleType name="Permission">

<xs:restriction base="xs:string">

<xs:enumeration value="None"/>

<xs:enumeration value="ReadOnly"/>

<xs:enumeration value="Full"/>

<xs:enumeration value="Other"/>

<xs:enumeration value="ReadPermissions"/>

</xs:restriction>

</xs:simpleType>

The following table specifies the allowable values for **Permission**.

| Value | Meaning |
| --- | --- |
| None | No access permission. |
| ReadOnly | User has read-only permission on the server. |
| Full | User has full permission on the server. |
| Other | User has customized permission on the server. |
| ReadPermissions | User has a set of read permissions. |

<a id="Section_2.2.5.6"></a>
#### 2.2.5.6 ServerFolderType

This class describes the server folder type.

**Namespace:** http://schemas.datacontract.org/2004/07/Microsoft.WindowsServerSolutions.WebApi.Management.Storage

<xs:simpleType name="ServerFolderType">

<xs:restriction base="xs:string">

<xs:enumeration value="NonPredefinedType"/>

<xs:enumeration value="MusicType"/>

<xs:enumeration value="PicturesType"/>

<xs:enumeration value="DocumentsType"/>

<xs:enumeration value="VideosType"/>

<xs:enumeration value="BackupsType"/>

<xs:enumeration value="FileBackupsType"/>

<xs:enumeration value="FolderRedirectionType"/>

<xs:enumeration value="CompanyType"/>

<xs:enumeration value="UserType"/>

<xs:enumeration value="OtherType"/>

</xs:restriction>

</xs:simpleType>

The following table specifies the allowable values for **ServerFolderType**.

| Value | Meaning |
| --- | --- |
| NonPredefinedType | Non-predefined folder type. |
| MusicType | Music folder type. |
| PicturesType | Pictures folder type. |
| DocumentsType | Documents folder type. |
| VideosType | Videos folder type. |
| BackupsType | Backups folder type. |
| FileBackupsType | File backups folder type. |
| FolderRedirectionType | Folder redirection folder type. |
| CompanyType | Company folder type. |
| UserType | User folder type. |
| OtherType | System or special use folders type. |

<a id="Section_2.2.5.7"></a>
#### 2.2.5.7 ThumbnailFormat

A class that specifies the preferred thumbnail image format.

**Namespace:** http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi

<xs:simpleType name="ThumbnailFormat">

<xs:restriction base="xs:string">

<xs:enumeration value="Jpeg"/>

<xs:enumeration value="Png"/>

</xs:restriction>

</xs:simpleType>

The following table specifies the allowable values for **ThumbnailFormat**.

| Value | Meaning |
| --- | --- |
| Jpeg | The thumbnail that presents as .jpg file. |
| Png | The thumbnail which presents as .png file. |

<a id="Section_2.2.5.8"></a>
#### 2.2.5.8 StreamBody

A base64 encoded stream of data.

**Namespace**: http://schemas.microsoft.com/Message

<xs:simpleType name="StreamBody">

<xs:restriction base="xs:base64Binary"/>

</xs:simpleType>

<a id="Section_2.2.5.9"></a>
#### 2.2.5.9 char

The char simple type represents a Unicode character.

**Namespace**: http://schemas.microsoft.com/2003/10/Serialization

<xs:simpleType name="char">

<xs:restriction base="xs:int" />

</xs:simpleType>

<a id="Section_2.2.5.10"></a>
#### 2.2.5.10 duration

The duration simple type represents a duration.

**Namespace**: http://schemas.microsoft.com/2003/10/Serialization

<xs:simpleType name="duration" xmlns:xs="http://www.w3.org/2001/XMLSchema">

<xs:restriction base="xs:duration">

<xs:pattern value="\-?P(\d*D)?(T(\d*H)?(\d*M)?(\d*(\.\d*)?S)?)?"/>

<xs:minInclusive value="-P10675199DT2H48M5.4775808S"/>

<xs:maxInclusive value="P10675199DT2H48M5.4775807S"/>

</xs:restriction>

</xs:simpleType>

<a id="Section_3"></a>
# 3 Protocol Details

<a id="Section_3.1"></a>
## 3.1 SessionService Server Details

<a id="Section_3.1.1"></a>
### 3.1.1 Abstract Data Model

This section describes a conceptual service contract that an implementation maintains to participate in this protocol. The described operations of the service contract are provided to facilitate the explanation of how the protocol behaves. This document does not mandate that implementations adhere to this service contract as long as their external behavior is consistent with how it is described in this document.

<a id="Section_3.1.1.1"></a>
#### 3.1.1.1 SessionId

The login call creates a session and generates a **SessionId**. This **SessionId** is returned to the client in a response cookie.

The logout call ends the session specified by the SessionId in the request cookie.

<a id="Section_3.1.1.2"></a>
#### 3.1.1.2 Canary

The login call creates a **Canary** to indicate the user identity; it will be saved on the server. This **Canary** will be returned to the client in a response header.

The logout call disposes of the Canary token and removes it from the server.

<a id="Section_3.1.2"></a>
### 3.1.2 Timers

None.

<a id="Section_3.1.3"></a>
### 3.1.3 Initialization

At initialization, the protocol server MUST begin listening for requests at the respective URL addresses given in the message transport (as specified in section [2.1](#Section_2.1)).

<a id="Section_3.1.4"></a>
### 3.1.4 Higher-Layer Triggered Events

None.

<a id="Section_3.1.5"></a>
### 3.1.5 Message Processing Events and Sequencing Rules

To call a web service, the client MUST perform these steps:

- Add the caller's credential in an HTTP header field. The caller's credential is encoded text that is based on the user name and the password.
- Add Appname (section [2.2.2.1](#Section_2.2.2.1)), Apppublisher (section [2.2.2.2](#Section_2.2.2.2)), and Appversion (section [2.2.2.3](#Section_2.2.2.3)) values in the HTTP header fields. These values are also required to log on.
- Call the logon method to retrieve the authenticated user token that is issued by the server.
- Send subsequent web service requests with the user token in the header.
| Resource | Description |
| --- | --- |
| login | Generates a valid user token for a valid user. |
| logout | Invalidates the session and user token. |

The responses to all the operations can result in the following status codes.

| Status code | Reason phrase | Description |
| --- | --- | --- |
| 200 | OK | Operation successfully completed. |
| 401 | Unauthorized | Invalid user name or password. |

<a id="Section_3.1.5.1"></a>
#### 3.1.5.1 login

Generates a valid user token for a valid user.

| HTTP method | Description |
| --- | --- |
| GET | Generates a valid user token for a valid user. |

<a id="Section_3.1.5.1.1"></a>
##### 3.1.5.1.1 GET

Generates a valid user token for a valid user.

This operation is transported by an HTTP **GET.**

The operation can be invoked through the following URI:

https://<serverName>/services/builtin/session.svc/login

The request message for this operation contains the following HTTP headers.

| Request header | Usage | Value |
| --- | --- | --- |
| Authorization | - | The caller's credential is encoded text that is based on user name and password. |
| AppName | - | The application name. |
| AppVersion | - | The application version. |
| AppPublisherName | - | The publisher of the application. |

The response message for this operation contains the following HTTP header.

| Response header | Usage | Value |
| --- | --- | --- |
| Canary | - | The user token. |

The response message for this operation can result in the following status codes.

| Status code | Description |
| --- | --- |
| 200 | Operation successfully completed. |
| 401 | Invalid user name or password. |

<a id="Section_3.1.5.1.1.1"></a>
###### 3.1.5.1.1.1 Request Body

None.

<a id="Section_3.1.5.1.1.2"></a>
###### 3.1.5.1.1.2 Response Body

None.

<a id="Section_3.1.5.1.1.3"></a>
###### 3.1.5.1.1.3 Processing Details

- The server MUST only respond to requests that have established TLS 1.1 server authentication as specified in [[RFC4346]](https://go.microsoft.com/fwlink/?LinkId=90474).
- The client MUST send requests with an authorization header, the value of which starts with "Basic" followed by a blank space and a [**base64**](#gt_179b9392-9019-45a3-880b-26f6890522b7) encoded string of user name and password separated by a colon.
- The server MUST start a session and generate a user Canary token, as specified in section [2.2.2.5](#Section_2.2.2.5), for the client.
- The user Canary token MUST be returned to client in Response header.
<a id="Section_3.1.5.2"></a>
#### 3.1.5.2 logout

Invalidate the session and user token.

| HTTP method | Description |
| --- | --- |
| GET | Invalidate the session and user token. |

<a id="Section_3.1.5.2.1"></a>
##### 3.1.5.2.1 GET

Invalidate the session and user token.

This operation is transported by an HTTP **GET.**

The operation can be invoked through the following URI:

https://<serverName>/services/builtin/Session.svc/logout

The request message for this operation contains the following HTTP header.

| Request header | Usage | Value |
| --- | --- | --- |
| Canary | - | The user token. |

The response message for this operation can result in the following status codes.

| Status code | Description |
| --- | --- |
| 200 | Operation successfully completed. |
| 401 | Invalid user token. |

<a id="Section_3.1.5.2.1.1"></a>
###### 3.1.5.2.1.1 Request Body

None.

<a id="Section_3.1.5.2.1.2"></a>
###### 3.1.5.2.1.2 Response Body

None.

<a id="Section_3.1.5.2.1.3"></a>
###### 3.1.5.2.1.3 Processing Details

The server MUST only respond to requests that have established TLS 1.1 server authentication [[RFC4346]](https://go.microsoft.com/fwlink/?LinkId=90474).

The user SHOULD log out of the API explicitly when the application exits for security purposes. The server ends the session specified in the request.

<a id="Section_3.1.6"></a>
### 3.1.6 Timer Events

None.

<a id="Section_3.1.7"></a>
### 3.1.7 Other Local Events

None.

<a id="Section_3.2"></a>
## 3.2 IFileContentAccessService Server Details

<a id="Section_3.2.1"></a>
### 3.2.1 Abstract Data Model

None.

<a id="Section_3.2.2"></a>
### 3.2.2 Timers

None.

<a id="Section_3.2.3"></a>
### 3.2.3 Initialization

At initialization time, the protocol server MUST begin listening for requests at the respective URL addresses given in the message transport (as specified in section [2.1](#Section_2.1)).

The storage provider MUST be initialized and configured correctly.

<a id="Section_3.2.4"></a>
### 3.2.4 Higher-Layer Triggered Events

None.

<a id="Section_3.2.5"></a>
### 3.2.5 Message Processing Events and Sequencing Rules

| Resource | Description |
| --- | --- |
| filecontent?path={path} | The file resource can be downloaded. |
| filecontent?path={path}&overwrite={overwrite} | The file resource will be used to upload. |
| itemthumbnail?path={path} | The thumbnail of the file item. |

The responses to all the operations can result in the following status codes.

| Status code | Reason phrase | Description |
| --- | --- | --- |
| 200 | OK | The operation completed successfully. |
| 400 | Bad Request | Bad request, the path too long or missing, or the path contains unsupported characters. |
| 401 | Unauthorized | Access denied to requested resource. |
| 404 | Not Found | The requested resource does not exist. |
| 201 | Created | File uploading successfully completed. |
| 409 | Conflict | Attempted to create a resource that already exists. |

<a id="Section_3.2.5.1"></a>
#### 3.2.5.1 filecontent?path={path}

Retrieves the binary content of a file in bytes.

**path:** This is the description of the parameter path.

| HTTP method | Description |
| --- | --- |
| GET | Retrieves the binary content of a file in bytes. |

<a id="Section_3.2.5.1.1"></a>
##### 3.2.5.1.1 GET

This API retrieves the binary content of a file in bytes. The caller reads the response stream. The API supports retrieving partial content of the file range that is specified by the Range header in an HTTP request.

This operation is transported by an HTTP **GET.**

The operation can be invoked through the following URI:

https://<ServerName>/services/builtin/FileContentAccessService.svc/filecontent?path={path}

The request message for this operation contains the following HTTP headers.

| Request header | Usage | Value |
| --- | --- | --- |
| Range | Optional | Request only part of an entity, as specified in section [2.2.2.7](#Section_2.2.2.7). |
| Canary | Optional | The user token, as specified in section [2.2.2.5](#Section_2.2.2.5). Client MUST either pass this header to server or pass all of the following headers to the server. |
| Authorization | Optional | The caller's credentials, which are encoded text that is based on the user name and password as specified in section [2.2.2.4](#Section_2.2.2.4). |
| AppName | Optional | The client application name, as specified in section [2.2.2.1](#Section_2.2.2.1). |
| AppVersion | Optional | The client application version, as specified in section [2.2.2.3](#Section_2.2.2.3). |
| AppPublisherName | Optional | The client application publisher name, as specified in section [2.2.2.2](#Section_2.2.2.2). |

The response message for this operation can result in one of the following status codes.

| Status code | Description |
| --- | --- |
| 200 | Download operation successfully completed. |
| 400 | Input parameters are invalid. |
| 401 | User is not allowed to access resource. |
| 404 | Requested resource does not exist. |

<a id="Section_3.2.5.1.1.1"></a>
###### 3.2.5.1.1.1 Request Body

None.

<a id="Section_3.2.5.1.1.2"></a>
###### 3.2.5.1.1.2 Response Body

The response body is encoded in the following XML format.

<xs:element name="Stream" nillable="true" type="xs:base64Binary"/>

<a id="Section_3.2.5.1.1.3"></a>
###### 3.2.5.1.1.3 Processing Details

This operation downloads a file in the form of a file stream from the location specified by the **path**.

<a id="Section_3.2.5.2"></a>
#### 3.2.5.2 filecontent?path={path}&overwrite={overwrite}

Uploads a file to a location for which the user has access permissions.

**path:** The path of the file.

**overwrite:** This flag indicates whether to overwrite the file if it exists on server. See section [2.2.3.30](#Section_2.2.3.30).

| HTTP method | Description |
| --- | --- |
| POST | Uploads a file to a location where the user has access permissions. |

<a id="Section_3.2.5.2.1"></a>
##### 3.2.5.2.1 POST

The file content SHOULD be put into the HTTP request. The protocol does not support resuming uploads.

By default, the maximum size of a file that can be uploaded is 100 MB.

This operation is transported by an HTTP **POST.**

The operation can be invoked through the following URI:

https://<ServerName>/services/builtin/FileContentAccessService.svc/filecontent?path={path}&overwrite={overwrite}

The request message for this operation contains the following HTTP headers.

| Request header | Usage | Value |
| --- | --- | --- |
| Canary | Optional | The value returned in the logon Response Canary header. The client MUST either pass this header to the server or pass all of the following headers to the client. For more details, refer to section [2.2.2.5](#Section_2.2.2.5). |
| Authorization | Optional | The caller's credential is encoded text that is based on a user name and password. For more details, refer to section [2.2.2.4](#Section_2.2.2.4). |
| AppName | Optional | The application name, as specified in section [2.2.2.1](#Section_2.2.2.1). |
| AppVersion | Optional | The application version, as specified in section [2.2.2.3](#Section_2.2.2.3). |
| AppPublisherName | Optional | The application publisher name, as specified in section [2.2.2.2](#Section_2.2.2.2). |

The response message for this operation can result in one of the following status codes.

| Status code | Description |
| --- | --- |
| 201 | File uploading successfully completed. |
| 401 | User is not allowed to access resource. |
| 404 | The specific resource does not exist. |
| 409 | An item already exists with the requested new name. |

<a id="Section_3.2.5.2.1.1"></a>
###### 3.2.5.2.1.1 Request Body

The request body is a binary stream.

<a id="Section_3.2.5.2.1.2"></a>
###### 3.2.5.2.1.2 Response Body

None.

<a id="Section_3.2.5.2.1.3"></a>
###### 3.2.5.2.1.3 Processing Details

This operation uploads a file to the location specified by the **path**.

<a id="Section_3.2.5.3"></a>
#### 3.2.5.3 itemthumbnail?path={path}

Retrieves a thumbnail of a single item.

**path:**

| HTTP method | Description |
| --- | --- |
| GET | Retrieves a thumbnail of a single item. |

<a id="Section_3.2.5.3.1"></a>
##### 3.2.5.3.1 GET

Retrieves a thumbnail of a single item. This method supports most image formats.

This operation is transported by an HTTP **GET.**

The operation can be invoked through the following URI:

https://<servername>/services/builtin/FileContentAccessService.svc/itemthumbnail?path={path}

The request message for this operation contains the following HTTP headers.

| Request header | Usage | Value |
| --- | --- | --- |
| Canary | Optional | The value returned in logon Response canary header. Client MUST either pass this header to server or pass all of the following headers to the client. For more details, see section [2.2.2.5](#Section_2.2.2.5). |
| Authorization | Optional | The caller's credential is encoded text that is based on user name and password. For more details, see section [2.2.2.4](#Section_2.2.2.4). |
| AppName | Optional | The application name. For more details, see section [2.2.2.1](#Section_2.2.2.1). |
| AppVersion | Optional | The application version. For more details, see section [2.2.2.3](#Section_2.2.2.3). |
| AppPublisherName | Optional | The application publisher name. For more details, see section [2.2.2.2](#Section_2.2.2.2). |

The response message for this operation can result in the following status codes.

| Status code | Description |
| --- | --- |
| 200 | Operation successfully completed. |
| 400 | One or more parameters are not valid. |
| 401 | Access to the requested resource is denied. |
| 404 | The path does not exist. |

<a id="Section_3.2.5.3.1.1"></a>
###### 3.2.5.3.1.1 Request Body

None.

<a id="Section_3.2.5.3.1.2"></a>
###### 3.2.5.3.1.2 Response Body

The response body is encoded in either XML format or JSON format. The format is controlled by the Accept header defined in section [2.2.2.6](#Section_2.2.2.6). For the detailed definition of response body, refer to section [2.2.4.34](#Section_2.2.4.34).

<xs:element name="ItemThumbnail" nillable="true" type="tns1:ItemThumbnail"/>

<a id="Section_3.2.5.3.1.3"></a>
###### 3.2.5.3.1.3 Processing Details

This call will return the item thumbnail to the client.

The server MUST construct a response in either XML or JSON format based on the value of the Accept header (section [2.2.2.6](#Section_2.2.2.6)), or in XML format if the Accept header is not present. The response MUST include all of the complex types defined in section [2.2.4.34](#Section_2.2.4.34).

<a id="Section_3.2.6"></a>
### 3.2.6 Timer Events

None.

<a id="Section_3.2.7"></a>
### 3.2.7 Other Local Events

None.

<a id="Section_3.3"></a>
## 3.3 IFileOperationService Server Details

<a id="Section_3.3.1"></a>
### 3.3.1 Abstract Data Model

None.

<a id="Section_3.3.2"></a>
### 3.3.2 Timers

None.

<a id="Section_3.3.3"></a>
### 3.3.3 Initialization

At initialization time, the protocol server MUST begin listening for requests at the respective URL addresses given in the message transport (as specified in section [2.1](#Section_2.1)).

The storage provider MUST be initialized and configured correctly.

<a id="Section_3.3.4"></a>
### 3.3.4 Higher-Layer Triggered Events

None.

<a id="Section_3.3.5"></a>
### 3.3.5 Message Processing Events and Sequencing Rules

| Resource | Description |
| --- | --- |
| items/index/{index}/count/{count}?path={path}&filter={filter}&sortbyfield={sortbyfield}&ascending={ascending} | ItemList object that represents a collection of file items in the specified folder. |
| items/index/{index}/count/{count}/search?query={query}&sortbyfield={sortbyfield}&ascending={ascending}&scope={scope}&timeoutseconds={timeoutseconds} | SearchItemList object that represents a collection of file items that match the specified keyword. |
| folder/newsubfoldername?path={path}&language={language} | Default available new folder name in specified language. |
| itemmetadata?path={path} | ItemInfo object that represents the specified file item. |
| folder?path={path} | Folder being created. |
| item/rename?path={path}&newname={newname} | File being renamed. |
| item/delete?path={path} | File item being deleted. |
| accessuri?path={path} | Temporary URI that can be used to download a file. |
| item/move?newpath={newpath}&originalpath={originalpath} | File item being moved from another location. |
| item/copy?newpath={newpath}&originalpath={originalpath} | File item being copied from another location. |

The responses to all the operations can result in the following status codes.

| Status code | Reason phrase | Description |
| --- | --- | --- |
| 200 | OK | The operation successfully completed. |
| 400 | Bad Request | One or more parameters are not valid. |
| 401 | Unauthorized | Access to the requested resource is denied. |
| 404 | Not Found | The path does not exist. |
| 501 | Not Implemented | The server does not have the functionality to support the requested operation. |
| 503 | Service Unavailable | The server is currently unable to handle the request. |
| 504 | Gateway Timeout | The request does not finish within a given time interval. |
| 201 | Created | The request resource is created. |
| 409 | Conflict | The request fails due to a conflict with the current resource. |

<a id="Section_3.3.5.1"></a>
#### 3.3.5.1 items/index/{index}/count/{count}?path={path}&filter={filter}&sortbyfield={sortbyfield}&ascending={ascending}

The URI is an ItemList object that represents a collection of file items within the specified folder.

**index:** The numerical position of the first item to be retrieved (see section [2.2.3.18](#Section_2.2.3.18)).

**count:** The number of items to be retrieved (see section [2.2.3.5](#Section_2.2.3.5)).

**path:** The UNC path of the folder (see section [2.2.3.32](#Section_2.2.3.32)).

**filter:** The type of files to be retrieved (see section [2.2.3.11](#Section_2.2.3.11)). All file types will be retrieved if this parameter is ignored.

**sortbyfield:** The field of the file item property by which file items are sorted (see section [2.2.3.42](#Section_2.2.3.42)).

**ascending:** A Boolean value that indicates whether the sorting is ascending (see section [2.2.3.3](#Section_2.2.3.3)). Ascending sorting is performed if this parameter is ignored.

| HTTP method | Description |
| --- | --- |
| GET | Retrieves the metadata information of items in a folder. |

<a id="Section_3.3.5.1.1"></a>
##### 3.3.5.1.1 GET

The GET method retrieves the metadata information of items under a folder. The metadata includes basic information such as the creation time, item type, modification time, name, path, and size.

This operation is transported by an HTTP **GET**.

The operation can be invoked through the following URI:

https://<ServerName>/services/builtin/fileoperationservice.svc/items/index/{index}/count/{count}?path={path}&filter={filter}&sortbyfield={sortbyfield}&ascending={ascending}

The request message for this operation contains the following HTTP headers.

| Request header | Usage | Value |
| --- | --- | --- |
| Canary | Optional | The value returned in the logon Response Canary header. The client MUST either pass this header to the server or pass all of following headers to the client. For more details, see section [2.2.2.5](#Section_2.2.2.5). |
| Authorization | Optional | The caller's credential is encoded text that is based on user name and password. For more details, see section [2.2.2.4](#Section_2.2.2.4). |
| AppName | Optional | The application name. For more details, see section [2.2.2.1](#Section_2.2.2.1). |
| AppVersion | Optional | The application version. For more details, see section [2.2.2.3](#Section_2.2.2.3). |
| AppPublisherName | Optional | The name of the application publisher. For more details, see section [2.2.2.2](#Section_2.2.2.2). |

The response message for this operation can result in the following status codes.

| Status code | Description |
| --- | --- |
| 200 | The operation successfully completed. |
| 400 | One or more parameters are not valid. |
| 401 | Access to the requested resource is denied. |
| 404 | The path does not exist. |

<a id="Section_3.3.5.1.1.1"></a>
###### 3.3.5.1.1.1 Request Body

None.

<a id="Section_3.3.5.1.1.2"></a>
###### 3.3.5.1.1.2 Response Body

The response body is encoded in XML or JSON format according to the ACCEPT header of the request.

<xs:element name="ItemList" nillable="true" type="tns1:ItemList"/>

<a id="Section_3.3.5.1.1.3"></a>
###### 3.3.5.1.1.3 Processing Details

This operation enumerates the file items in the specified folder and returns a collection of metadata that fulfils the specified parameters.

<a id="Section_3.3.5.2"></a>
#### 3.3.5.2 items/index/{index}/count/{count}/search?query={query}&sortbyfield={sortbyfield}&ascending={ascending}&scope={scope}&timeoutseconds={timeoutseconds}

This URI represents a search method that returns a SearchItemList object. The SearchItemList object represents a collection of file items that match the specified keyword.

**index:** The numerical position of the first item to be retrieved (see section [2.2.3.18](#Section_2.2.3.18)).

**count:** The number of items to be retrieved (see section [2.2.3.5](#Section_2.2.3.5)).

**query:** The start string to search for within the names of the files and folders. The asterisk (*) and question mark (?) wildcard characters are supported (see section [2.2.3.34](#Section_2.2.3.34)).

**sortbyfield:** The field of the file item property by which file items are sorted (see section [2.2.3.42](#Section_2.2.3.42)).

**ascending:** A Boolean value that indicates whether the sorting is ascending (see section [2.2.3.3](#Section_2.2.3.3)). If this parameter is ignored, ascending sorting is applied.

**scope:** The UNC path of the folder where the search is performed (see section [2.2.3.37](#Section_2.2.3.37)). All shared folders are searched if this parameter is ignored.

**timeoutseconds:** The number of seconds after which the request times out (see section [2.2.3.47](#Section_2.2.3.47)). Timeout interval is set to 10 seconds if this parameter is ignored.

| HTTP method | Description |
| --- | --- |
| GET | Retrieves the metadata information for search results. |

<a id="Section_3.3.5.2.1"></a>
##### 3.3.5.2.1 GET

The GET method retrieves the metadata information for search results. The metadata includes basic information such as the creation time, item type, modification time, name, path, and size. The search occurs across all share folders that users have access to.

This operation is transported by an HTTP **GET**.

The operation can be invoked through the following URI:

https://<ServerName>/services/builtin/fileoperationservice.svc/items/index/{index}/count/{count}/search?query={query}&sortbyfield={sortbyfield}&ascending={ascending}&scope={scope}&timeoutseconds={timeoutseconds}

The request message for this operation contains the following HTTP headers.

| Request header | Usage | Value |
| --- | --- | --- |
| Canary | Optional | The value returned in login Response Canary header. Client MUST either pass this header to the server or pass all of the following headers to the client. For more details, see section [2.2.2.5](#Section_2.2.2.5). |
| Authorization | Optional | The caller's credential is encoded text that is based on user name and password. For more details, see section [2.2.2.4](#Section_2.2.2.4). |
| AppName | Optional | Application name. For more details, see section [2.2.2.1](#Section_2.2.2.1). |
| AppVersion | Optional | Application version. For more details, see section [2.2.2.3](#Section_2.2.2.3). |
| AppPublisherName | Optional | Application publisher name. For more details, see section [2.2.2.2](#Section_2.2.2.2). |

The response message for this operation can result in the following status codes.

| Status code | Description |
| --- | --- |
| 200 | Operation successfully completed. |
| 400 | One or more parameters are not valid. |
| 401 | Access to the requested resource is denied. |
| 501 | Windows search service is not available. |
| 503 | Windows search service failed to perform the search. |
| 504 | Search does not finish within the specified timeout interval. |

<a id="Section_3.3.5.2.1.1"></a>
###### 3.3.5.2.1.1 Request Body

None.

<a id="Section_3.3.5.2.1.2"></a>
###### 3.3.5.2.1.2 Response Body

The response body is encoded in XML or JSON format according to the ACCEPT header of the request.

<xs:element name="SearchItemList" nillable="true" type="tns1:SearchItemList"/>

<a id="Section_3.3.5.2.1.3"></a>
###### 3.3.5.2.1.3 Processing Details

This operation searches file items in the specified folder and returns the collection of metadata that fulfills the specified parameters.

<a id="Section_3.3.5.3"></a>
#### 3.3.5.3 folder/newsubfoldername?path={path}&language={language}

This URI represents the unique name to use for a new folder.

**path:** The UNC path (specified in section [2.2.3.32](#Section_2.2.3.32)) for the new folder.

**language:** The language/region code (such as en-us) (specified in section [2.2.3.21](#Section_2.2.3.21)) of the new folder.

| HTTP method | Description |
| --- | --- |
| GET | Generates an unused name to use for a new folder. |

<a id="Section_3.3.5.3.1"></a>
##### 3.3.5.3.1 GET

The GET operation generates a unique name to use for a new folder.

This operation is transported by an HTTP **GET**.

The operation can be invoked through the following URI:

https://<ServerName>/services/builtin/fileoperationservice.svc/folder/newsubfoldername?path={path}&language={language}

The request message for this operation contains the following HTTP headers.

| Request header | Usage | Value |
| --- | --- | --- |
| Canary | Optional | The value returned in the logon Response Canary header. Client MUST either pass this header to the server or pass all of the following headers to the client. For more details, see section [2.2.2.5](#Section_2.2.2.5). |
| Authorization | Optional | The caller's credential is encoded text that is based on user name and password. For more details, see section [2.2.2.4](#Section_2.2.2.4). |
| AppName | Optional | Application name. For more details, see section [2.2.2.1](#Section_2.2.2.1). |
| AppVersion | Optional | Application version. For more details, see section [2.2.2.3](#Section_2.2.2.3). |
| AppPublisherName | Optional | Application publisher name. For more details, see section [2.2.2.2](#Section_2.2.2.2). |

The response message for this operation can result in the following status codes.

| Status code | Description |
| --- | --- |
| 200 | Operation successfully completed. |
| 400 | One or more parameters are not valid. |
| 401 | Access to the requested resource is denied. |
| 404 | Folder specified by the path does not exist. |

<a id="Section_3.3.5.3.1.1"></a>
###### 3.3.5.3.1.1 Request Body

None.

<a id="Section_3.3.5.3.1.2"></a>
###### 3.3.5.3.1.2 Response Body

The response body is encoded in XML or JSON format according to the ACCEPT header of the request.

<xs:element name="string" nillable="true" type="xs:string"/>

<a id="Section_3.3.5.3.1.3"></a>
###### 3.3.5.3.1.3 Processing Details

This operation retrieves the next available new folder name with the predefined pattern in the specified folder.

<a id="Section_3.3.5.4"></a>
#### 3.3.5.4 itemmetadata?path={path}

This URI represents the basic metadata of a single item.

**path:** The UNC path (section [2.2.3.32](#Section_2.2.3.32)) of the file item.

| HTTP method | Description |
| --- | --- |
| GET | Retrieves the basic metadata of a single item. |

<a id="Section_3.3.5.4.1"></a>
##### 3.3.5.4.1 GET

The GET operation retrieves the basic metadata of a single item.

This operation is transported by an HTTP **GET**.

The operation can be invoked through the following URI:

https://<ServerName>/services/builtin/fileoperationservice.svc/itemmetadata?path={path}

The request message for this operation contains the following HTTP headers.

| Request header | Usage | Value |
| --- | --- | --- |
| Canary | Optional | The value returned in the logon Response Canary header. Client MUST either pass this header to the server or pass all of the following headers to the client. For more details, see section [2.2.2.5](#Section_2.2.2.5). |
| Authorization | Optional | The caller's credential is encoded text that is based on user name and password. For more details, see section [2.2.2.4](#Section_2.2.2.4). |
| AppName | Optional | Application name. For more details, see section [2.2.2.1](#Section_2.2.2.1). |
| AppVersion | Optional | Application version. For more details, see section [2.2.2.3](#Section_2.2.2.3). |
| AppPublisherName | Optional | Application publisher name. For more details, see section [2.2.2.2](#Section_2.2.2.2). |

The response message for this operation can result in the following status codes.

| Status code | Description |
| --- | --- |
| 200 | Operation successfully completed. |
| 400 | One or more parameters are not valid. |
| 401 | Access to the requested resource is denied. |
| 404 | The path does not exist. |

<a id="Section_3.3.5.4.1.1"></a>
###### 3.3.5.4.1.1 Request Body

None.

<a id="Section_3.3.5.4.1.2"></a>
###### 3.3.5.4.1.2 Response Body

The response body is encoded in XML or JSON format according to ACCEPT header of the request.

<xs:element name="ItemInfo" nillable="true" type="tns1:ItemInfo"/>

<a id="Section_3.3.5.4.1.3"></a>
###### 3.3.5.4.1.3 Processing Details

This operation returns the metadata of the specified file item.

<a id="Section_3.3.5.5"></a>
#### 3.3.5.5 folder?path={path}

This URI represents a new folder in a path where the user has the required permissions.

**path:**The UNC path (section [2.2.3.32](#Section_2.2.3.32)) of the new folder.

| HTTP method | Description |
| --- | --- |
| POST | Creates a new folder in a path where the user has the required permissions. |

<a id="Section_3.3.5.5.1"></a>
##### 3.3.5.5.1 POST

The POST operation creates a new folder in a path where the user has the required permissions.

This operation is transported by an HTTP POST**.**

The operation can be invoked through the following URI:

https://<ServerName>/services/builtin/fileoperationservice.svc/folder?path={path}

The request message for this operation contains the following HTTP headers.

| Request header | Usage | Value |
| --- | --- | --- |
| Canary | Optional | The value returned in the logon Response Canary header. Client MUST either pass this header to the server or pass all of the following headers to the client. For more details, see section [2.2.2.5](#Section_2.2.2.5). |
| Authorization | Optional | The caller's credential is encoded text that is based on user name and password. For more details, see section [2.2.2.4](#Section_2.2.2.4). |
| AppName | Optional | Application name. For more details, see section [2.2.2.1](#Section_2.2.2.1). |
| AppVersion | Optional | Application version. For more details, see section [2.2.2.3](#Section_2.2.2.3). |
| AppPublisherName | Optional | Application publisher name. For more details, see section [2.2.2.2](#Section_2.2.2.2). |

The response message for this operation can result in the following status codes.

| Status code | Description |
| --- | --- |
| 201 | The folder is created. |
| 400 | One or more parameters are not valid. |
| 401 | Access to the requested resource is denied. |
| 409 | File item with the new name exists. |

<a id="Section_3.3.5.5.1.1"></a>
###### 3.3.5.5.1.1 Request Body

None.

<a id="Section_3.3.5.5.1.2"></a>
###### 3.3.5.5.1.2 Response Body

The response body is encoded in XML or JSON format according to the ACCEPT header of the request.

<a id="Section_3.3.5.5.1.3"></a>
###### 3.3.5.5.1.3 Processing Details

This operation creates a new folder with the given name in the specified folder.

<a id="Section_3.3.5.6"></a>
#### 3.3.5.6 item/rename?path={path}&newname={newname}

This URI represents the name of an existing item.

**path:** UNC path of the file item to be renamed (see section [2.2.3.32](#Section_2.2.3.32)).

**newname:** The new name of the item (see section [2.2.3.26](#Section_2.2.3.26)).

| HTTP method | Description |
| --- | --- |
| POST | Changes the name of an existing item. |

<a id="Section_3.3.5.6.1"></a>
##### 3.3.5.6.1 POST

The POST operation changes the name of an existing item.

This operation is transported by an HTTP **POST**.

The operation can be invoked through the following URI:

https://<ServerName>/services/builtin/fileoperationservice.svc/item/rename?path={path}&newname={newname}

The request message for this operation contains the following HTTP headers.

| Request header | Usage | Value |
| --- | --- | --- |
| Canary | Optional | The value returned in the logon Response Canary header. Client MUST either pass this header to the server or pass all of the following headers to the server. For more details, see section [2.2.2.5](#Section_2.2.2.5). |
| Authorization | Optional | The caller's credential is encoded text that is based on user name and password. For more details, see section [2.2.2.4](#Section_2.2.2.4). |
| AppName | Optional | Application name. For more details, see section [2.2.2.1](#Section_2.2.2.1). |
| AppVersion | Optional | Application version. For more details, see section [2.2.2.3](#Section_2.2.2.3). |
| AppPublisherName | Optional | Application publisher name. For more details, see section [2.2.2.2](#Section_2.2.2.2). |

The response message for this operation can result in the following status codes.

| Status code | Description |
| --- | --- |
| 200 | Operation successfully completed. |
| 400 | One or more parameters are not valid. |
| 401 | Access to the requested resource is denied. |
| 404 | The path does not exist. |
| 409 | File item with the new name exists. |

<a id="Section_3.3.5.6.1.1"></a>
###### 3.3.5.6.1.1 Request Body

None.

<a id="Section_3.3.5.6.1.2"></a>
###### 3.3.5.6.1.2 Response Body

None.

<a id="Section_3.3.5.6.1.3"></a>
###### 3.3.5.6.1.3 Processing Details

This operation changes name of the specified file item.

<a id="Section_3.3.5.7"></a>
#### 3.3.5.7 item/delete?path={path}

This URI represents an existing item in a path where the user has the required permissions to delete.

**path:** UNC path of the file to be deleted (see section [2.2.3.32](#Section_2.2.3.32)).

| HTTP method | Description |
| --- | --- |
| POST | Deletes an existing item in a path where the user has the required permissions. If the path is a folder, the method also removes all items in the folder. |

<a id="Section_3.3.5.7.1"></a>
##### 3.3.5.7.1 POST

The POST method deletes an existing item in a path where the user has the required permissions. If the path is a folder, the method also removes all items in the folder.

This operation is transported by an HTTP **POST**.

The operation can be invoked through the following URI:

https://<ServerName>/services/builtin/fileoperationservice.svc/item/delete?path={path}

The request message for this operation contains the following HTTP headers.

| Request header | Usage | Value |
| --- | --- | --- |
| Canary | Optional | The value returned in the logon Response Canary header. Client MUST either pass this header to the server or pass all of the following headers to the server. For more details, see section [2.2.2.5](#Section_2.2.2.5). |
| Authorization | Optional | The caller's credential is encoded text that is based on user name and password. For more details, see section [2.2.2.4](#Section_2.2.2.4). |
| AppName | Optional | Application name. For more details, see section [2.2.2.1](#Section_2.2.2.1). |
| AppVersion | Optional | Application version. For more details, see section [2.2.2.3](#Section_2.2.2.3). |
| AppPublisherName | Optional | Application publisher name. For more details, see section [2.2.2.2](#Section_2.2.2.2). |

<a id="Section_3.3.5.7.1.1"></a>
###### 3.3.5.7.1.1 Request Body

None.

<a id="Section_3.3.5.7.1.2"></a>
###### 3.3.5.7.1.2 Response Body

None.

<a id="Section_3.3.5.7.1.3"></a>
###### 3.3.5.7.1.3 Processing Details

This operation deletes the specified file item.

<a id="Section_3.3.5.8"></a>
#### 3.3.5.8 accessuri?path={path}

This URI represents a temporary URL for a file.

**path:** The UNC path of the file (see section [2.2.3.32](#Section_2.2.3.32)).

| HTTP method | Description |
| --- | --- |
| GET | Retrieves a temporary URL for a file. |

<a id="Section_3.3.5.8.1"></a>
##### 3.3.5.8.1 GET

The **GET** method retrieves a temporary URL for a file. The URL can be accessed only twice and only within 30 seconds after retrieval.

This operation is transported by an HTTP GET**.**

The operation can be invoked through the following URI:

https://<ServerName>/services/builtin/fileoperationservice.svc/accessuri?path={path}

The request message for this operation contains the following HTTP headers.

| Request header | Usage | Value |
| --- | --- | --- |
| Canary | Optional | The value returned in the logon Response Canary header. Client MUST either pass this header to the server or pass all of the following headers to the server. For more details, see section [2.2.2.5](#Section_2.2.2.5). |
| Authorization | Optional | The caller's credential is encoded text that is based on user name and password. For more details, see section [2.2.2.4](#Section_2.2.2.4). |
| AppName | Optional | Application name. For more details, see section [2.2.2.1](#Section_2.2.2.1). |
| AppVersion | Optional | Application version. For more details, see section [2.2.2.3](#Section_2.2.2.3). |
| AppPublisherName | Optional | Application publisher name. For more details, see section [2.2.2.2](#Section_2.2.2.2). |

The response message for this operation can result in the following status codes.

| Status code | Description |
| --- | --- |
| 200 | Operation successfully completed. |
| 400 | One or more parameters are not valid. |
| 401 | Access to the requested resource is denied. |
| 404 | The path does not exist. |

<a id="Section_3.3.5.8.1.1"></a>
###### 3.3.5.8.1.1 Request Body

None.

<a id="Section_3.3.5.8.1.2"></a>
###### 3.3.5.8.1.2 Response Body

The response body is encoded in XML or JSON format according to the ACCEPT header of the request.

<xs:element name="anyURI" type="xs:anyURI"/>

<a id="Section_3.3.5.8.1.3"></a>
###### 3.3.5.8.1.3 Processing Details

This operation retrieves a temporary URL for a file. The URL can be accessed only twice and only within 30 seconds after retrieval.

<a id="Section_3.3.5.9"></a>
#### 3.3.5.9 item/move?newpath={newpath}&originalpath={originalpath}

This URI represents a file item that can be moved to another location.

**originalpath:** UNC path of the file item (see section [2.2.3.29](#Section_2.2.3.29)).

**newpath:** The new UNC path of the file item (see section [2.2.3.27](#Section_2.2.3.27)).

| HTTP method | Description |
| --- | --- |
| POST | Move a file item to another location. |

<a id="Section_3.3.5.9.1"></a>
##### 3.3.5.9.1 POST

The POST method moves a file item to another location.

This operation is transported by an HTTP **POST.**

The operation can be invoked through the following URI:

https://<ServerName>/services/builtin/fileoperationservice.svc/item/move?newpath={newpath}&originalpath={originalpath}

The request message for this operation contains the following HTTP headers.

| Request header | Usage | Value |
| --- | --- | --- |
| Canary | Optional | The value returned in the logon Response Canary header. Client MUST either pass this header to the server or pass all of the following headers to the server. For more details, see section [2.2.2.5](#Section_2.2.2.5). |
| Authorization | Optional | The caller's credential is encoded text that is based on user name and password. For more details, see section [2.2.2.4](#Section_2.2.2.4). |
| AppName | Optional | Application name. For more details, see section [2.2.2.1](#Section_2.2.2.1). |
| AppVersion | Optional | Application version. For more details, see section [2.2.2.3](#Section_2.2.2.3). |
| AppPublisherName | Optional | Application publisher name. For more details, see section [2.2.2.2](#Section_2.2.2.2). |

The response message for this operation can result in the following status codes.

| Status code | Description |
| --- | --- |
| 200 | Operation successfully completed. |
| 400 | One or more parameters are not valid. |
| 401 | Access to the requested resource is denied. |
| 404 | The path does not exist. |
| 409 | File item with the new path exists. |

<a id="Section_3.3.5.9.1.1"></a>
###### 3.3.5.9.1.1 Request Body

None.

<a id="Section_3.3.5.9.1.2"></a>
###### 3.3.5.9.1.2 Response Body

None.

<a id="Section_3.3.5.9.1.3"></a>
###### 3.3.5.9.1.3 Processing Details

This operation moves a file item to another location.

<a id="Section_3.3.5.10"></a>
#### 3.3.5.10 item/copy?newpath={newpath}&originalpath={originalpath}

This URI represents a file item that can be copied to another location.

**originalpath:** UNC path of the file item (see section [2.2.3.29](#Section_2.2.3.29)).

**newpath:** The new UNC path of the file item (see section [2.2.3.27](#Section_2.2.3.27)).

| HTTP method | Description |
| --- | --- |
| POST | Copy a file item to another location. |

<a id="Section_3.3.5.10.1"></a>
##### 3.3.5.10.1 POST

The **POST** method copies a file item to another location.

This operation is transported by an HTTP **POST**.

The operation can be invoked through the following URI:

https://<ServerName>/services/builtin/fileoperationservice.svc/item/copy?newpath={newpath}&originalpath={originalpath}

The request message for this operation contains the following HTTP headers.

| Request header | Usage | Value |
| --- | --- | --- |
| Canary | Optional | The value returned in the logon Response Canary header. Client MUST either pass this header to the server or pass all of the following headers to the server. For more details, see section [2.2.2.5](#Section_2.2.2.5). |
| Authorization | Optional | The caller's credential is encoded text that is based on user name and password. For more details, see section [2.2.2.4](#Section_2.2.2.4). |
| AppName | Optional | Application name. For more details, see section [2.2.2.1](#Section_2.2.2.1). |
| AppVersion | Optional | Application version. For more details, see section [2.2.2.3](#Section_2.2.2.3). |
| AppPublisherName | Optional | Application publisher name. For more details, see section [2.2.2.2](#Section_2.2.2.2). |

The response message for this operation can result in the following status codes.

| Status code | Description |
| --- | --- |
| 200 | Operation successfully completed. |
| 400 | One or more parameters are not valid. |
| 401 | Access to the requested resource is denied. |
| 404 | The path does not exist. |
| 409 | File item with the new path has existed. |

<a id="Section_3.3.5.10.1.1"></a>
###### 3.3.5.10.1.1 Request Body

None.

<a id="Section_3.3.5.10.1.2"></a>
###### 3.3.5.10.1.2 Response Body

None.

<a id="Section_3.3.5.10.1.3"></a>
###### 3.3.5.10.1.3 Processing Details

This operation copies the file item to another location.

<a id="Section_3.3.6"></a>
### 3.3.6 Timer Events

None.

<a id="Section_3.3.7"></a>
### 3.3.7 Other Local Events

None.

<a id="Section_3.4"></a>
## 3.4 IAzureADManagement Server Details

<a id="Section_3.4.1"></a>
### 3.4.1 Abstract Data Model

This section describes a conceptual service contract that an implementation maintains in order to participate in this protocol. The described operations of the service contract are provided to facilitate the explanation of how the protocol behaves. This document does not mandate that implementations adhere to this service contract as long as their external behavior is consistent with how it is described in this document.

<a id="Section_3.4.1.1"></a>
#### 3.4.1.1 MSOUser

The data model uses the full complex types defined in section [2.2.4.53](#Section_2.2.4.53).

<a id="Section_3.4.1.2"></a>
#### 3.4.1.2 MSOTenantInformation

The data model uses the full complex types defined in section [2.2.4.52](#Section_2.2.4.52).

<a id="Section_3.4.1.3"></a>
#### 3.4.1.3 ArrayOfMSODomain

The data model uses the full complex types defined in section [2.2.4.13](#Section_2.2.4.13).

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

| Resource | Description |
| --- | --- |
| msouser?localusername={localusername} | Get the mapped Microsoft online user's information. |
| msousers | Get all Microsoft online users. |
| msouser/create?localusername={localusername}&onlineusername={onlineusername} | Create a Microsoft online user. |
| msouser/assign?localusername={localusername}&onlineusername={onlineusername} | Assign a Microsoft online user to local user. |
| msouser/unassign?localusername={localusername} | Un-assign the Microsoft online user from local user. |
| msouser/enable?localusername={localusername} | Enable the Microsoft online user. |
| msouser/disable?localusername={localusername} | Disable the Microsoft online user. |
| msouser/delete?localusername={localusername} | Delete the Microsoft online user. |
| msodomains | Get all accepted Microsoft online domains. |
| msosubscriptioninfo | Get Microsoft online subscription information. |
| msolicense/set?localusername={localusername} | Set Microsoft online account license. |

The responses to all the operations can result in the following status codes.

| Status code | Reason phrase | Description |
| --- | --- | --- |
| 200 | OK | The operation successfully completed. |
| 400 | Bad Request | Invalid parameter. |
| 401 | Unauthorized | The user is not authorized for web access. |
| 404 | Not Found | Cannot find the local user or online user. |
| 500 | Internal server error | An internal server error occurred. |
| 409 | Conflict | The operation failed because of the status conflict. |
| 501 | Not Implemented | The operation is not supported. |
| 403 | Forbidden | The operation is forbidden. |

<a id="Section_3.4.5.1"></a>
#### 3.4.5.1 msouser?localusername={localusername}

Retrieves the mapped online user.

**localusername**: Local user name.

| HTTP method | Description |
| --- | --- |
| GET | Retrieve the mapped online user. |

<a id="Section_3.4.5.1.1"></a>
##### 3.4.5.1.1 GET

This API retrieves the online user mapped to the local user.

This operation is transported by an HTTP **GET**.

The operation can be invoked through the following URI:

https://<serverName>/services/builtin/AzureADManagement.svc/msouser?localusername={localusername}

The request message for this operation contains the following HTTP headers.

| Request header | Usage | Value |
| --- | --- | --- |
| Canary | Optional | The user token. Client MUST either pass this header to the server or pass all of the following headers to the server. For more details, refer to section [2.2.2.5](#Section_2.2.2.5). |
| Authorization | Optional | The caller's credential is encoded text that is based on user name and password. For more details, refer to section [2.2.2.4](#Section_2.2.2.4). |
| AppName | Optional | The client application name. For more details, refer to section [2.2.2.1](#Section_2.2.2.1). |
| AppVersion | Optional | The client application version. For more details, refer to section [2.2.2.3](#Section_2.2.2.3). |
| AppPublisherName | Optional | The client application publisher name. For more details, refer to section [2.2.2.2](#Section_2.2.2.2). |

The response message for this operation can result in the following status codes.

| Status code | Description |
| --- | --- |
| 200 | Operation successfully completed. |
| 400 | Invalid parameter. |
| 401 | The user is not authorized for web access. |
| 404 | Cannot find the local user or online user. |
| 500 | Internal server error. |

<a id="Section_3.4.5.1.1.1"></a>
###### 3.4.5.1.1.1 Request Body

None.

<a id="Section_3.4.5.1.1.2"></a>
###### 3.4.5.1.1.2 Response Body

The response body is encoded in either XML or JSON format. The format is controlled by the Accept header specified in section [2.2.4.53](#Section_2.2.4.53).

<xs:element name="MSOUser" nillable="true" xmlns:q3="http://schemas.datacontract.org/2004/07/Microsoft.WindowsServerSolutions.AzureADObjectModel" type="q3:MSOUser"/>

<a id="Section_3.4.5.1.1.3"></a>
###### 3.4.5.1.1.3 Processing Details

This call returns the information of the online user. See section [2.2.4.53](#Section_2.2.4.53).

The server MUST construct a response in either XML or JSON format based on the value of the Accept header (section [2.2.2.6](#Section_2.2.2.6)), or in XML format if the Accept header is not present.

<a id="Section_3.4.5.2"></a>
#### 3.4.5.2 msousers

Retrieves all of the online users.

| HTTP method | Description |
| --- | --- |
| GET | Retrieves all of the online users. |

<a id="Section_3.4.5.2.1"></a>
##### 3.4.5.2.1 GET

This API retrieves all of the online users.

This operation is transported by an HTTP GET**.**

The operation can be invoked through the following URI:

https://<serverName>/services/builtin/AzureADManagement.svc/msousers

The request message for this operation contains the following HTTP headers.

| Request header | Usage | Value |
| --- | --- | --- |
| Canary | Optional | The user token. Client MUST either pass this header to the server or pass all of the following headers to the server. For more details, refer to section [2.2.2.5](#Section_2.2.2.5). |
| Authorization | Optional | The caller's credential is encoded text that is based on user name and password. For more details, refer to section [2.2.2.4](#Section_2.2.2.4). |
| AppName | Optional | The client application name. For more details, refer to section [2.2.2.1](#Section_2.2.2.1). |
| AppVersion | Optional | The client application version. For more details, refer to section [2.2.2.3](#Section_2.2.2.3). |
| AppPublisherName | Optional | The client application publisher name. For more details, refer to section [2.2.2.2](#Section_2.2.2.2). |

The response message for this operation can result in the following status codes.

| Status code | Description |
| --- | --- |
| 200 | Operation successfully completed. |
| 400 | Invalid parameter. |
| 401 | The user is not authorized for web access. |
| 500 | Internal server error. |

<a id="Section_3.4.5.2.1.1"></a>
###### 3.4.5.2.1.1 Request Body

None.

<a id="Section_3.4.5.2.1.2"></a>
###### 3.4.5.2.1.2 Response Body

The response body is encoded in either XML or JSON format. The format is controlled by the Accept header defined in section [2.2.4.18](#Section_2.2.4.18).

<xs:element name="ArrayOfMSOUser" nillable="true" xmlns:q4="http://schemas.datacontract.org/2004/07/Microsoft.WindowsServerSolutions.AzureADObjectModel" type="q4:ArrayOfMSOUser"/>

<a id="Section_3.4.5.2.1.3"></a>
###### 3.4.5.2.1.3 Processing Details

This call returns the information of all the online users. See section [2.2.4.18](#Section_2.2.4.18).

The server MUST construct a response in either XML or JSON format based on the value of the Accept header (section [2.2.2.6](#Section_2.2.2.6)), or in XML format if the Accept header is not present.

<a id="Section_3.4.5.3"></a>
#### 3.4.5.3 msouser/create?localusername={localusername}&onlineusername={onlineusername}

Creates an online user and assigns to the local user.

**localusername:** Local user name.

**onlineusername:** Online user name, recommended to be a [**UPN**](#gt_user-principal-name-upn).

| HTTP method | Description |
| --- | --- |
| POST | Create an online user and assign to the local user. |

<a id="Section_3.4.5.3.1"></a>
##### 3.4.5.3.1 POST

This API creates an online user and assigns to the local user.

This operation is transported by an HTTP **POST**.

The operation can be invoked through the following URI:

https://<serverName>/services/builtin/AzureADManagement.svc/msouser/create?localusername={localusername}&onlineusername={onlineusername}

The request message for this operation contains the following HTTP headers.

| Request header | Usage | Value |
| --- | --- | --- |
| Canary | Optional | The value returned in the logon Response Canary header. Client MUST either pass this header to the server or pass all of the following headers to the server. For more details, refer to section [2.2.2.5](#Section_2.2.2.5). |
| Authorization | Optional | The caller's credential is encoded text that is based on user name and password. For more details, refer to section [2.2.2.4](#Section_2.2.2.4). |
| AppName | Optional | Application name. For more details, refer to section [2.2.2.1](#Section_2.2.2.1). |
| AppVersion | Optional | Application version. For more details, refer to section [2.2.2.3](#Section_2.2.2.3). |
| AppPublisherName | Optional | Application publisher name. For more details, refer to section [2.2.2.2](#Section_2.2.2.2). |

The response message for this operation can result in the following status codes.

| Status code | Description |
| --- | --- |
| 200 | Operation successfully completed. |
| 400 | Invalid parameter. |
| 401 | The user is not authorized for web access. |
| 404 | Cannot find the local user or online user. |
| 409 | Operation failed because of the status conflict. |
| 500 | Internal server error. |

<a id="Section_3.4.5.3.1.1"></a>
###### 3.4.5.3.1.1 Request Body

The request body is encoded in XML format or JSON format based on the value of the Accept header (section [2.2.2.6](#Section_2.2.2.6)), or in XML format if the Accept header is not present.

<a id="Section_3.4.5.3.1.2"></a>
###### 3.4.5.3.1.2 Response Body

None.

<a id="Section_3.4.5.3.1.3"></a>
###### 3.4.5.3.1.3 Processing Details

This API creates an online user and assigns to the local user.

<a id="Section_3.4.5.4"></a>
#### 3.4.5.4 msouser/assign?localusername={localusername}&onlineusername={onlineusername}

This API assigns the online user to the local user.

**localusername:** Local user name.

**onlineusername:** Online user name.

| HTTP method | Description |
| --- | --- |
| POST | This API will assign the online user to the local user. |

<a id="Section_3.4.5.4.1"></a>
##### 3.4.5.4.1 POST

This API assigns the online user to the local user.

This operation is transported by an HTTP **POST**.

The operation can be invoked through the following URI:

https://<serverName>/services/builtin/AzureADManagement.svc/msouser/assign?localusername={localusername}&onlineusername={onlineusername}

The request message for this operation contains the following HTTP headers.

| Request header | Usage | Value |
| --- | --- | --- |
| Canary | Optional | The value returned in the logon Response Canary header. Client MUST either pass this header to the server or pass all of the following headers to the server. For more details, refer to section [2.2.2.5](#Section_2.2.2.5). |
| Authorization | Optional | The caller's credential is encoded text that is based on user name and password. For more details, refer to section [2.2.2.4](#Section_2.2.2.4). |
| AppName | Optional | Application name. For more details, refer to section [2.2.2.1](#Section_2.2.2.1). |
| AppVersion | Optional | Application version. For more details, refer to section [2.2.2.3](#Section_2.2.2.3). |
| AppPublisherName | Optional | Application publisher name. For more details, refer to section [2.2.2.2](#Section_2.2.2.2). |

The response message for this operation can result in the following status codes.

| Status code | Description |
| --- | --- |
| 200 | Operation successfully completed. |
| 400 | Invalid parameter. |
| 401 | The user is not authorized for web access. |
| 404 | Cannot find the local user or online user. |
| 409 | Operation failed because of the status conflict. |
| 500 | Internal server error. |
| 501 | Operation is not supported. |

<a id="Section_3.4.5.4.1.1"></a>
###### 3.4.5.4.1.1 Request Body

None.

<a id="Section_3.4.5.4.1.2"></a>
###### 3.4.5.4.1.2 Response Body

None.

<a id="Section_3.4.5.4.1.3"></a>
###### 3.4.5.4.1.3 Processing Details

This API reassigns the online user to the local user.

<a id="Section_3.4.5.5"></a>
#### 3.4.5.5 msouser/unassign?localusername={localusername}

This API reassigns the online user to the local user.

**localusername**:

| HTTP method | Description |
| --- | --- |
| POST | This API reassigns the online user to the local user. |

<a id="Section_3.4.5.5.1"></a>
##### 3.4.5.5.1 POST

This API reassigns the online user to the local user.

This operation is transported by an HTTP **POST.**

The operation can be invoked through the following URI:

https://<serverName>/services/builtin/AzureADManagement.svc/msouser/unassign?localusername={localusername}

The request message for this operation contains the following HTTP headers.

| Request header | Usage | Value |
| --- | --- | --- |
| Canary | Optional | The value returned in the logon Response Canary header. Client MUST either pass this header to the server or pass all of the following headers to the server. For more details, refer to section [2.2.2.5](#Section_2.2.2.5). |
| Authorization | Optional | The caller's credential is encoded text that is based on user name and password. For more details, refer to section [2.2.2.4](#Section_2.2.2.4). |
| AppName | Optional | Application name. For more details, refer to section [2.2.2.1](#Section_2.2.2.1). |
| AppVersion | Optional | Application version. For more details, refer to section [2.2.2.3](#Section_2.2.2.3). |
| AppPublisherName | Optional | Application publisher name. For more details, refer to section [2.2.2.2](#Section_2.2.2.2). |

The response message for this operation can result in the following status codes.

| Status code | Description |
| --- | --- |
| 200 | Operation successfully completed. |
| 400 | Invalid parameter. |
| 401 | The user is not authorized for web access. |
| 404 | Cannot find the local user or online user. |
| 409 | Operation failed because of the status conflict. |
| 500 | Internal server error. |
| 501 | Operation is not supported. |

<a id="Section_3.4.5.5.1.1"></a>
###### 3.4.5.5.1.1 Request Body

None.

<a id="Section_3.4.5.5.1.2"></a>
###### 3.4.5.5.1.2 Response Body

None.

<a id="Section_3.4.5.5.1.3"></a>
###### 3.4.5.5.1.3 Processing Details

This API reassigns the online user to the local user.

<a id="Section_3.4.5.6"></a>
#### 3.4.5.6 msouser/enable?localusername={localusername}

This API enables the online user, which is mapped to the local user.

**localusername:**local user name

| HTTP method | Description |
| --- | --- |
| POST | This API enables the online user, which is mapped to the local user. |

<a id="Section_3.4.5.6.1"></a>
##### 3.4.5.6.1 POST

This API enables the online user, which is mapped to the local user.

This operation is transported by an HTTP **POST**.

The operation can be invoked through the following URI:

https://<serverName>/services/builtin/AzureADManagement.svc/msouser/enable?localusername={localusername}

The request message for this operation contains the following HTTP headers.

| Request header | Usage | Value |
| --- | --- | --- |
| Canary | Optional | The value returned in the logon Response Canary header. Client MUST either pass this header to the server or pass all of the following headers to the server. For more details, refer to section [2.2.2.5](#Section_2.2.2.5). |
| Authorization | Optional | The caller's credential is encoded text that is based on user name and password. For more details, refer to section [2.2.2.4](#Section_2.2.2.4). |
| AppName | Optional | Application name. For more details, refer to section [2.2.2.1](#Section_2.2.2.1). |
| AppVersion | Optional | Application version. For more details, refer to section [2.2.2.3](#Section_2.2.2.3). |
| AppPublisherName | Optional | Application publisher name. For more details, refer to section [2.2.2.2](#Section_2.2.2.2). |

The response message for this operation can result in the following status codes.

| Status code | Description |
| --- | --- |
| 200 | Operation successfully completed. |
| 400 | Invalid parameter. |
| 401 | The user is not authorized for web access. |
| 404 | Cannot find the local user or online user. |
| 500 | Internal server error. |
| 501 | Operation is not supported. |

<a id="Section_3.4.5.6.1.1"></a>
###### 3.4.5.6.1.1 Request Body

None.

<a id="Section_3.4.5.6.1.2"></a>
###### 3.4.5.6.1.2 Response Body

None.

<a id="Section_3.4.5.6.1.3"></a>
###### 3.4.5.6.1.3 Processing Details

This API enables the online user, which is mapped to the local user.

<a id="Section_3.4.5.7"></a>
#### 3.4.5.7 msouser/disable?localusername={localusername}

This API disables the online user, which is mapped to the local user.

**localusername:** Local user name.

| HTTP method | Description |
| --- | --- |
| POST | This API disables the online user, which is mapped to the local user. |

<a id="Section_3.4.5.7.1"></a>
##### 3.4.5.7.1 POST

This API disables the online user, which is mapped to the local user.

This operation is transported by an HTTP **POST**.

The operation can be invoked through the following URI:

https://<serverName>/services/builtin/AzureADManagement.svc/msouser/disable?localusername={localusername}

The request message for this operation contains the following HTTP headers.

| Request header | Usage | Value |
| --- | --- | --- |
| Canary | Optional | The value returned in the logon Response Canary header. Client MUST either pass this header to the server or pass all of the following headers to the server. For more details, refer to section [2.2.2.5](#Section_2.2.2.5). |
| Authorization | Optional | The caller's credential is encoded text that is based on user name and password. For more details, refer to section [2.2.2.4](#Section_2.2.2.4). |
| AppName | Optional | Application name. For more details, refer to section [2.2.2.1](#Section_2.2.2.1). |
| AppVersion | Optional | Application version. For more details, refer to section [2.2.2.3](#Section_2.2.2.3). |
| AppPublisherName | Optional | Application publisher name. For more details, refer to section [2.2.2.2](#Section_2.2.2.2). |

The response message for this operation can result in the following status codes.

| Status code | Description |
| --- | --- |
| 200 | Operation successfully completed. |
| 400 | Invalid parameter. |
| 401 | The user is not authorized for web access. |
| 403 | Operation is forbidden. |
| 404 | Cannot find the local user or online user. |
| 500 | Internal server error. |
| 501 | Operation is not supported. |

<a id="Section_3.4.5.7.1.1"></a>
###### 3.4.5.7.1.1 Request Body

None.

<a id="Section_3.4.5.7.1.2"></a>
###### 3.4.5.7.1.2 Response Body

None.

<a id="Section_3.4.5.7.1.3"></a>
###### 3.4.5.7.1.3 Processing Details

This API disables the online user, which is mapped to the local user.

<a id="Section_3.4.5.8"></a>
#### 3.4.5.8 msouser/delete?localusername={localusername}

This API deletes the online user, which is mapped to the local user.

**localusername:**

| HTTP method | Description |
| --- | --- |
| POST | This API deletes the online user, which is mapped to the local user. |

<a id="Section_3.4.5.8.1"></a>
##### 3.4.5.8.1 POST

This API deletes the online user, which is mapped to the local user.

This operation is transported by an HTTP **POST**.

The operation can be invoked through the following URI:

https://<serverName>/services/builtin/AzureADManagement.svc/msouser/delete?localusername={localusername}

The request message for this operation contains the following HTTP headers.

| Request header | Usage | Value |
| --- | --- | --- |
| Canary | Optional | The value returned in the logon Response Canary header. Client MUST either pass this header to the server or pass all of the following headers to the server. For more details, refer to section [2.2.2.5](#Section_2.2.2.5). |
| Authorization | Optional | The caller's credential is encoded text that is based on user name and password. For more details, refer to section [2.2.2.4](#Section_2.2.2.4). |
| AppName | Optional | Application name. For more details, refer to section [2.2.2.1](#Section_2.2.2.1). |
| AppVersion | Optional | Application version. For more details, refer to section [2.2.2.3](#Section_2.2.2.3). |
| AppPublisherName | Optional | Application publisher name. For more details, refer to section [2.2.2.2](#Section_2.2.2.2). |

The response message for this operation can result in the following status codes.

| Status code | Description |
| --- | --- |
| 200 | Operation successfully completed. |
| 400 | Invalid parameter. |
| 401 | The user is not authorized for web access. |
| 403 | Operation is forbidden. |
| 404 | Cannot find the local user or online user. |
| 500 | Internal server error. |

<a id="Section_3.4.5.8.1.1"></a>
###### 3.4.5.8.1.1 Request Body

None.

<a id="Section_3.4.5.8.1.2"></a>
###### 3.4.5.8.1.2 Response Body

None.

<a id="Section_3.4.5.8.1.3"></a>
###### 3.4.5.8.1.3 Processing Details

This API deletes the online user, which is mapped to the local user.

<a id="Section_3.4.5.9"></a>
#### 3.4.5.9 msodomains

This API retrieves all the accepted online domains.

| HTTP method | Description |
| --- | --- |
| GET | This API retrieves all the accepted online domains. |

<a id="Section_3.4.5.9.1"></a>
##### 3.4.5.9.1 GET

This API retrieves all the accepted online domains.

This operation is transported by an HTTP **GET**.

The operation can be invoked through the following URI:

https://<serverName>/services/builtin/AzureADManagement.svc/msodomains

The request message for this operation contains the following HTTP headers.

| Request header | Usage | Value |
| --- | --- | --- |
| Canary | Optional | The value returned in the logon Response Canary header. Client MUST either pass this header to the server or pass all of the following headers to the server. For more details, refer to section [2.2.2.5](#Section_2.2.2.5). |
| Authorization | Optional | The caller's credential is encoded text that is based on user name and password. For more details, refer to section [2.2.2.4](#Section_2.2.2.4). |
| AppName | Optional | Application name. For more details, refer to section [2.2.2.1](#Section_2.2.2.1). |
| AppVersion | Optional | Application version. For more details, refer to section [2.2.2.3](#Section_2.2.2.3). |
| AppPublisherName | Optional | Application publisher name. For more details, refer to section [2.2.2.2](#Section_2.2.2.2). |

The response message for this operation can result in the following status codes.

| Status code | Description |
| --- | --- |
| 200 | Operation successfully completed. |
| 400 | Invalid parameter. |
| 401 | The user is not authorized for web access. |
| 500 | Internal server error. |

<a id="Section_3.4.5.9.1.1"></a>
###### 3.4.5.9.1.1 Request Body

None.

<a id="Section_3.4.5.9.1.2"></a>
###### 3.4.5.9.1.2 Response Body

The response body is encoded in either XML or JSON format. The format is controlled by the Accept header defined in section [2.2.4.13](#Section_2.2.4.13).

<xs:element name="ArrayOfMSODomain" nillable="true" xmlns:q5="http://schemas.datacontract.org/2004/07/Microsoft.WindowsServerSolutions.AzureADObjectModel" type="q5:ArrayOfMSODomain"/>

<a id="Section_3.4.5.9.1.3"></a>
###### 3.4.5.9.1.3 Processing Details

This call returns the information of the accepted online domains. See section [2.2.4.13](#Section_2.2.4.13).

The server MUST construct a response in either XML or JSON format based on the value of the Accept header (section [2.2.2.6](#Section_2.2.2.6)), or in XML format if the Accept header is not present.

<a id="Section_3.4.5.10"></a>
#### 3.4.5.10 msosubscriptioninfo

This API retrieves the online subscription information.

| HTTP method | Description |
| --- | --- |
| GET | This API retrieves the online subscription information. |

<a id="Section_3.4.5.10.1"></a>
##### 3.4.5.10.1 GET

This API retrieves the online subscription information.

This operation is transported by an HTTP **GET**.

The operation can be invoked through the following URI:

https://<serverName>/services/builtin/AzureADManagement.svc/msosubscriptioninfo

The request message for this operation contains the following HTTP headers.

| Request header | Usage | Value |
| --- | --- | --- |
| Canary | Optional | The value returned in the logon Response Canary header. Client MUST either pass this header to the server or pass all of the following headers to the server. For more details, refer to section [2.2.2.5](#Section_2.2.2.5). |
| Authorization | Optional | The caller's credential is encoded text that is based on user name and password. For more details, refer to section [2.2.2.4](#Section_2.2.2.4). |
| AppName | Optional | Application name. For more details, refer to section [2.2.2.1](#Section_2.2.2.1). |
| AppVersion | Optional | Application version. For more details, refer to section [2.2.2.3](#Section_2.2.2.3). |
| AppPublisherName | Optional | Application publisher name. For more details, refer to section [2.2.2.2](#Section_2.2.2.2). |

The response message for this operation can result in the following status codes.

| Status code | Description |
| --- | --- |
| 200 | Operation successfully completed. |
| 400 | Invalid parameter. |
| 401 | The user is not authorized for web access. |
| 500 | Internal server error. |

<a id="Section_3.4.5.10.1.1"></a>
###### 3.4.5.10.1.1 Request Body

None.

<a id="Section_3.4.5.10.1.2"></a>
###### 3.4.5.10.1.2 Response Body

The response body is encoded in either XML or JSON format. The format is controlled by the Accept header defined in section [2.2.4.52](#Section_2.2.4.52).

<xs:element name="MSOTenantInformation" nillable="true" xmlns:q6="http://schemas.datacontract.org/2004/07/Microsoft.WindowsServerSolutions.AzureADObjectModel" type="q6:MSOTenantInformation"/>

<a id="Section_3.4.5.10.1.3"></a>
###### 3.4.5.10.1.3 Processing Details

This call returns the information of the online subscription. See section [2.2.4.52](#Section_2.2.4.52).

The server MUST construct a response in either XML or JSON format based on the value of the Accept header (section [2.2.2.6](#Section_2.2.2.6)), or in XML format if the Accept header is not present.

<a id="Section_3.4.5.11"></a>
#### 3.4.5.11 msolicense/set?localusername={localusername}

This API sets the license to the online user, which is mapped to the local user.

**localusername:** Local user name.

| HTTP method | Description |
| --- | --- |
| POST | This API sets the license to the online user, which is mapped to the local user. |

<a id="Section_3.4.5.11.1"></a>
##### 3.4.5.11.1 POST

This API sets the license to the online user, which is mapped to the local user.

This operation is transported by an HTTP **POST**.

The operation can be invoked through the following URI:

https://<serverName>/services/builtin/AzureADManagement.svc/msolicense/set?localusername={localusername}

The request message for this operation contains the following HTTP headers.

| Request header | Usage | Value |
| --- | --- | --- |
| Canary | Optional | The value returned in the logon Response Canary header. Client MUST either pass this header to the server or pass all of the following headers to the server. For more details, refer to section [2.2.2.5](#Section_2.2.2.5). |
| Authorization | Optional | The caller's credential is encoded text that is based on user name and password. For more details, refer to section [2.2.2.4](#Section_2.2.2.4). |
| AppName | Optional | Application name. For more details, refer to section [2.2.2.1](#Section_2.2.2.1). |
| AppVersion | Optional | Application version. For more details, refer to section [2.2.2.3](#Section_2.2.2.3). |
| AppPublisherName | Optional | Application publisher name. For more details, refer to section [2.2.2.2](#Section_2.2.2.2). |

The response message for this operation can result in the following status codes.

| Status code | Description |
| --- | --- |
| 200 | Operation successfully completed. |
| 400 | Invalid parameter. |
| 401 | The user is not authorized for web access. |
| 404 | Cannot find the local user or online user. |
| 500 | Internal server error. |

<a id="Section_3.4.5.11.1.1"></a>
###### 3.4.5.11.1.1 Request Body

The request body is encoded in XML format.

<xs:element name="ArrayOfMSOLicense" nillable="true" type="tns6:ArrayOfMSOLicense"/>

<a id="Section_3.4.5.11.1.2"></a>
###### 3.4.5.11.1.2 Response Body

None.

<a id="Section_3.4.5.11.1.3"></a>
###### 3.4.5.11.1.3 Processing Details

This API sets the license to the online user, which is mapped to the local user.

<a id="Section_3.4.6"></a>
### 3.4.6 Timer Events

None.

<a id="Section_3.4.7"></a>
### 3.4.7 Other Local Events

None.

<a id="Section_3.5"></a>
## 3.5 IMailboxManagement Server Details

<a id="Section_3.5.1"></a>
### 3.5.1 Abstract Data Model

This section describes a conceptual service contract that an implementation maintains to participate in this protocol. The described operations of the service contract are provided to facilitate the explanation of how the protocol behaves. This document does not mandate that implementations adhere to this service contract as long as their external behavior is consistent with how it is described in this document.

<a id="Section_3.5.1.1"></a>
#### 3.5.1.1 Mailbox

The data model uses full complex types defined in section [2.2.4.36](#Section_2.2.4.36).

<a id="Section_3.5.1.2"></a>
#### 3.5.1.2 ArrayOfMailbox

The data model uses full complex types defined in section [2.2.4.10](#Section_2.2.4.10).

<a id="Section_3.5.2"></a>
### 3.5.2 Timers

None.

<a id="Section_3.5.3"></a>
### 3.5.3 Initialization

None.

<a id="Section_3.5.4"></a>
### 3.5.4 Higher-Layer Triggered Events

None.

<a id="Section_3.5.5"></a>
### 3.5.5 Message Processing Events and Sequencing Rules

| Resource | Description |
| --- | --- |
| mailbox?username={username} | Retrieve the user's mailbox information. |
| mailbox/create?username={username}&email={email} | Create a mailbox for a user by using the default profile. |
| mailbox/set?username={username}&email={email} | Assign an existing mailbox to a user. |
| mailbox/unset?username={username} | Detach the mailbox from the user. |
| mailbox/disable?username={username} | Disable the mailbox. |
| mailbox/delete?username={username} | Delete the mailbox. |
| mailbox/enable?username={username} | Enable the mailbox. |
| mailboxes | Get all mailboxes. |
| domains | Get all accepted domains. |
| mailbox/getemailaddresses?username={username} | Get all email addresses. |
| mailbox/setemailaddresses?username={username}&emails={emails} | Set all email addresses. |

The responses to all the operations can result in the following status codes.

| Status code | Reason phrase | Description |
| --- | --- | --- |
| 200 | OK | The operation successfully completed. |
| 400 | Bad request | Invalid parameter. |
| 401 | Unauthorized | The user is not authorized for web access. |
| 404 | Not Found | Cannot find the local user or online user. |
| 500 | Internal Server Error | An internal server error occurred. |
| 409 | Conflict | The operation failed because of the status conflict. |
| 501 | Not Implemented | The operation is not supported. |
| 403 | Forbidden | The operation is forbidden. |
| 402 | Payment Required | No available licenses. |

<a id="Section_3.5.5.1"></a>
#### 3.5.5.1 mailbox?username={username}

Retrieves the mailbox assigned to the local user.

**username:** Local user name.

| HTTP method | Description |
| --- | --- |
| GET | Retrieves the mailbox assigned to the local user. |

<a id="Section_3.5.5.1.1"></a>
##### 3.5.5.1.1 GET

Retrieves the mailbox assigned to the local user.

This operation is transported by an HTTP **GET**.

The operation can be invoked through the following URI:

https://<serverName>/services/builtin/MailboxManagement.svc/mailbox?username={username}

The request message for this operation contains the following HTTP headers.

| Request header | Usage | Value |
| --- | --- | --- |
| Canary | Optional | The user token. Client MUST either pass this header to the server or pass all of the following headers to the server. For more details, refer to section [2.2.2.5](#Section_2.2.2.5). |
| Authorization | Optional | The caller's credential is encoded text that is based on user name and password. For more details, refer to section [2.2.2.4](#Section_2.2.2.4). |
| AppName | Optional | The client application name. For more details, refer to section [2.2.2.1](#Section_2.2.2.1). |
| AppVersion | Optional | The client application version. For more details, refer to section [2.2.2.3](#Section_2.2.2.3). |
| AppPublisherName | Optional | The client application publisher name. For more details, refer to section [2.2.2.2](#Section_2.2.2.2). |

The response message for this operation can result in the following status codes.

| Status code | Description |
| --- | --- |
| 200 | Operation successfully completed. |
| 400 | Invalid parameter. |
| 401 | The user is not authorized for web access. |
| 404 | Cannot find the local user or online user. |
| 500 | Internal server error. |

<a id="Section_3.5.5.1.1.1"></a>
###### 3.5.5.1.1.1 Request Body

None.

<a id="Section_3.5.5.1.1.2"></a>
###### 3.5.5.1.1.2 Response Body

The response body is encoded in either XML or JSON format. The format is controlled by the Accept header defined in section [2.2.4.36](#Section_2.2.4.36).

<xs:element name="Mailbox" nillable="true" type="tns1:Mailbox"/>

<a id="Section_3.5.5.1.1.3"></a>
###### 3.5.5.1.1.3 Processing Details

This call returns the information of the mailbox. See section [2.2.4.36](#Section_2.2.4.36).

The server MUST construct a response in either XML or JSON format based on the value of the Accept header (section [2.2.2.6](#Section_2.2.2.6)), or in XML format if the Accept header is not present.

<a id="Section_3.5.5.2"></a>
#### 3.5.5.2 mailbox/create?username={username}&email={email}

Create a mailbox and assign to the local user.

**username:** Local user name.

**email:** Email address to create.

| HTTP method | Description |
| --- | --- |
| POST | Create a mailbox and assign to the local user. |

<a id="Section_3.5.5.2.1"></a>
##### 3.5.5.2.1 POST

This operation is transported by an HTTP **POST.**

The operation can be invoked through the following URI:

https://<serverName>/services/builtin/MailboxManagement.svc/mailbox/create?username={username}&email={email}

The request message for this operation contains the following HTTP headers.

| Request header | Usage | Value |
| --- | --- | --- |
| Canary | Optional | The user token. Client MUST either pass this header to the server or pass all of the following headers to the server. For more details, refer to section [2.2.2.5](#Section_2.2.2.5). |
| Authorization | Optional | The caller's credential is encoded text that is based on user name and password. For more details, refer to section [2.2.2.4](#Section_2.2.2.4). |
| AppName | Optional | The client application name. For more details, refer to section [2.2.2.1](#Section_2.2.2.1). |
| AppVersion | Optional | The client application version. For more details, refer to section [2.2.2.3](#Section_2.2.2.3). |
| AppPublisherName | Optional | The client application publisher name. For more details, refer to section [2.2.2.2](#Section_2.2.2.2). |

The response message for this operation can result in the following status codes.

| Status code | Description |
| --- | --- |
| 200 | Operation successfully completed. |
| 400 | Invalid parameter. |
| 401 | The user is not authorized for web access. |
| 404 | Cannot find the local user or online user. |
| 409 | Operation failed because of the status conflict. |
| 500 | Internal server error. |

<a id="Section_3.5.5.2.1.1"></a>
###### 3.5.5.2.1.1 Request Body

The request body is encoded in XML format or JSON format based on the value of the Accept header (section [2.2.2.6](#Section_2.2.2.6)), or in XML format if the Accept header is not present.

<a id="Section_3.5.5.2.1.2"></a>
###### 3.5.5.2.1.2 Response Body

The response body is encoded in either XML or JSON format. The format is controlled by the Accept header defined in section [2.2.4.36](#Section_2.2.4.36).

<a id="Section_3.5.5.2.1.3"></a>
###### 3.5.5.2.1.3 Processing Details

This API creates a mailbox and assigns it to the local user.

<a id="Section_3.5.5.3"></a>
#### 3.5.5.3 mailbox/set?username={username}&email={email}

Assign the mailbox to the local user.

**username:** Local user name.

**email:** Email address to assign to the local user.

| HTTP method | Description |
| --- | --- |
| POST | Assign the mailbox to the local user. |

<a id="Section_3.5.5.3.1"></a>
##### 3.5.5.3.1 POST

This operation is transported by an HTTP **POST**.

The operation can be invoked through the following URI:

https://<serverName>/services/builtin/MailboxManagement.svc/mailbox/set?username={username}&email={email}

The request message for this operation contains the following HTTP headers.

| Request header | Usage | Value |
| --- | --- | --- |
| Canary | Optional | The user token. Client MUST either pass this header to the server or pass all of the following headers to the server. For more details, refer to section [2.2.2.5](#Section_2.2.2.5). |
| Authorization | Optional | The caller's credential is encoded text that is based on user name and password. For more details, refer to section [2.2.2.4](#Section_2.2.2.4). |
| AppName | Optional | The client application name. For more details, refer to section [2.2.2.1](#Section_2.2.2.1). |
| AppVersion | Optional | The client application version. For more details, refer to section [2.2.2.3](#Section_2.2.2.3). |
| AppPublisherName | Optional | The client application publisher name. For more details, refer to section [2.2.2.2](#Section_2.2.2.2). |

The response message for this operation can result in the following status codes.

| Status code | Description |
| --- | --- |
| 200 | Operation successfully completed. |
| 400 | Invalid parameter. |
| 401 | The user is not authorized for web access. |
| 404 | Cannot find the local user or online user. |
| 409 | Operation failed because of the status conflict. |
| 500 | Internal server error. |
| 501 | Operation is not supported. |

<a id="Section_3.5.5.3.1.1"></a>
###### 3.5.5.3.1.1 Request Body

None.

<a id="Section_3.5.5.3.1.2"></a>
###### 3.5.5.3.1.2 Response Body

None.

<a id="Section_3.5.5.3.1.3"></a>
###### 3.5.5.3.1.3 Processing Details

This API assigns the mailbox to the local user.

<a id="Section_3.5.5.4"></a>
#### 3.5.5.4 mailbox/unset?username={username}

Detach the mailbox from the local user.

**username:** Local user name.

| HTTP method | Description |
| --- | --- |
| POST | Detach the mailbox from the local user. |

<a id="Section_3.5.5.4.1"></a>
##### 3.5.5.4.1 POST

This operation is transported by an HTTP **POST**.

The operation can be invoked through the following URI:

https://<serverName>/services/builtin/MailboxManagement.svc/mailbox/unset?username={username}

The request message for this operation contains the following HTTP headers.

| Request header | Usage | Value |
| --- | --- | --- |
| Canary | Optional | The user token. Client MUST either pass this header to the server or pass all of the following headers to the server. For more details, refer to section [2.2.2.5](#Section_2.2.2.5). |
| Authorization | Optional | The caller's credential is encoded text that is based on user name and password. For more details, refer to section [2.2.2.4](#Section_2.2.2.4). |
| AppName | Optional | The client application name. For more details, refer to section [2.2.2.1](#Section_2.2.2.1). |
| AppVersion | Optional | The client application version. For more details, refer to section [2.2.2.3](#Section_2.2.2.3). |
| AppPublisherName | Optional | The client application publisher name. For more details, refer to section [2.2.2.2](#Section_2.2.2.2). |

The response message for this operation can result in the following status codes.

| Status code | Description |
| --- | --- |
| 200 | Operation successfully completed. |
| 400 | Invalid parameter. |
| 401 | The user is not authorized for web access. |
| 404 | Cannot find the local user or online user. |
| 409 | Operation failed because of the status conflict. |
| 500 | Internal server error. |
| 501 | Operation is not supported. |

<a id="Section_3.5.5.4.1.1"></a>
###### 3.5.5.4.1.1 Request Body

None.

<a id="Section_3.5.5.4.1.2"></a>
###### 3.5.5.4.1.2 Response Body

None.

<a id="Section_3.5.5.4.1.3"></a>
###### 3.5.5.4.1.3 Processing Details

This API detaches the mailbox from the local user.

<a id="Section_3.5.5.5"></a>
#### 3.5.5.5 mailbox/disable?username={username}

Disables the mailbox that is assigned to the local user.

**username:** Local user name.

| HTTP method | Description |
| --- | --- |
| POST | Disable the mailbox that is assigned to the local user. |

<a id="Section_3.5.5.5.1"></a>
##### 3.5.5.5.1 POST

This operation is transported by an HTTP **POST**.

The operation can be invoked through the following URI:

https://<serverName>/services/builtin/MailboxManagement.svc/mailbox/disable?username={username}

The request message for this operation contains the following HTTP headers.

| Request header | Usage | Value |
| --- | --- | --- |
| Canary | Optional | The user token. Client MUST either pass this header to the server or pass all of the following headers to the server. For more details, refer to section [2.2.2.5](#Section_2.2.2.5). |
| Authorization | Optional | The caller's credential is encoded text that is based on user name and password. For more details, refer to section [2.2.2.4](#Section_2.2.2.4). |
| AppName | Optional | The client application name. For more details, refer to section [2.2.2.1](#Section_2.2.2.1). |
| AppVersion | Optional | The client application version. For more details, refer to section [2.2.2.3](#Section_2.2.2.3). |
| AppPublisherName | Optional | The client application publisher name. For more details, refer to section [2.2.2.2](#Section_2.2.2.2). |

The response message for this operation can result in the following status codes.

| Status code | Description |
| --- | --- |
| 200 | Operation successfully completed. |
| 400 | Invalid parameter. |
| 401 | The user is not authorized for web access. |
| 403 | Operation is forbidden. |
| 404 | Cannot find the local user or online user. |
| 500 | Internal server error. |
| 501 | Operation is not supported. |

<a id="Section_3.5.5.5.1.1"></a>
###### 3.5.5.5.1.1 Request Body

None.

<a id="Section_3.5.5.5.1.2"></a>
###### 3.5.5.5.1.2 Response Body

None.

<a id="Section_3.5.5.5.1.3"></a>
###### 3.5.5.5.1.3 Processing Details

This API disables the mailbox that is assigned to the local user.

<a id="Section_3.5.5.6"></a>
#### 3.5.5.6 mailbox/delete?username={username}

Delete the mailbox that is assigned to the local user.

**username:** Local user name.

| HTTP method | Description |
| --- | --- |
| POST | Delete the mailbox that is assigned to the local user. |

<a id="Section_3.5.5.6.1"></a>
##### 3.5.5.6.1 POST

This operation is transported by an HTTP **POST**.

The operation can be invoked through the following URI:

https://<serverName>/services/builtin/MailboxManagement.svc/mailbox/delete?username={username}

The request message for this operation contains the following HTTP headers.

| Request header | Usage | Value |
| --- | --- | --- |
| Canary | Optional | The user token. Client MUST either pass this header to the server or pass all of the following headers to the server. For more details, refer to section [2.2.2.5](#Section_2.2.2.5). |
| Authorization | Optional | The caller's credential is encoded text that is based on user name and password. For more details, refer to section [2.2.2.4](#Section_2.2.2.4). |
| AppName | Optional | The client application name. For more details, refer to section [2.2.2.1](#Section_2.2.2.1). |
| AppVersion | Optional | The client application version. For more details, refer to section [2.2.2.3](#Section_2.2.2.3). |
| AppPublisherName | Optional | The client application publisher name. For more details, refer to section [2.2.2.2](#Section_2.2.2.2). |

The response message for this operation can result in the following status codes.

| Status code | Description |
| --- | --- |
| 200 | Operation successfully completed. |
| 400 | Invalid parameter. |
| 401 | The user is not authorized for web access. |
| 403 | Operation is forbidden. |
| 404 | Cannot find the local user or online user. |
| 500 | Internal server error. |

<a id="Section_3.5.5.6.1.1"></a>
###### 3.5.5.6.1.1 Request Body

The request body is encoded in XML format.

<a id="Section_3.5.5.6.1.2"></a>
###### 3.5.5.6.1.2 Response Body

None.

<a id="Section_3.5.5.6.1.3"></a>
###### 3.5.5.6.1.3 Processing Details

None.

<a id="Section_3.5.5.7"></a>
#### 3.5.5.7 mailbox/enable?username={username}

Enable the mailbox that is assigned to the local user.

**username:** Local user name.

| HTTP method | Description |
| --- | --- |
| POST | Enable the mailbox that is assigned to the local user. |

<a id="Section_3.5.5.7.1"></a>
##### 3.5.5.7.1 POST

This operation is transported by an HTTP **POST**.

The operation can be invoked through the following URI:

https://<serverName>/services/builtin/MailboxManagement.svc/mailbox/enable?username={username}

The request message for this operation contains the following HTTP headers.

| Request header | Usage | Value |
| --- | --- | --- |
| Canary | Optional | The user token. Client MUST either pass this header to the server or pass all of the following headers to the server. For more details, refer to section [2.2.2.5](#Section_2.2.2.5). |
| Authorization | Optional | The caller's credential is encoded text that is based on user name and password. For more details, refer to section [2.2.2.4](#Section_2.2.2.4). |
| AppName | Optional | The client application name. For more details, refer to section [2.2.2.1](#Section_2.2.2.1). |
| AppVersion | Optional | The client application version. For more details, refer to section [2.2.2.3](#Section_2.2.2.3). |
| AppPublisherName | Optional | The client application publisher name. For more details, refer to section [2.2.2.2](#Section_2.2.2.2). |

The response message for this operation can result in the following status codes.

| Status code | Description |
| --- | --- |
| 200 | Operation successfully completed. |
| 400 | Invalid parameter. |
| 401 | The user is not authorized for web access. |
| 404 | Cannot find the local user or online user. |
| 500 | Internal server error. |
| 501 | Operation is not supported. |

<a id="Section_3.5.5.7.1.1"></a>
###### 3.5.5.7.1.1 Request Body

None.

<a id="Section_3.5.5.7.1.2"></a>
###### 3.5.5.7.1.2 Response Body

None.

<a id="Section_3.5.5.7.1.3"></a>
###### 3.5.5.7.1.3 Processing Details

This API enables the mailbox that is assigned to the local user.

<a id="Section_3.5.5.8"></a>
#### 3.5.5.8 mailboxes

Retrieve all the mailboxes.

| HTTP method | Description |
| --- | --- |
| GET | Retrieve all the mailboxes |

<a id="Section_3.5.5.8.1"></a>
##### 3.5.5.8.1 GET

This operation is transported by an HTTP **GET**.

The operation can be invoked through the following URI:

https://<serverName>/services/builtin/MailboxManagement.svc/mailboxes

The request message for this operation contains the following HTTP headers.

| Request header | Usage | Value |
| --- | --- | --- |
| Canary | Optional | The user token. Client MUST either pass this header to the server or pass all of the following headers to the server. For more details, refer to section [2.2.2.5](#Section_2.2.2.5). |
| Authorization | Optional | The caller's credential is encoded text that is based on user name and password. For more details, refer to section [2.2.2.4](#Section_2.2.2.4). |
| AppName | Optional | The client application name. For more details, refer to section [2.2.2.1](#Section_2.2.2.1). |
| AppVersion | Optional | The client application version. For more details, refer to section [2.2.2.3](#Section_2.2.2.3). |
| AppPublisherName | Optional | The client application publisher name. For more details, refer to section [2.2.2.2](#Section_2.2.2.2). |

The response message for this operation can result in the following status codes.

| Status code | Description |
| --- | --- |
| 200 | Operation successfully completed. |
| 400 | Invalid parameter. |
| 401 | The user is not authorized for web access. |
| 500 | Internal server error. |

<a id="Section_3.5.5.8.1.1"></a>
###### 3.5.5.8.1.1 Request Body

None.

<a id="Section_3.5.5.8.1.2"></a>
###### 3.5.5.8.1.2 Response Body

The response body is encoded in either XML or JSON format. The format is controlled by the Accept header defined in section [2.2.4.10](#Section_2.2.4.10).

<xs:element name="ArrayOfMailbox" nillable="true" type="tns1:ArrayOfMailbox"/>

<a id="Section_3.5.5.8.1.3"></a>
###### 3.5.5.8.1.3 Processing Details

This call returns the information of all the mailboxes. See section [2.2.4.10](#Section_2.2.4.10).

The server MUST construct a response in either XML or JSON format based on the value of the Accept header (section [2.2.2.6](#Section_2.2.2.6)), or in XML format if the Accept header is not present.

<a id="Section_3.5.5.9"></a>
#### 3.5.5.9 domains

Retrieve all the accepted domains.

| HTTP method | Description |
| --- | --- |
| GET | Retrieve all the accepted domains. |

<a id="Section_3.5.5.9.1"></a>
##### 3.5.5.9.1 GET

This operation is transported by an HTTP **GET**.

The operation can be invoked through the following URI:

https://<serverName>/services/builtin/MailboxManagement.svc/domains

The request message for this operation contains the following HTTP headers.

| Request header | Usage | Value |
| --- | --- | --- |
| Canary | Optional | The user token. Client MUST either pass this header to the server or pass all of the following headers to the server. For more details, refer to section [2.2.2.5](#Section_2.2.2.5). |
| Authorization | Optional | The caller's credential is encoded text that is based on user name and password. For more details, refer to section [2.2.2.4](#Section_2.2.2.4). |
| AppName | Optional | The client application name. For more details, refer to section [2.2.2.1](#Section_2.2.2.1). |
| AppVersion | Optional | The client application version. For more details, refer to section [2.2.2.3](#Section_2.2.2.3). |
| AppPublisherName | Optional | The client application publisher name. For more details, refer to section [2.2.2.2](#Section_2.2.2.2). |

The response message for this operation can result in the following status codes.

| Status code | Description |
| --- | --- |
| 200 | Operation successfully completed. |
| 400 | Invalid parameter. |
| 401 | The user is not authorized for web access. |
| 500 | Internal server error. |

<a id="Section_3.5.5.9.1.1"></a>
###### 3.5.5.9.1.1 Request Body

None.

<a id="Section_3.5.5.9.1.2"></a>
###### 3.5.5.9.1.2 Response Body

The response body is encoded in either XML or JSON format. The format is controlled by the Accept header defined in section [2.2.4.21](#Section_2.2.4.21).

<xs:element name="ArrayOfstring" nillable="true" type="tns4:ArrayOfstring"/>

<a id="Section_3.5.5.9.1.3"></a>
###### 3.5.5.9.1.3 Processing Details

This call returns the information of the SharePoint site. See section [2.2.4.21](#Section_2.2.4.21).

The server MUST construct a response in either XML or JSON format based on the value of the Accept header (section [2.2.2.6](#Section_2.2.2.6)), or in XML format if the Accept header is not present.

<a id="Section_3.5.5.10"></a>
#### 3.5.5.10 mailbox/getemailaddresses?username={username}

Retrieve all the email addresses that are assigned to the user.

**username**:

| HTTP method | Description |
| --- | --- |
| GET | Retrieve all the email addresses that are assigned to the user. |

<a id="Section_3.5.5.10.1"></a>
##### 3.5.5.10.1 GET

This operation is transported by an HTTP **GET**.

The operation can be invoked through the following URI:

https://<serverName>/services/builtin/MailboxManagement.svc/mailbox/getemailaddresses?username={username}

The request message for this operation contains the following HTTP headers.

| Request header | Usage | Value |
| --- | --- | --- |
| Canary | Optional | The user token. Client MUST either pass this header to the server or pass all of the following headers to the server. For more details, refer to section [2.2.2.5](#Section_2.2.2.5). |
| Authorization | Optional | The caller's credential is encoded text that is based on user name and password. For more details, refer to section [2.2.2.4](#Section_2.2.2.4). |
| AppName | Optional | The client application name. For more details, refer to section [2.2.2.1](#Section_2.2.2.1). |
| AppVersion | Optional | The client application version. For more details, refer to section [2.2.2.3](#Section_2.2.2.3). |
| AppPublisherName | Optional | The client application publisher name. For more details, refer to section [2.2.2.2](#Section_2.2.2.2). |

The response message for this operation can result in the following status codes.

| Status code | Description |
| --- | --- |
| 200 | Operation successfully completed. |
| 400 | Invalid parameter. |
| 401 | The user is not authorized for web access. |
| 404 | Cannot find the local user or online user. |
| 500 | Internal server error. |
| 501 | Operation is not supported. |

<a id="Section_3.5.5.10.1.1"></a>
###### 3.5.5.10.1.1 Request Body

None.

<a id="Section_3.5.5.10.1.2"></a>
###### 3.5.5.10.1.2 Response Body

The response body is encoded in either XML or JSON format. The format is controlled by the Accept header defined in section [2.2.4.21](#Section_2.2.4.21).

<a id="Section_3.5.5.10.1.3"></a>
###### 3.5.5.10.1.3 Processing Details

This call returns the information of the email addresses. See section [2.2.4.21](#Section_2.2.4.21).

The server MUST construct a response in either XML or JSON format based on the value of the Accept header (section [2.2.2.6](#Section_2.2.2.6)), or in XML format if the Accept header is not present.

<a id="Section_3.5.5.11"></a>
#### 3.5.5.11 mailbox/setemailaddresses?username={username}&emails={emails}

Set the email addresses for the user.

**username:** Local user name.

**emails:** Email addresses.

| HTTP method | Description |
| --- | --- |
| POST | Set the email addresses for the user. |

<a id="Section_3.5.5.11.1"></a>
##### 3.5.5.11.1 POST

This operation is transported by an HTTP **POST**.

The operation can be invoked through the following URI:

https://<serverName>/services/builtin/MailboxManagement.svc/mailbox/setemailaddresses?username={username}&emails={emails}

The request message for this operation contains the following HTTP headers.

| Request header | Usage | Value |
| --- | --- | --- |
| Canary | Optional | The user token. Client MUST either pass this header to the server or pass all of the following headers to the server. For more details, refer to section [2.2.2.5](#Section_2.2.2.5). |
| Authorization | Optional | The caller's credential is encoded text that is based on user name and password. For more details, refer to section [2.2.2.4](#Section_2.2.2.4). |
| AppName | Optional | The client application name. For more details, refer to section [2.2.2.1](#Section_2.2.2.1). |
| AppVersion | Optional | The client application version. For more details, refer to section [2.2.2.3](#Section_2.2.2.3). |
| AppPublisherName | Optional | The client application publisher name. For more details, refer to section [2.2.2.2](#Section_2.2.2.2). |

The response message for this operation can result in the following status codes.

| Status code | Description |
| --- | --- |
| 200 | Operation successfully completed. |
| 400 | Invalid parameter. |
| 401 | The user is not authorized for web access. |
| 402 | No available licenses. |
| 404 | Cannot find the local user or online user. |
| 500 | Internal server error. |
| 501 | Operation is not supported. |

<a id="Section_3.5.5.11.1.1"></a>
###### 3.5.5.11.1.1 Request Body

None.

<a id="Section_3.5.5.11.1.2"></a>
###### 3.5.5.11.1.2 Response Body

None.

<a id="Section_3.5.5.11.1.3"></a>
###### 3.5.5.11.1.3 Processing Details

This API sets the email addresses for the user.

<a id="Section_3.5.6"></a>
### 3.5.6 Timer Events

None.

<a id="Section_3.5.7"></a>
### 3.5.7 Other Local Events

None.

<a id="Section_3.6"></a>
## 3.6 IAlertManagement Server Details

<a id="Section_3.6.1"></a>
### 3.6.1 Abstract Data Model

This section describes a conceptual service contract that an implementation maintains to participate in this protocol. The described operations of the service contract are provided to facilitate the explanation of how the protocol behaves. This document does not mandate that implementations adhere to this service contract as long as their external behavior is consistent with how it is described in this document.

<a id="Section_3.6.1.1"></a>
#### 3.6.1.1 AlertInfo

The AlertInfo data model has a full complex type defined in section [2.2.4.1](#Section_2.2.4.1).

Severity: The health status:

**OK**: There is no existing alert.

**Information**: Informational alert.

**Warning**: Warning alert.

**Critical**: Critical alert.

**Report**: An alert that collects information from the client.

<a id="Section_3.6.2"></a>
### 3.6.2 Timers

None.

<a id="Section_3.6.3"></a>
### 3.6.3 Initialization

None.

<a id="Section_3.6.4"></a>
### 3.6.4 Higher-Layer Triggered Events

None.

<a id="Section_3.6.5"></a>
### 3.6.5 Message Processing Events and Sequencing Rules

| Resource | Description |
| --- | --- |
| alerts/index/{startingindex}/count/{amount} | Retrieves all health alerts in the network. |
| alert/enable?alertkey={alertkey} | Enables an ignored alert. |
| alert/disable?alertkey={alertkey} | Disables an alert. |
| alert/clear?alertkey={alertkey} | Clears an alert. |
| alert/repair?alertkey={alertkey} | Attempts to repair an alert. |

The responses to all the operations can result in the following status codes.

| Status code | Reason phrase | Description |
| --- | --- | --- |
| 200 | OK | Operation successfully completed. |
| 400 | Bad Request | One or more parameters are not valid. |
| 401 | Unauthorized | Access to the requested resource is denied. |
| 404 | Not Found | The specific resource does not exist. |

<a id="Section_3.6.5.1"></a>
#### 3.6.5.1 alerts/index/{startingindex}/count/{amount}

Retrieves all health alerts in the network.

**startingindex:** The numerical position of the first item to be retrieved. See section [2.2.3.45](#Section_2.2.3.45).

**amount:** The number of items to be retrieved. See section [2.2.3.2](#Section_2.2.3.2).

| HTTP method | Description |
| --- | --- |
| GET | Retrieves all health alerts in the network. |

<a id="Section_3.6.5.1.1"></a>
##### 3.6.5.1.1 GET

Retrieves all health alerts in the network.

This operation is transported by an HTTP **GET**.

The operation can be invoked through the following URI:

alerts/index/{startingindex}/count/{amount}

The request message for this operation contains the following HTTP headers.

| Request header | Usage | Value |
| --- | --- | --- |
| Canary | Optional | The user token. Client MUST either pass this header to the server or pass all of the following headers to the server. For more details, refer to section [2.2.2.5](#Section_2.2.2.5). |
| Authorization | Optional | The caller's credential is encoded text that is based on user name and password. For more details, refer to section [2.2.2.4](#Section_2.2.2.4). |
| AppName | Optional | The client application name. For more details, refer to section [2.2.2.1](#Section_2.2.2.1). |
| AppVersion | Optional | The client application version. For more details, refer to section [2.2.2.3](#Section_2.2.2.3). |
| AppPublisherName | Optional | The client application publisher name. For more details, refer to section [2.2.2.2](#Section_2.2.2.2). |

The response message for this operation can result in the following status codes.

| Status code | Description |
| --- | --- |
| 200 | Operation successfully completed. |
| 400 | One or more parameters are not valid. |
| 401 | Access to the requested resource is denied. |

<a id="Section_3.6.5.1.1.1"></a>
###### 3.6.5.1.1.1 Request Body

None.

<a id="Section_3.6.5.1.1.2"></a>
###### 3.6.5.1.1.2 Response Body

The response body is encoded in either XML or JSON format. The format is controlled by the Accept header defined in section [2.2.2.6](#Section_2.2.2.6).

<xs:element name="PartialCollection_Of_AlertInfo" nillable="true" type="tns1:PartialCollection_Of_AlertInfo"/>

<a id="Section_3.6.5.1.1.3"></a>
###### 3.6.5.1.1.3 Processing Details

This call returns the PartialCollection, which contains the instances of AlertInfo specified by startingIndex and amount.

The server MUST construct a response in either XML or JSON format based on the value of the Accept header (section [2.2.2.6](#Section_2.2.2.6)), or in XML format if the Accept header is not present.

<a id="Section_3.6.5.2"></a>
#### 3.6.5.2 alert/enable?alertkey={alertkey}

This API enables an ignored alert that is identified by the alert key.

**alertkey:** The key of the alert. See section [2.2.3.1](#Section_2.2.3.1).

| HTTP method | Description |
| --- | --- |
| POST | Enables an ignored alert. |

<a id="Section_3.6.5.2.1"></a>
##### 3.6.5.2.1 POST

This API enables an ignored alert. The alert is identified by the alert key.

This operation is transported by an HTTP **POST**.

The operation can be invoked through the following URI:

https://<serverName>/services/builtin/AlertManagement.svc/alert/enable?alertkey={alertkey}

The request message for this operation contains the following HTTP headers.

| Request header | Usage | Value |
| --- | --- | --- |
| Canary | Optional | The user token. Client MUST either pass this header to the server or pass all of the following headers to the server. For more details, refer to section [2.2.2.5](#Section_2.2.2.5). |
| Authorization | Optional | The caller's credential is encoded text that is based on user name and password. For more details, refer to section [2.2.2.4](#Section_2.2.2.4). |
| AppName | Optional | The client application name. For more details, refer to section [2.2.2.1](#Section_2.2.2.1). |
| AppVersion | Optional | The client application version. For more details, refer to section [2.2.2.3](#Section_2.2.2.3). |
| AppPublisherName | Optional | The client application publisher name. For more details, refer to section [2.2.2.2](#Section_2.2.2.2). |

The response message for this operation can result in the following status codes.

| Status code | Description |
| --- | --- |
| 200 | The operation successfully completed. |
| 400 | One or more parameters are not valid. |
| 401 | Access to the requested resource is denied. |
| 404 | The alert specified by the alert key does not exist. |

<a id="Section_3.6.5.2.1.1"></a>
###### 3.6.5.2.1.1 Request Body

None.

<a id="Section_3.6.5.2.1.2"></a>
###### 3.6.5.2.1.2 Response Body

None.

<a id="Section_3.6.5.2.1.3"></a>
###### 3.6.5.2.1.3 Processing Details

This call enables a network health alert.

<a id="Section_3.6.5.3"></a>
#### 3.6.5.3 alert/disable?alertkey={alertkey}

This API is for disabling an alert.

**alertkey:** The key of the alert. See section [2.2.3.1](#Section_2.2.3.1).

| HTTP method | Description |
| --- | --- |
| POST | Disables an alert. |

<a id="Section_3.6.5.3.1"></a>
##### 3.6.5.3.1 POST

This operation disables an alert and is transported by an HTTP **POST**.

The operation can be invoked through the following URI:

https://<ServerName>/services/builtin/AlertManagement.svc/alert/alert/disable?alertkey={alertkey}

The request message for this operation contains the following HTTP headers.

| Request header | Usage | Value |
| --- | --- | --- |
| Canary | Optional | The user token. Client MUST either pass this header to the server or pass all of the following headers to the server. For more details, see section [2.2.2.5](#Section_2.2.2.5). |
| Authorization | Optional | The caller's credential is encoded text that is based on user name and password. For more details, see section [2.2.2.4](#Section_2.2.2.4). |
| AppName | Optional | The client application name. For more details, see section [2.2.2.1](#Section_2.2.2.1). |
| AppVersion | Optional | The client application version. For more details, see section [2.2.2.3](#Section_2.2.2.3). |
| AppPublisherName | Optional | The client application publisher name. For more details, see section [2.2.2.2](#Section_2.2.2.2). |

The response message for this operation can result in the following status codes.

| Status code | Description |
| --- | --- |
| 200 | Operation successfully completed. |
| 400 | One or more parameters are not valid. |
| 401 | Access to the requested resource is denied. |
| 404 | The alert specified by the alert key does not exist. |

<a id="Section_3.6.5.3.1.1"></a>
###### 3.6.5.3.1.1 Request Body

None.

<a id="Section_3.6.5.3.1.2"></a>
###### 3.6.5.3.1.2 Response Body

None.

<a id="Section_3.6.5.3.1.3"></a>
###### 3.6.5.3.1.3 Processing Details

This call disables a network health alert.

<a id="Section_3.6.5.4"></a>
#### 3.6.5.4 alert/clear?alertkey={alertkey}

This API clears an alert given the key of the alert.

**alertkey:** The key of the alert. See section [2.2.3.1](#Section_2.2.3.1).

| HTTP method | Description |
| --- | --- |
| POST | Clears an alert. |

<a id="Section_3.6.5.4.1"></a>
##### 3.6.5.4.1 POST

This operation clears an alert and is transported by an HTTP POST.

The operation can be invoked through the following URI:

https://<ServerName>/services/builtin/AlertManagement.svc/alert/clear?alertkey={alertkey}

The request message for this operation contains the following HTTP headers.

| Request header | Usage | Value |
| --- | --- | --- |
| Canary | Optional | The user token. Client MUST either pass this header to the server or pass all of the following headers to the server. For more details, refer to section [2.2.2.5](#Section_2.2.2.5). |
| Authorization | Optional | The caller's credential is encoded text that is based on user name and password. For more details, refer to section [2.2.2.4](#Section_2.2.2.4). |
| AppName | Optional | The client application name. For more details, refer to section [2.2.2.1](#Section_2.2.2.1). |
| AppVersion | Optional | The client application version. For more details, refer to section [2.2.2.3](#Section_2.2.2.3). |
| AppPublisherName | Optional | The client application publisher name. For more details, refer to section [2.2.2.2](#Section_2.2.2.2). |

The response message for this operation can result in the following status codes.

| Status code | Description |
| --- | --- |
| 200 | Operation successfully completed. |
| 400 | One or more parameters are not valid. |
| 401 | Access to the requested resource is denied. |
| 404 | The alert specified by the alert key does not exist. |

<a id="Section_3.6.5.4.1.1"></a>
###### 3.6.5.4.1.1 Request Body

None.

<a id="Section_3.6.5.4.1.2"></a>
###### 3.6.5.4.1.2 Response Body

None.

<a id="Section_3.6.5.4.1.3"></a>
###### 3.6.5.4.1.3 Processing Details

This call clears a network health alert.

<a id="Section_3.6.5.5"></a>
#### 3.6.5.5 alert/repair?alertkey={alertkey}

This API attempts to repair an alert if the alert is reparable.

**alertkey:** The key of the alert. See section [2.2.3.1](#Section_2.2.3.1).

| HTTP method | Description |
| --- | --- |
| POST | Attempts to repair an alert. |

<a id="Section_3.6.5.5.1"></a>
##### 3.6.5.5.1 POST

This operation attempts to repair an alert. It is transported by an HTTP POST.

The operation can be invoked through the following URI:

https://<ServerName>/services/builtin/AlertManagement.svc/alert/repair?alertkey={alertkey}

The request message for this operation contains the following HTTP headers.

| Request header | Usage | Value |
| --- | --- | --- |
| Canary | Optional | The user token. Client MUST either pass this header to the server or pass all of the following headers to the server. For more details, refer to section [2.2.2.5](#Section_2.2.2.5). |
| Authorization | Optional | The caller's credential is encoded text that is based on user name and password. For more details, refer to section [2.2.2.4](#Section_2.2.2.4). |
| AppName | Optional | The client application name. For more details, refer to section [2.2.2.1](#Section_2.2.2.1). |
| AppVersion | Optional | The client application version. For more details, refer to section [2.2.2.3](#Section_2.2.2.3). |
| AppPublisherName | Optional | The client application publisher name. For more details, refer to section [2.2.2.2](#Section_2.2.2.2). |

The response message for this operation can result in the following status codes.

| Status code | Description |
| --- | --- |
| 200 | Operation successfully completed. |
| 400 | One or more parameters are not valid. |
| 401 | Access to the requested resource is denied. |
| 404 | The alert specified by the alert key does not exist. |

<a id="Section_3.6.5.5.1.1"></a>
###### 3.6.5.5.1.1 Request Body

None.

<a id="Section_3.6.5.5.1.2"></a>
###### 3.6.5.5.1.2 Response Body

None.

<a id="Section_3.6.5.5.1.3"></a>
###### 3.6.5.5.1.3 Processing Details

This call attempts to repair a network health alert.

<a id="Section_3.6.6"></a>
### 3.6.6 Timer Events

None.

<a id="Section_3.6.7"></a>
### 3.6.7 Other Local Events

None.

<a id="Section_3.7"></a>
## 3.7 IDeviceManagement Server Details

<a id="Section_3.7.1"></a>
### 3.7.1 Abstract Data Model

This section describes a conceptual service contract that an implementation maintains to participate in this protocol. The described operations of the service contract are provided to facilitate the explanation of how the protocol behaves. This document does not mandate that implementations adhere to this service contract as long as their external behavior is consistent with how it is described in this document.

<a id="Section_3.7.1.1"></a>
#### 3.7.1.1 DeviceInfo

The DeviceInfo data model has a full complex type defined in section [2.2.4.28](#Section_2.2.4.28).

<a id="Section_3.7.2"></a>
### 3.7.2 Timers

None.

<a id="Section_3.7.3"></a>
### 3.7.3 Initialization

None.

<a id="Section_3.7.4"></a>
### 3.7.4 Higher-Layer Triggered Events

None.

<a id="Section_3.7.5"></a>
### 3.7.5 Message Processing Events and Sequencing Rules

| Resource | Description |
| --- | --- |
| devices/index/{startingindex}/count/{amount} | Retrieves a list of devices that are managed by the server. |
| device/{deviceid}/startbackup | Starts to back up a device that is managed by the server. |
| device/{deviceid}/stopbackup | Stops the backup of a device that is managed by the server. |

The responses to all the operations can result in the following status codes.

| Status code | Reason phrase | Description |
| --- | --- | --- |
| 200 | OK | The operation successfully completed. |
| 400 | Bad Request | One or more parameters are not valid. |
| 401 | Unauthorized | Access to the requested resource is denied. |
| 404 | Not Found | Resource not found. |
| 403 | Forbidden | The operation is forbidden. |

<a id="Section_3.7.5.1"></a>
#### 3.7.5.1 devices/index/{startingindex}/count/{amount}

Retrieves a list of devices that are managed by the server.

**startingindex:** The numerical position of the first item to be retrieved. It SHOULD be a string that can be converted to a positive integer. See section [2.2.3.45](#Section_2.2.3.45).

**amount:** The number of items to be retrieved. It SHOULD be a string that can be converted to a positive integer. See section [2.2.3.2](#Section_2.2.3.2).

| HTTP method | Description |
| --- | --- |
| GET | Retrieves a list of devices that are managed by the server, or the devices that the current standard user has remote access permission to. |

<a id="Section_3.7.5.1.1"></a>
##### 3.7.5.1.1 GET

Retrieves a list of devices that are managed by the server.<11>

This operation is transported by an HTTP **GET**.

The operation can be invoked through the following URI:

https://<ServerName>/services/builtin/DeviceManagement.svc/devices/index/{startingindex}/count/{amount}

The request message for this operation contains the following HTTP headers.

| Request header | Usage | Value |
| --- | --- | --- |
| Canary | Optional | The user token. Client MUST either pass this header to the server or pass all of the following headers to the server. For more details, refer to section [2.2.2.5](#Section_2.2.2.5). |
| Authorization | Optional | The caller's credential is encoded text that is based on user name and password. For more details, refer to section [2.2.2.4](#Section_2.2.2.4). |
| AppName | Optional | The client application name. For more details, refer to section [2.2.2.1](#Section_2.2.2.1). |
| AppVersion | Optional | The client application version. For more details, refer to section [2.2.2.3](#Section_2.2.2.3). |
| AppPublisherName | Optional | The client application publisher name. For more details, refer to section [2.2.2.2](#Section_2.2.2.2). |

The response message for this operation can result in the following status codes.

| Status code | Description |
| --- | --- |
| 200 | Operation successfully completed. |
| 400 | One or more parameters are not valid. |
| 401 | Access to the requested resource is denied. |
| 404 | The requested resource does not exist. |

<a id="Section_3.7.5.1.1.1"></a>
###### 3.7.5.1.1.1 Request Body

None.

<a id="Section_3.7.5.1.1.2"></a>
###### 3.7.5.1.1.2 Response Body

The response body is encoded in either XML or JSON format. The format is controlled by the Accept header defined in section [2.2.2.6](#Section_2.2.2.6).

<xs:element name="PartialCollection_Of_DeviceInfo" nillable="true" type="tns1:PartialCollection_Of_DeviceInfo"/>

<a id="Section_3.7.5.1.1.3"></a>
###### 3.7.5.1.1.3 Processing Details

This call returns the PartialCollection, which contains the instances of DeviceInfo specified by startingIndex and amount.

The server MUST construct a response in either XML or JSON format based on the value of the Accept header (section [2.2.2.6](#Section_2.2.2.6)), or in XML format if the Accept header is not present.

<a id="Section_3.7.5.2"></a>
#### 3.7.5.2 device/{deviceid}/startbackup

Starts to back up a device that is managed by the server.

**deviceid:** The ID of the device; see section [2.2.3.8](#Section_2.2.3.8).

| HTTP method | Description |
| --- | --- |
| POST | Starts to back up a device that is managed by the server. |

<a id="Section_3.7.5.2.1"></a>
##### 3.7.5.2.1 POST

Starts to back up a device that is managed by the server.

This operation is transported by an HTTP **POST**.

The operation can be invoked through the following URI:

https://<ServerName>/services/builtin/DeviceManagement.svc/device/{deviceid}/startbackup

The request message for this operation contains the following HTTP headers.

| Request header | Usage | Value |
| --- | --- | --- |
| Canary | Optional | The user token. Client MUST either pass this header to the server or pass all of the following headers to the server. For more details, refer to section [2.2.2.5](#Section_2.2.2.5). |
| Authorization | Optional | The caller's credential is encoded text that is based on user name and password. For more details, refer to section [2.2.2.4](#Section_2.2.2.4). |
| AppName | Optional | The client application name. For more details, refer to section [2.2.2.1](#Section_2.2.2.1). |
| AppVersion | Optional | The client application version. For more details, refer to section [2.2.2.3](#Section_2.2.2.3). |
| AppPublisherName | Optional | The client application publisher name. For more details, refer to section [2.2.2.2](#Section_2.2.2.2). |

The response message for this operation can result in the following status codes.

| Status code | Description |
| --- | --- |
| 200 | Operation successfully completed. |
| 400 | One or more parameters are not valid. |
| 401 | Access to the requested resource is denied. This API only supports Administrator calls. |
| 403 | Another backup is already in progress. |
| 404 | The device specified by DeviceId does not exist. |

<a id="Section_3.7.5.2.1.1"></a>
###### 3.7.5.2.1.1 Request Body

None.

<a id="Section_3.7.5.2.1.2"></a>
###### 3.7.5.2.1.2 Response Body

None.

<a id="Section_3.7.5.2.1.3"></a>
###### 3.7.5.2.1.3 Processing Details

The server MUST enable the backup feature to support backup.

This call starts to backup the specific device.

<a id="Section_3.7.5.3"></a>
#### 3.7.5.3 device/{deviceid}/stopbackup

Stops the backup of a device that is managed by the server.

**deviceid:** The ID of the device; see section [2.2.3.8](#Section_2.2.3.8).

| HTTP method | Description |
| --- | --- |
| POST | Stops the backup of a device that is managed by the server. |

<a id="Section_3.7.5.3.1"></a>
##### 3.7.5.3.1 POST

Stops the backup of a device that is managed by the server.

This operation is transported by an HTTP **POST**.

The operation can be invoked through the following URI:

Https://<ServerName>/services/builtin/DeviceManagement.svc/device/{deviceid}/stopbackup

The request message for this operation contains the following HTTP headers.

| Request header | Usage | Value |
| --- | --- | --- |
| Canary | Optional | The user token. Client MUST either pass this header to the server or pass all of the following headers to the server. For more details, refer to section [2.2.2.5](#Section_2.2.2.5). |
| Authorization | Optional | The caller's credential is encoded text that is based on user name and password. For more details, refer to section [2.2.2.4](#Section_2.2.2.4). |
| AppName | Optional | The client application name. For more details, refer to section [2.2.2.1](#Section_2.2.2.1). |
| AppVersion | Optional | The client application version. For more details, refer to section [2.2.2.3](#Section_2.2.2.3). |
| AppPublisherName | Optional | The client application publisher name. For more details, refer to section [2.2.2.2](#Section_2.2.2.2). |

The response message for this operation can result in the following status codes.

| Status code | Description |
| --- | --- |
| 200 | Operation successfully completed. |
| 400 | One or more parameters are not valid. |
| 401 | Access to the requested resource is denied. This API only supports Administrator calls. |
| 403 | The backup has already been stopped. |
| 404 | The device specified by DeviceId does not exist. |

<a id="Section_3.7.5.3.1.1"></a>
###### 3.7.5.3.1.1 Request Body

None.

<a id="Section_3.7.5.3.1.2"></a>
###### 3.7.5.3.1.2 Response Body

None.

<a id="Section_3.7.5.3.1.3"></a>
###### 3.7.5.3.1.3 Processing Details

Server MUST enable the backup feature to support backup.

This call stops the processing backup for the specific device.

<a id="Section_3.7.6"></a>
### 3.7.6 Timer Events

None.

<a id="Section_3.7.7"></a>
### 3.7.7 Other Local Events

None.

<a id="Section_3.8"></a>
## 3.8 IServiceManagement Server Details

<a id="Section_3.8.1"></a>
### 3.8.1 Abstract Data Model

This section describes a conceptual service contract that an implementation maintains to participate in this protocol. The described operations of the service contract are provided to facilitate the explanation of how the protocol behaves. This document does not mandate that implementations adhere to this service contract as long as their external behavior is consistent with how it is described in this document.

<a id="Section_3.8.1.1"></a>
#### 3.8.1.1 WebApiProvider

The WebApiProvider data model has a full complex type defined in section [2.2.4.72](#Section_2.2.4.72).

<a id="Section_3.8.2"></a>
### 3.8.2 Timers

None.

<a id="Section_3.8.3"></a>
### 3.8.3 Initialization

None.

<a id="Section_3.8.4"></a>
### 3.8.4 Higher-Layer Triggered Events

None.

<a id="Section_3.8.5"></a>
### 3.8.5 Message Processing Events and Sequencing Rules

| Resource | Description |
| --- | --- |
| permittedbuiltinservices | Retrieves the other services that the current logged-in user has access to. |

The responses to all the operations can result in the following status codes.

| Status code | Reason phrase | Description |
| --- | --- | --- |
| 200 | OK | The operation successfully completed. |
| 401 | Unauthorized | Access to the requested resource is denied. |

<a id="Section_3.8.5.1"></a>
#### 3.8.5.1 permittedbuiltinservices

| HTTP method | Description |
| --- | --- |
| GET | Retrieves the other services that the current logged-in user has access to. |

<a id="Section_3.8.5.1.1"></a>
##### 3.8.5.1.1 GET

Retrieves the other services that the current logged-in user has access to.

This operation is transported by an HTTP **GET**.

The operation can be invoked through the following URI:

https://<ServerName>/services/builtin/servicemanagement.svc/permittedbuiltinservices

The request message for this operation contains the following HTTP headers.

| Request header | Usage | Value |
| --- | --- | --- |
| Canary | Optional | The user token. Client MUST either pass this header to the server or pass all of the following headers to the server. For more details, refer to section [2.2.2.5](#Section_2.2.2.5). |
| Authorization | Optional | The caller's credential is encoded text that is based on user name and password. For more details, refer to section [2.2.2.4](#Section_2.2.2.4). |
| AppName | Optional | The client application name. For more details, refer to section [2.2.2.1](#Section_2.2.2.1). |
| AppVersion | Optional | The client application version. For more details, refer to section [2.2.2.3](#Section_2.2.2.3). |
| AppPublisherName | Optional | The client application publisher name. For more details, refer to section [2.2.2.2](#Section_2.2.2.2). |

The response message for this operation can result in the following status codes.

| Status code | Description |
| --- | --- |
| 200 | Operation successfully completed. |
| 401 | Access to the requested resource is denied. |

<a id="Section_3.8.5.1.1.1"></a>
###### 3.8.5.1.1.1 Request Body

None.

<a id="Section_3.8.5.1.1.2"></a>
###### 3.8.5.1.1.2 Response Body

The response body is encoded in either XML or JSON format. The format is controlled by the Accept header defined in section [2.2.2.6](#Section_2.2.2.6).

<xs:element name="ArrayOfWebApiProvider" nillable="true" type="tns1:ArrayOfWebApiProvider"/>

<a id="Section_3.8.5.1.1.3"></a>
###### 3.8.5.1.1.3 Processing Details

This call returns a list of other WebApi provider services that the current logged-in user has permission to access.

The server MUST construct a response in either XML or JSON format based on the value of the Accept header (section [2.2.2.6](#Section_2.2.2.6)), or in XML format if the Accept header is not present.

<a id="Section_3.8.6"></a>
### 3.8.6 Timer Events

None.

<a id="Section_3.8.7"></a>
### 3.8.7 Other Local Events

None.

<a id="Section_3.9"></a>
## 3.9 IServerManagement Server Details

<a id="Section_3.9.1"></a>
### 3.9.1 Abstract Data Model

This section describes a conceptual service contract that an implementation maintains to participate in this protocol. The described operations of the service contract are provided to facilitate the explanation of how the protocol behaves. This document does not mandate that implementations adhere to this service contract as long as their external behavior is consistent with how it is described in this document.

<a id="Section_3.9.1.1"></a>
#### 3.9.1.1 WebApiProvider

The WebApiProvider data model has a full complex type defined in section [2.2.4.67](#Section_2.2.4.67).

<a id="Section_3.9.2"></a>
### 3.9.2 Timers

None.

<a id="Section_3.9.3"></a>
### 3.9.3 Initialization

None.

<a id="Section_3.9.4"></a>
### 3.9.4 Higher-Layer Triggered Events

None.

<a id="Section_3.9.5"></a>
### 3.9.5 Message Processing Events and Sequencing Rules

| Resource | Description |
| --- | --- |
| serverinformation | Retrieves the basic server information to the client, such as the server name and the server SKU. |

The responses to all the operations can result in the following status codes.

| Status code | Reason phrase | Description |
| --- | --- | --- |
| 200 | OK | The operation successfully completed. |
| 401 | Unauthorized | Access to the requested resource is denied. |

The request MUST contain the authentication information.

<a id="Section_3.9.5.1"></a>
#### 3.9.5.1 serverinformation

| HTTP method | Description |
| --- | --- |
| GET | Retrieves the basic server information to the client, such as the server name and the server SKU. |

<a id="Section_3.9.5.1.1"></a>
##### 3.9.5.1.1 GET

Retrieves the basic server information to the client, such as the server name and the server SKU.

This operation is transported by an HTTP **GET**.

The operation can be invoked through the following URI:

https://<ServerName>/services/builtin/servermanagement.svc/serverinformation

The request message for this operation contains the following HTTP headers.

| Request header | Usage | Value |
| --- | --- | --- |
| Canary | Optional | The user token. Client MUST either pass this header to the server or pass all of the following headers to the server. For more details, refer to section [2.2.2.5](#Section_2.2.2.5). |
| Authorization | Optional | The caller's credential is encoded text that is based on user name and password. For more details, refer to section [2.2.2.4](#Section_2.2.2.4). |
| AppName | Optional | The client application name. For more details, refer to section [2.2.2.1](#Section_2.2.2.1). |
| AppVersion | Optional | The client application version. For more details, refer to section [2.2.2.3](#Section_2.2.2.3). |
| AppPublisherName | Optional | The client application publisher name. For more details, refer to section [2.2.2.2](#Section_2.2.2.2). |

The response message for this operation can result in the following status codes.

| Status code | Description |
| --- | --- |
| 200 | Operation successfully completed. |
| 401 | Access to the requested resource is denied. |

<a id="Section_3.9.5.1.1.1"></a>
###### 3.9.5.1.1.1 Request Body

None.

<a id="Section_3.9.5.1.1.2"></a>
###### 3.9.5.1.1.2 Response Body

The response body is encoded in either XML or JSON format. The format is controlled by the Accept header defined in section [2.2.2.6](#Section_2.2.2.6).

<xs:element name="ServerInfo" nillable="true" type="tns1:ServerInfo"/>

<a id="Section_3.9.5.1.1.3"></a>
###### 3.9.5.1.1.3 Processing Details

This call returns an instance of complex type of ServerInfo; see section [2.2.4.67](#Section_2.2.4.67).

The server MUST construct a response in either XML or JSON format based on the value of the Accept header (section [2.2.2.6](#Section_2.2.2.6)), or in XML format if the Accept header is not present.

<a id="Section_3.9.6"></a>
### 3.9.6 Timer Events

None.

<a id="Section_3.9.7"></a>
### 3.9.7 Other Local Events

None.

<a id="Section_3.10"></a>
## 3.10 ICustomizationManagement Server Details

<a id="Section_3.10.1"></a>
### 3.10.1 Abstract Data Model

This section describes a conceptual service contract that an implementation maintains to participate in this protocol. The described operations of the service contract are provided to facilitate the explanation of how the protocol behaves. This document does not mandate that implementations adhere to this service contract as long as their external behavior is consistent with how it is described in this document.

<a id="Section_3.10.1.1"></a>
#### 3.10.1.1 CustomizationInfo

The data model uses full complex types defined in section [2.2.4.27](#Section_2.2.4.27), section [2.2.4.9](#Section_2.2.4.9), and section [2.2.4.35](#Section_2.2.4.35).

<a id="Section_3.10.2"></a>
### 3.10.2 Timers

None.

<a id="Section_3.10.3"></a>
### 3.10.3 Initialization

None.

<a id="Section_3.10.4"></a>
### 3.10.4 Higher-Layer Triggered Events

None.

<a id="Section_3.10.5"></a>
### 3.10.5 Message Processing Events and Sequencing Rules

Retrieves the customization information.

| Resource | Description |
| --- | --- |
| customizationinformation | Retrieves the customization information. |

The responses to all the operations can result in the following status codes.

| Status code | Reason phrase | Description |
| --- | --- | --- |
| 200 | OK | Operation successfully completed. |
| 404 | Not Found | Cannot find the customization information from the server. |

<a id="Section_3.10.5.1"></a>
#### 3.10.5.1 customizationinformation

Retrieves the customization information.

| HTTP method | Description |
| --- | --- |
| GET | Retrieves the customization information. |

<a id="Section_3.10.5.1.1"></a>
##### 3.10.5.1.1 GET

Retrieves the customization information.

This operation is transported by an HTTP **GET**.

The operation can be invoked through the following URI:

https://<ServerName>/services/builtin/CustomizationManagement.svc/CustomizationInformation

The response message for this operation can result in the following status codes.

| Status code | Description |
| --- | --- |
| 200 | Operation successfully completed. |
| 404 | Cannot found the customization information from server. |

<a id="Section_3.10.5.1.1.1"></a>
###### 3.10.5.1.1.1 Request Body

None.

<a id="Section_3.10.5.1.1.2"></a>
###### 3.10.5.1.1.2 Response Body

The response body is encoded in either XML or JSON format. The format is controlled by the Accept header defined in section [2.2.2.6](#Section_2.2.2.6).

<xs:element name="CustomizationInfo" nillable="true" type="tns1:CustomizationInfo"/>

<a id="Section_3.10.5.1.1.3"></a>
###### 3.10.5.1.1.3 Processing Details

- This call returns an instance of the complex type CustomizationInfo; see section [2.2.4.27](#Section_2.2.4.27).
- The server MUST construct a response in either XML or JSON format based on the value of the Accept header (section [2.2.2.6](#Section_2.2.2.6)), or in XML format if the Accept header is not present.
- The server initializes the customization information.
<a id="Section_3.10.6"></a>
### 3.10.6 Timer Events

None.

<a id="Section_3.10.7"></a>
### 3.10.7 Other Local Events

None.

<a id="Section_3.11"></a>
## 3.11 IMediaManagement Server Details

<a id="Section_3.11.1"></a>
### 3.11.1 Abstract Data Model

None.

<a id="Section_3.11.2"></a>
### 3.11.2 Timers

None.

<a id="Section_3.11.3"></a>
### 3.11.3 Initialization

At initialization time, the protocol server MUST begin listening for requests at the respective URL addresses given in the message transport, as specified in section [2.1](#Section_2.1).

Media feature MUST be initialized on the server.<12>

<a id="Section_3.11.4"></a>
### 3.11.4 Higher-Layer Triggered Events

None.

<a id="Section_3.11.5"></a>
### 3.11.5 Message Processing Events and Sequencing Rules

| Resource | Description |
| --- | --- |
| metadata/item/mediatype/{mediatypedata}/groupingmethod/{groupingmethoddata}/sortproperty/{sortpropertydata}/sortorder/{sortorderdata}/index/{startingindexdata}/count/{requestedcountdata}?grouping={groupingdata} | The metadata of media items of a certain media type with the specified sorting and grouping options. |
| metadata/container/mediatype/{mediatypedata}/groupingmethod/{groupingmethoddata}?path={containerpath} | Detailed information about a metadata container. |
| search/mediatype/{mediatypedata}/groupingmethod/{groupingmethoddata}/index/{startingindexdata}/count/{requestedcountdata}?keywords={keywords}&grouping={groupingdata}&titleonly={titleonlydata}&shallow={shallowdata} | Search result for media items that contain certain keywords. |
| photo/{id}/isoriginal/{isoriginaldata}/width/{widthdata}/height/{heightdata} | A photo with a certain size. |
| thumbnail/mediatype/{mediatypedata}/id/{id}/width/{widthdata}/height/{heightdata} | The thumbnail of picture, video, and album art of the music with a certain size. |
| testdata?sizedata={sizedata} | Data of a certain size to be sent to the client to help calculate the available bandwidth. |
| metadata/streams/mediatype/{mediatypedata}/id/{id}/index/{startingindexdata}/count/{requestedcountdata} | Information about the available streams for an audio or video item. |

The responses to all the operations can result in the following status codes.

| Status code | Reason phrase | Description |
| --- | --- | --- |
| 200 | OK | The operation successfully completed. |
| 400 | Bad Request | One or more parameters are not valid. |
| 401 | Unauthorized | Access to the requested resource is denied. |
| 404 | Not Found | The path does not exist. |

<a id="Section_3.11.5.1"></a>
#### 3.11.5.1 metadata/item/mediatype/{mediatypedata}/groupingmethod/{groupingmethoddata}/sortproperty/{sortpropertydata}/sortorder/{sortorderdata}/index/{startingindexdata}/count/{requestedcountdata}?grouping={groupingdata}

This method retrieves the metadata of media items of a certain media type with the specified sorting and grouping options.

**mediatypedata:** The media type. See section [2.2.3.24](#Section_2.2.3.24).

**groupingmethoddata:** The grouping method. See section [2.2.3.15](#Section_2.2.3.15).

**groupingdata:** The container path. See section [2.2.3.14](#Section_2.2.3.14).

**startingindexdata:** The numerical position of the first media item to be retrieved. See section [2.2.3.46](#Section_2.2.3.46).

**requestedcountdata:** The requested number of media items to be retrieved. See section [2.2.3.36](#Section_2.2.3.36).

**sortpropertydata:** The metadata property on which to sort the media items. See section [2.2.3.44](#Section_2.2.3.44).

**sortorderdata:** The sort order. See section [2.2.3.43](#Section_2.2.3.43).

| HTTP method | Description |
| --- | --- |
| GET | Retrieves the metadata of media items of a certain media type with the specified sorting and grouping options. |

<a id="Section_3.11.5.1.1"></a>
##### 3.11.5.1.1 GET

This operation is transported by an HTTP **GET**.

The operation can be invoked through the following URI:

metadata/item/mediatype/{mediatypedata}/groupingmethod/{groupingmethoddata}/sortproperty/{sortpropertydata}/sortorder/{sortorderdata}/index/{startingindexdata}/count/{requestedcountdata}?grouping={groupingdata}

The request message for this operation contains the following HTTP headers.

| Request header | Usage | Value |
| --- | --- | --- |
| Canary | Optional | The value returned in the logon Response Canary header. Client MUST either pass this header to the server or pass all of the following headers to the server. For more details, see section [2.2.2.5](#Section_2.2.2.5). |
| Authorization | Optional | The caller's credential is encoded text that is based on user name and password. For more details, see section [2.2.2.4](#Section_2.2.2.4). |
| AppName | Optional | Application name. For more details, see section [2.2.2.1](#Section_2.2.2.1). |
| AppVersion | Optional | Application version. For more details, see section [2.2.2.3](#Section_2.2.2.3). |
| AppPublisherName | Optional | Application publisher name. For more details, see section [2.2.2.2](#Section_2.2.2.2). |

The response message for this operation can result in the following status codes.

| Status code | Description |
| --- | --- |
| 200 | Operation successfully completed. |
| 400 | One or more parameters are not valid. |
| 401 | Access to the requested resource is denied. |
| 404 | The path does not exist. |

<a id="Section_3.11.5.1.1.1"></a>
###### 3.11.5.1.1.1 Request Body

None.

<a id="Section_3.11.5.1.1.2"></a>
###### 3.11.5.1.1.2 Response Body

The response body is encoded in either XML or JSON format. The format is controlled by the Accept header.

<xs:element name="MetadataResult" nillable="true" type="tns1:MetadataResult"/>

<a id="Section_3.11.5.1.1.3"></a>
###### 3.11.5.1.1.3 Processing Details

- The server MUST only respond to requests that have established TLS 1.1 server authentication [[RFC4346]](https://go.microsoft.com/fwlink/?LinkId=90474).
- The server MUST construct a response in either XML or JSON format based on the value of the Accept header or XML if the Accept header was not present.
- The server MUST retrieve the metadata of media items of a certain media type with the specified sorting and grouping options, and fill the response body with type MetadataResult defined in section [2.2.4.45](#Section_2.2.4.45).
<a id="Section_3.11.5.2"></a>
#### 3.11.5.2 metadata/container/mediatype/{mediatypedata}/groupingmethod/{groupingmethoddata}?path={containerpath}

Retrieves detailed information about a metadata container.

**mediatypedata:** The media type. See section [2.2.3.24](#Section_2.2.3.24).

**groupingmethoddata:** The grouping method. See section [2.2.3.15](#Section_2.2.3.15).

**containerpath:** The path to the container. See section [2.2.3.4](#Section_2.2.3.4).

| HTTP method | Description |
| --- | --- |
| GET | Retrieves detailed information about a metadata container. |

<a id="Section_3.11.5.2.1"></a>
##### 3.11.5.2.1 GET

Retrieves detailed information about a metadata container.

This operation is transported by an HTTP **GET**.

The operation can be invoked through the following URI:

metadata/container/mediatype/{mediatypedata}/groupingmethod/{groupingmethoddata}?path={containerpath}

The request message for this operation contains the following HTTP headers.

| Request header | Usage | Value |
| --- | --- | --- |
| Canary | Optional | The value returned in the logon Response Canary header. Client MUST either pass this header to the server or pass all of the following headers to the server. For more details, see section [2.2.2.5](#Section_2.2.2.5). |
| Authorization | Optional | The caller's credential is encoded text that is based on user name and password. For more details, see section [2.2.2.4](#Section_2.2.2.4). |
| AppName | Optional | Application name. For more details, see section [2.2.2.1](#Section_2.2.2.1). |
| AppVersion | Optional | Application version. For more details, see section [2.2.2.3](#Section_2.2.2.3). |
| AppPublisherName | Optional | Application publisher name. For more details, see section [2.2.2.2](#Section_2.2.2.2). |

The response message for this operation can result in the following status codes.

| Status code | Description |
| --- | --- |
| 200 | Operation successfully completed. |
| 400 | One or more parameters are not valid. |
| 401 | Access to the requested resource is denied. |
| 404 | The path does not exist. |

<a id="Section_3.11.5.2.1.1"></a>
###### 3.11.5.2.1.1 Request Body

None.

<a id="Section_3.11.5.2.1.2"></a>
###### 3.11.5.2.1.2 Response Body

The response body is encoded in either Xml or JSON format. The format is controlled by the Accept header.

<xs:element name="MetadataDetailResult" nillable="true" type="tns1:MetadataDetailResult"/>

<a id="Section_3.11.5.2.1.3"></a>
###### 3.11.5.2.1.3 Processing Details

- The server MUST only respond to requests that have established TLS 1.1 server authentication [[RFC4346]](https://go.microsoft.com/fwlink/?LinkId=90474).
- The server MUST construct a response in either XML or JSON format based on the value of the Accept header or XML if the Accept header was not present.
- The server MUST retrieve the metadata of media items of a certain media type with the specified sorting and grouping options, and fill the response body with type MetadataDetailResult defined in section [2.2.4.42](#Section_2.2.4.42).
<a id="Section_3.11.5.3"></a>
#### 3.11.5.3 search/mediatype/{mediatypedata}/groupingmethod/{groupingmethoddata}/index/{startingindexdata}/count/{requestedcountdata}?keywords={keywords}&grouping={groupingdata}&titleonly={titleonlydata}&shallow={shallowdata}

Get the sub-item count for certain container. This API is deprecated.

**mediatypedata:** The media type. See section [2.2.3.24](#Section_2.2.3.24).

**groupingmethoddata:** The grouping method. See section [2.2.3.15](#Section_2.2.3.15).

**groupingdata:** The path to the container. See section [2.2.3.14](#Section_2.2.3.14).

**keywords:** A space-separated list of keywords to search for. See section [2.2.3.20](#Section_2.2.3.20).

**startingindexdata:** The numerical position of the first media item to be retrieved. See section [2.2.3.46](#Section_2.2.3.46).

**requestedcountdata:** The requested number of media items to be retrieved. See section [2.2.3.36](#Section_2.2.3.36).

**titleonlydata:** Whether the search is performed on title only. See section [2.2.3.48](#Section_2.2.3.48).

**shallowdata:** Whether the search is shallow or deep. See section [2.2.3.39](#Section_2.2.3.39).

| HTTP method | Description |
| --- | --- |
| GET | Searches for media items that contain certain keywords. |

<a id="Section_3.11.5.3.1"></a>
##### 3.11.5.3.1 GET

Searches for media items that contain certain keywords.

This operation is transported by an HTTP **GET**.

The operation can be invoked through the following URI:

search/mediatype/{mediatypedata}/groupingmethod/{groupingmethoddata}/index/{startingindexdata}/count/{requestedcountdata}?keywords={keywords}&grouping={groupingdata}&titleonly={titleonlydata}&shallow={shallowdata}

The request message for this operation contains the following HTTP headers.

| Request header | Usage | Value |
| --- | --- | --- |
| Canary | Optional | The value returned in the logon Response Canary header. Client MUST either pass this header to the server or pass all of the following headers to the server. For more details, see section [2.2.2.5](#Section_2.2.2.5). |
| Authorization | Optional | The caller's credential is encoded text that is based on user name and password. For more details, see section [2.2.2.4](#Section_2.2.2.4). |
| AppName | Optional | Application name. For more details, see section [2.2.2.1](#Section_2.2.2.1). |
| AppVersion | Optional | Application version. For more details, see section [2.2.2.3](#Section_2.2.2.3). |
| AppPublisherName | Optional | Application publisher name. For more details, see section [2.2.2.2](#Section_2.2.2.2). |

The response message for this operation can result in the following status codes.

| Status code | Description |
| --- | --- |
| 200 | Operation successfully completed. |
| 400 | One or more parameters are not valid. |
| 401 | Access to the requested resource is denied. |
| 404 | The path does not exist. |

<a id="Section_3.11.5.3.1.1"></a>
###### 3.11.5.3.1.1 Request Body

None.

<a id="Section_3.11.5.3.1.2"></a>
###### 3.11.5.3.1.2 Response Body

The response body is encoded in Xml format.

<a id="Section_3.11.5.3.1.3"></a>
###### 3.11.5.3.1.3 Processing Details

The server MUST only respond to requests that have established TLS 1.1 server authentication as specified in [[RFC4346]](https://go.microsoft.com/fwlink/?LinkId=90474).

The server MUST construct a response in either XML or JSON format based on the value of the Accept header or Xml if the Accept header was not present.

The server MUST searches for media items that contain certain keywords, and fill the response body with type MetadataResult defined in section [2.2.4.45](#Section_2.2.4.45).

<a id="Section_3.11.5.4"></a>
#### 3.11.5.4 photo/{id}/isoriginal/{isoriginaldata}/width/{widthdata}/height/{heightdata}

This method retrieves a photo of a certain size.

**id:** The photo identifier. See section [2.2.3.17](#Section_2.2.3.17).

**isoriginaldata:** Specify whether to return the original data. If yes, **widthdata** and **heightdata** will not take effect, but they’re still required in the request. See section [2.2.3.19](#Section_2.2.3.19).

**widthdata:** The width of an image. This value is required, but it is ignored if **isoriginaldata** is TRUE. See section [2.2.3.54](#Section_2.2.3.54).

**heightdata:** The width of the photo. This value is required, but it is ignored if **isoriginaldata** is TRUE. See section [2.2.3.16](#Section_2.2.3.16).

| HTTP method | Description |
| --- | --- |
| GET | Retrieve a photo of a certain size. |

<a id="Section_3.11.5.4.1"></a>
##### 3.11.5.4.1 GET

This operation is transported by an HTTP **GET**.

The operation can be invoked through the following URI:

photo/{id}/isoriginal/{isoriginaldata}/width/{widthdata}/height/{heightdata}

The request message for this operation contains the following HTTP headers.

| Request header | Usage | Value |
| --- | --- | --- |
| Canary | Optional | The value returned in the logon Response Canary header. Client MUST either pass this header to the server or pass all of the following headers to the server. For more details, see section [2.2.2.5](#Section_2.2.2.5). |
| Authorization | Optional | The caller's credential is encoded text that is based on user name and password. For more details, see section [2.2.2.4](#Section_2.2.2.4). |
| AppName | Optional | Application name. For more details, see section [2.2.2.1](#Section_2.2.2.1). |
| AppVersion | Optional | Application version. For more details, see section [2.2.2.3](#Section_2.2.2.3). |
| AppPublisherName | Optional | Application publisher name. For more details, see section [2.2.2.2](#Section_2.2.2.2). |

The response message for this operation can result in the following status codes.

| Status code | Description |
| --- | --- |
| 200 | Operation successfully completed. |
| 400 | One or more parameters are not valid. |
| 401 | Access to the requested resource is denied. |
| 404 | The path does not exist. |

<a id="Section_3.11.5.4.1.1"></a>
###### 3.11.5.4.1.1 Request Body

None.

<a id="Section_3.11.5.4.1.2"></a>
###### 3.11.5.4.1.2 Response Body

The response body is a binary stream.

<a id="Section_3.11.5.4.1.3"></a>
###### 3.11.5.4.1.3 Processing Details

- The server MUST only respond to requests that have established TLS 1.1 server authentication [[RFC4346]](https://go.microsoft.com/fwlink/?LinkId=90474).
- The server MUST retrieve a photo of a certain size, and fill the response body with a binary stream.
<a id="Section_3.11.5.5"></a>
#### 3.11.5.5 thumbnail/mediatype/{mediatypedata}/id/{id}/width/{widthdata}/height/{heightdata}

Retrieves the thumbnail of a specified size of the picture, video, and album art of the music.

**mediatypedata:** The media type. See section [2.2.3.24](#Section_2.2.3.24).

**id:** The identifier of the media item. See section [2.2.3.17](#Section_2.2.3.17).

**widthdata:** The desired width of an image.

**heightdata:** The desired height of an image.

| HTTP method | Description |
| --- | --- |
| GET | Retrieves the thumbnail of a specified size of the picture, video, and album art of the music. |

<a id="Section_3.11.5.5.1"></a>
##### 3.11.5.5.1 GET

Retrieves the thumbnail of a specified size of the picture, video, and album art of the music.

This operation is transported by an HTTP **GET**.

The operation can be invoked through the following URI:

thumbnail/mediatype/{mediatypedata}/id/{id}/width/{widthdata}/height/{heightdata}

The request message for this operation contains the following HTTP headers.

| Request header | Usage | Value |
| --- | --- | --- |
| Canary | Optional | The value returned in the logon Response Canary header. Client MUST either pass this header to the server or pass all of the following headers to the server. For more details, see section [2.2.2.5](#Section_2.2.2.5). |
| Authorization | Optional | The caller's credential is encoded text that is based on user name and password. For more details, see section [2.2.2.4](#Section_2.2.2.4). |
| AppName | Optional | Application name. For more details, see section [2.2.2.1](#Section_2.2.2.1). |
| AppVersion | Optional | Application version. For more details, see section [2.2.2.3](#Section_2.2.2.3). |
| AppPublisherName | Optional | Application publisher name. For more details, see section [2.2.2.2](#Section_2.2.2.2). |

The response message for this operation can result in the following status codes.

| Status code | Description |
| --- | --- |
| 200 | Operation successfully completed. |
| 400 | One or more parameters are not valid. |
| 401 | Access to the requested resource is denied. |
| 404 | The path does not exist. |

<a id="Section_3.11.5.5.1.1"></a>
###### 3.11.5.5.1.1 Request Body

None.

<a id="Section_3.11.5.5.1.2"></a>
###### 3.11.5.5.1.2 Response Body

The response body is a binary stream.

<a id="Section_3.11.5.5.1.3"></a>
###### 3.11.5.5.1.3 Processing Details

- The server MUST only respond to requests that have established TLS 1.1 server authentication [[RFC4346]](https://go.microsoft.com/fwlink/?LinkId=90474).
- The server MUST retrieve the thumbnail of a specified size of the picture, video, and album art of the music, and fill the response body with a binary stream.
<a id="Section_3.11.5.6"></a>
#### 3.11.5.6 testdata?sizedata={sizedata}

Requests data of a certain size to be sent to the client to help calculate the available bandwidth.

**sizedata:** The size of the test data to be retrieved. See section [2.2.3.41](#Section_2.2.3.41).

| HTTP method | Description |
| --- | --- |
| POST | Requests data of a certain size to be sent to the client to help calculate the available bandwidth. |

<a id="Section_3.11.5.6.1"></a>
##### 3.11.5.6.1 POST

Requests data of a certain size to be sent to the client to help calculate the available bandwidth.

This operation is transported by an HTTP **POST**.

The operation can be invoked through the following URI:

testdata?sizedata={sizedata}

The request message for this operation contains the following HTTP headers.

| Request header | Usage | Value |
| --- | --- | --- |
| Canary | Optional | The value returned in the logon Response Canary header. Client MUST either pass this header to the server or pass all of the following headers to the server. For more details, see section [2.2.2.5](#Section_2.2.2.5). |
| Authorization | Optional | The caller's credential is encoded text that is based on user name and password. For more details, see section [2.2.2.4](#Section_2.2.2.4). |
| AppName | Optional | Application name. For more details, see section [2.2.2.1](#Section_2.2.2.1). |
| AppVersion | Optional | Application version. For more details, see section [2.2.2.3](#Section_2.2.2.3). |
| AppPublisherName | Optional | Application publisher name. For more details, see section [2.2.2.2](#Section_2.2.2.2). |

The response message for this operation can result in the following status codes.

| Status code | Description |
| --- | --- |
| 200 | Operation successfully completed. |
| 400 | One or more parameters are not valid. |
| 401 | Access to the requested resource is denied. |
| 404 | The path does not exist. |

<a id="Section_3.11.5.6.1.1"></a>
###### 3.11.5.6.1.1 Request Body

The request body contains sample data that can be used to calculate the available bandwidth. The request body can be empty.

<xs:element name="input" nillable="true" type="xs:base64Binary"/>

<a id="Section_3.11.5.6.1.2"></a>
###### 3.11.5.6.1.2 Response Body

The response body is a binary stream with a certain size specified in the request URI.

<a id="Section_3.11.5.6.1.3"></a>
###### 3.11.5.6.1.3 Processing Details

The server MUST only respond to requests that have established TLS 1.1 server authentication [[RFC4346]](https://go.microsoft.com/fwlink/?LinkId=90474).

The server MUST generate a binary stream of a certain size and fill the response body with it.

<a id="Section_3.11.5.7"></a>
#### 3.11.5.7 metadata/streams/mediatype/{mediatypedata}/id/{id}/index/{startingindexdata}/count/{requestedcountdata}

Retrieves information about the available streams for an audio or video item.

**mediatypedata:** The media type. See section [2.2.3.24](#Section_2.2.3.24). Only "music" or "video" is valid here.

**id:** The identifier of the media item. See section [2.2.3.17](#Section_2.2.3.17).

**startingindexdata:** The numerical position of the first stream to be retrieved. See section [2.2.3.46](#Section_2.2.3.46).

**requestedcountdata:** The requested number of streams to be retrieved. See section [2.2.3.36](#Section_2.2.3.36).

| HTTP method | Description |
| --- | --- |
| GET | Retrieves information about the available streams for an audio or video item. |

<a id="Section_3.11.5.7.1"></a>
##### 3.11.5.7.1 GET

Retrieves information about the available streams for an audio or video item.

This operation is transported by an HTTP **GET**.

The operation can be invoked through the following URI:

metadata/streams/mediatype/{mediatypedata}/id/{id}/index/{startingindexdata}/count/{requestedcountdata}

The request message for this operation contains the following HTTP headers.

| Request header | Usage | Value |
| --- | --- | --- |
| Canary | Optional | The value returned in the logon Response Canary header. Client MUST either pass this header to the server or pass all of the following headers to the server. For more details, see section [2.2.2.5](#Section_2.2.2.5). |
| Authorization | Optional | The caller's credential is encoded text that is based on user name and password. For more details, see section [2.2.2.4](#Section_2.2.2.4). |
| AppName | Optional | Application name. For more details, see section [2.2.2.1](#Section_2.2.2.1). |
| AppVersion | Optional | Application version. For more details, see section [2.2.2.3](#Section_2.2.2.3). |
| AppPublisherName | Optional | Application publisher name. For more details, see section [2.2.2.2](#Section_2.2.2.2). |

The response message for this operation can result in the following status codes.

| Status code | Description |
| --- | --- |
| 200 | Operation successfully completed. |
| 400 | One or more parameters are not valid. |
| 401 | Access to the requested resource is denied. |
| 404 | The path does not exist. |

<a id="Section_3.11.5.7.1.1"></a>
###### 3.11.5.7.1.1 Request Body

None.

<a id="Section_3.11.5.7.1.2"></a>
###### 3.11.5.7.1.2 Response Body

The response body is encoded in XML format.

<xs:element name="MetadataStreamResult" nillable="true" type="tns1:MetadataStreamResult"/>

<a id="Section_3.11.5.7.1.3"></a>
###### 3.11.5.7.1.3 Processing Details

The server MUST only respond to requests that have established TLS 1.1 server authentication [[RFC4346]](https://go.microsoft.com/fwlink/?LinkId=90474).

The server MUST construct a response in either Xml or JSON format based on the value of the Accept header or XML if the Accept header was not present.

The server MUST retrieve information about the available streams for an audio or video item, and fill the response body with type MetadataStreamResult defined in section [2.2.4.46](#Section_2.2.4.46).

<a id="Section_3.11.6"></a>
### 3.11.6 Timer Events

None.

<a id="Section_3.11.7"></a>
### 3.11.7 Other Local Events

None.

<a id="Section_3.12"></a>
## 3.12 IStorageManagement Server Details

<a id="Section_3.12.1"></a>
### 3.12.1 Abstract Data Model

This section describes a conceptual service contract that an implementation maintains to participate in this protocol. The described operations of the service contract are provided to facilitate the explanation of how the protocol behaves. This document does not mandate that implementations adhere to this service contract as long as their external behavior is consistent with how it is described in this document.

<a id="Section_3.12.1.1"></a>
#### 3.12.1.1 FolderInfo

FolderInfo represents the server folder managed by the server.

The FolderInfo data model has a full complex type defined in section [2.2.4.30](#Section_2.2.4.30).

<a id="Section_3.12.1.2"></a>
#### 3.12.1.2 StorageDriveInfo

StorageDriveInfo represents the drive info of storage server, which can be used to create the server folder managed by the primary server.

The StorageDriveInfo data model has a full complex type defined in section [2.2.4.69](#Section_2.2.4.69).

<a id="Section_3.12.1.3"></a>
#### 3.12.1.3 StorageServerInfo

StorageServerInfo represents the storage server, which can be used to create the server folder managed by the primary server.

The StorageServerInfo data model has a full complex type defined in section [2.2.4.70](#Section_2.2.4.70).

<a id="Section_3.12.2"></a>
### 3.12.2 Timers

None.

<a id="Section_3.12.3"></a>
### 3.12.3 Initialization

None.

<a id="Section_3.12.4"></a>
### 3.12.4 Higher-Layer Triggered Events

None.

<a id="Section_3.12.5"></a>
### 3.12.5 Message Processing Events and Sequencing Rules

| Resource | Description |
| --- | --- |
| servers | Retrieves storage servers' information. |
| storagedriveinfo?servername={servername} | Retrieves the drives information of storage server. |
| serverdrives/index/{index}/count/{count} | Retrieves a list of drives on the server. |
| serverfolders/index/{index}/count/{count}?username={username} | Retrieves a list of shared folders managed by the server. |
| serverfolder/create/overwritepermissions/{overwritepermissions}?sharename={sharename}&path={path}&description={description}&servername={servername} | Creates a shared folder on specific storage server. |
| serverfolder/{id}/delete/deletecontents/{deletecontents} | Removes or ends the sharing of a shared folder managed by the server. |
| serverfolder/{id}/rename?newname={newname} | Renames a shared folder managed by the server. |
| serverfolder/{id}/modify/permission/{permission}?username={username}&name={name}&description={description} | Modifies the access permissions of a user on a shared folder by specifying a user name. |
| serverfolder/{id}/modify/usersid/{usersid}/permission/{permission}?name={name}&description={description} | Modifies the access permissions of a user on a shared folder by specifying a security identifier. |

The responses to all the operations can result in the following status codes.

| Status code | Reason phrase | Description |
| --- | --- | --- |
| 200 | OK | The operation successfully completed. |
| 401 | Unauthorized | Access to the requested resource is denied. |
| 400 | Bad Request | One or more parameters are not valid. |
| 404 | Not Found | The specific resource does not exist. |
| 403 | Forbidden | The operation is forbidden. |
| 409 | Conflict | Server folder with the new path already exists. |

<a id="Section_3.12.5.1"></a>
#### 3.12.5.1 servers

Retrieves the information of the storage servers.

| HTTP method | Description |
| --- | --- |
| GET | Retrieves the storage servers' information. |

<a id="Section_3.12.5.1.1"></a>
##### 3.12.5.1.1 GET

Retrieves the storage servers' information.

This operation is transported by an HTTP GET**.**

The operation can be invoked through the following URI:

https://<ServerName>/services/builtin/StorageManagement.svc/Servers

The request message for this operation contains the following HTTP headers.

| Request header | Usage | Value |
| --- | --- | --- |
| Canary | Optional | The user token. Client MUST either pass this header to the server or pass all of the following headers to the server. For more details, refer to section [2.2.2.5](#Section_2.2.2.5). |
| Authorization | Optional | The caller's credential is encoded text that is based on user name and password. For more details, refer to section [2.2.2.4](#Section_2.2.2.4). |
| AppName | Optional | The client application name. For more details, refer to section [2.2.2.1](#Section_2.2.2.1). |
| AppVersion | Optional | The client application version. For more details, refer to section [2.2.2.3](#Section_2.2.2.3). |
| AppPublisherName | Optional | The client application publisher name. For more details, refer to section [2.2.2.2](#Section_2.2.2.2). |

The response message for this operation can result in the following status codes.

| Status code | Description |
| --- | --- |
| 200 | Operation successfully completed. |
| 401 | Access to the requested resource is denied. This API only supports Administrator calls. |

<a id="Section_3.12.5.1.1.1"></a>
###### 3.12.5.1.1.1 Request Body

None.

<a id="Section_3.12.5.1.1.2"></a>
###### 3.12.5.1.1.2 Response Body

The response body is encoded in either XML or JSON format. The format is controlled by the Accept header defined in section [2.2.2.6](#Section_2.2.2.6).

<xs:element name="ArrayOfStorageServerInfo" nillable="true" type="tns1:ArrayOfStorageServerInfo"/>

<a id="Section_3.12.5.1.1.3"></a>
###### 3.12.5.1.1.3 Processing Details

This call returns the storage server's information (section [2.2.4.20](#Section_2.2.4.20)).

The server MUST construct a response in either XML or JSON format based on the value of the Accept header (section [2.2.2.6](#Section_2.2.2.6)), or in XML format if the Accept header is not present.

<a id="Section_3.12.5.2"></a>
#### 3.12.5.2 storagedriveinfo?servername={servername}

Retrieves the information about the drives on a specific server.

**servername:** The storage server name.

| HTTP method | Description |
| --- | --- |
| GET | Retrieves the information about the drives on a specific server. |

<a id="Section_3.12.5.2.1"></a>
##### 3.12.5.2.1 GET

Retrieves the information about the drives on a specific server.

This operation is transported by an HTTP **GET**.

The operation can be invoked through the following URI:

https://<ServerName>/services/builtin/StorageManagement.svc/storagedriveinfo?servername={servername}

The request message for this operation contains the following HTTP headers.

| Request header | Usage | Value |
| --- | --- | --- |
| Canary | Optional | The user token. Client MUST either pass this header to the server or pass all of the following headers to the server. For more details, refer to section [2.2.2.5](#Section_2.2.2.5). |
| Authorization | Optional | The caller's credential is encoded text that is based on user name and password. For more details, refer to section [2.2.2.4](#Section_2.2.2.4). |
| AppName | Optional | The client application name. For more details, refer to section [2.2.2.1](#Section_2.2.2.1). |
| AppVersion | Optional | The client application version. For more details, refer to section [2.2.2.3](#Section_2.2.2.3). |
| AppPublisherName | Optional | The client application publisher name. For more details, refer to section [2.2.2.2](#Section_2.2.2.2). |

The response message for this operation can result in the following status codes.

| Status code | Description |
| --- | --- |
| 200 | Operation successfully completed. |
| 400 | One or more parameters are not valid. |
| 401 | Access to the requested resource is denied. This API only supports Administrator calls. |
| 404 | The specific resource does not exist. |

<a id="Section_3.12.5.2.1.1"></a>
###### 3.12.5.2.1.1 Request Body

None.

<a id="Section_3.12.5.2.1.2"></a>
###### 3.12.5.2.1.2 Response Body

The response body is encoded in either XML or JSON format. The format is controlled by the Accept header defined in section [2.2.2.6](#Section_2.2.2.6).

<xs:element name="ArrayOfStorageDriveInfo" nillable="true" type="tns1:ArrayOfStorageDriveInfo"/>

<a id="Section_3.12.5.2.1.3"></a>
###### 3.12.5.2.1.3 Processing Details

This call returns the information of drives that belong to a specific storage server (section [2.2.4.19](#Section_2.2.4.19)).

The server MUST construct a response in either XML or JSON format based on the value of the Accept header (section [2.2.2.6](#Section_2.2.2.6)), or in XML format if the Accept header is not present.

<a id="Section_3.12.5.3"></a>
#### 3.12.5.3 serverdrives/index/{index}/count/{count}

Retrieves the information about the drives on the server.

**index:** The index in the collection to start retrieving data. See section [2.2.3.18](#Section_2.2.3.18).

**count:** The maximum count of items to return. See section [2.2.3.5](#Section_2.2.3.5).

| HTTP method | Description |
| --- | --- |
| GET | Retrieves the information about the drives on the server. |

<a id="Section_3.12.5.3.1"></a>
##### 3.12.5.3.1 GET

Retrieves the information about the drives on the server.

This operation is transported by an HTTP **GET**.

The operation can be invoked through the following URI:

https://<ServerName>/services/builtin/StorageManagement.svc/serverdrives/index/{index}/count/{count}

The request message for this operation contains the following HTTP headers.

| Request header | Usage | Value |
| --- | --- | --- |
| Canary | Optional | The user token. Client MUST either pass this header to the server or pass all of the following headers to the server. For more details, refer to section [2.2.2.5](#Section_2.2.2.5). |
| Authorization | Optional | The caller's credential is encoded text that is based on user name and password. For more details, refer to section [2.2.2.4](#Section_2.2.2.4). |
| AppName | Optional | The client application name. For more details, refer to section [2.2.2.1](#Section_2.2.2.1). |
| AppVersion | Optional | The client application version. For more details, refer to section [2.2.2.3](#Section_2.2.2.3). |
| AppPublisherName | Optional | The client application publisher name. For more details, refer to section [2.2.2.2](#Section_2.2.2.2). |

The response message for this operation can result in the following status codes.

| Status code | Description |
| --- | --- |
| 200 | Operation successfully completed. |
| 400 | One or more parameters are not valid. |
| 401 | Access to the requested resource is denied. This API only supports Administrator calls. |
| 404 | The specific resource does not exist. |

<a id="Section_3.12.5.3.1.1"></a>
###### 3.12.5.3.1.1 Request Body

None.

<a id="Section_3.12.5.3.1.2"></a>
###### 3.12.5.3.1.2 Response Body

The response body is encoded in either XML or JSON format. The format is controlled by the Accept header defined in section [2.2.2.6](#Section_2.2.2.6).

<xs:element name="PartialCollection_Of_DriveInfo" nillable="true" type="tns1:PartialCollection_Of_DriveInfo"/>

<a id="Section_3.12.5.3.1.3"></a>
###### 3.12.5.3.1.3 Processing Details

This call returns the information about the drives on a specific storage server (section [2.2.4.57](#Section_2.2.4.57)).

The server MUST construct a response in either XML or JSON format based on the value of the Accept header (section [2.2.2.6](#Section_2.2.2.6)), or in XML format if the Accept header is not present.

<a id="Section_3.12.5.4"></a>
#### 3.12.5.4 serverfolders/index/{index}/count/{count}?username={username}

Retrieves a list of shared folders managed by the server.

**index:** The index in the collection to start retrieving data. See section [2.2.3.18](#Section_2.2.3.18).

**count:** The maximum count of items to return. See section [2.2.3.5](#Section_2.2.3.5).

**username:** The user name is used to query access permission on the folder. It is an optional parameter. If it is not specified, the API returns the current access permissions for the user. See section [2.2.3.51](#Section_2.2.3.51).

| HTTP method | Description |
| --- | --- |
| GET | Retrieves a list of shared folders managed by the server. |

<a id="Section_3.12.5.4.1"></a>
##### 3.12.5.4.1 GET

This operation retrieves a list of shared folders managed by the server. It is transported by an HTTP GET.

The operation can be invoked through the following URI:

https://<ServerName>/services/builtin/StorageManagement.svc/serverfolders/index/{index}/count/{count}?username={username}

The request message for this operation contains the following HTTP headers.

| Request header | Usage | Value |
| --- | --- | --- |
| Canary | Optional | The user token. Client MUST either pass this header to the server or pass all of the following headers to the server. For more details, refer to section [2.2.2.5](#Section_2.2.2.5). |
| Authorization | Optional | The caller's credential is encoded text that is based on user name and password. For more details, refer to section [2.2.2.4](#Section_2.2.2.4). |
| AppName | Optional | The client application name. For more details, refer to section [2.2.2.1](#Section_2.2.2.1). |
| AppVersion | Optional | The client application version. For more details, refer to section [2.2.2.3](#Section_2.2.2.3). |
| AppPublisherName | Optional | The client application publisher name. For more details, refer to section [2.2.2.2](#Section_2.2.2.2). |

The response message for this operation can result in the following status codes.

| Status code | Description |
| --- | --- |
| 200 | Operation successfully completed. |
| 400 | One or more parameters are not valid. |
| 401 | Access to the requested resource is denied. |
| 404 | The specific resource does not exist. |

<a id="Section_3.12.5.4.1.1"></a>
###### 3.12.5.4.1.1 Request Body

None.

<a id="Section_3.12.5.4.1.2"></a>
###### 3.12.5.4.1.2 Response Body

The response body is encoded in either XML or JSON format. The format is controlled by the Accept header defined in section [2.2.2.6](#Section_2.2.2.6).

<xs:element name="PartialCollection_Of_FolderInfo" nillable="true" type="tns1:PartialCollection_Of_FolderInfo"/>

<a id="Section_3.12.5.4.1.3"></a>
###### 3.12.5.4.1.3 Processing Details

This call returns the information about drives on a specific storage server. See section [2.2.4.58](#Section_2.2.4.58).

The server MUST construct a response in either XML or JSON format based on the value of the Accept header (section [2.2.2.6](#Section_2.2.2.6)), or in XML format if the Accept header is not present.

<a id="Section_3.12.5.5"></a>
#### 3.12.5.5 serverfolder/create/overwritepermissions/{overwritepermissions}?sharename={sharename}&path={path}&description={description}&servername={servername}

This method creates a shared folder on the specific server.

**sharename:** The name of the shared folder to be created. See section [2.2.3.40](#Section_2.2.3.40).

**overwritepermissions:** This flag indicates whether to overwrite the folder descriptions. See section [2.2.3.31](#Section_2.2.3.31).

**path:** The local path of the folder to share on the specific server. See section [2.2.3.32](#Section_2.2.3.32).

**description:** The description of the shared folder. See section [2.2.3.7](#Section_2.2.3.7).

**servername:** The name of the specific server. This is an optional parameter; if not specified, the server folder will be created on the primary server. See section [2.2.3.38](#Section_2.2.3.38).

This is an optional parameter.

| HTTP method | Description |
| --- | --- |
| POST | Creates a shared folder on the specific server. |

<a id="Section_3.12.5.5.1"></a>
##### 3.12.5.5.1 POST

Creates a shared folder on the specific server.

This operation is transported by an HTTP POST.

The operation can be invoked through the following URI:

https://<ServerName>/services/builtin/StorageManagement.svc/serverfolder/create/overwritepermissions/{overwritepermissions}?sharename={sharename}&path={path}&description={description}&servername={servername}

The request message for this operation contains the following HTTP headers.

| Request header | Usage | Value |
| --- | --- | --- |
| Canary | Optional | The user token. Client MUST either pass this header to the server or pass all of the following headers to the server. For more details, refer to section [2.2.2.5](#Section_2.2.2.5). |
| Authorization | Optional | The caller's credential is encoded text that is based on user name and password. For more details, refer to section [2.2.2.4](#Section_2.2.2.4). |
| AppName | Optional | The client application name. For more details, refer to section [2.2.2.1](#Section_2.2.2.1). |
| AppVersion | Optional | The client application version. For more details, refer to section [2.2.2.3](#Section_2.2.2.3). |
| AppPublisherName | Optional | The client application publisher name. For more details, refer to section [2.2.2.2](#Section_2.2.2.2). |

The response message for this operation can result in the following status codes.

| Status code | Description |
| --- | --- |
| 200 | Operation successfully completed. |
| 400 | One or more parameters are not valid. |
| 401 | Access to the requested resource is denied. This API only supports Administrator calls. |
| 403 | The target share path is invalid. |
| 404 | The specific resource does not exist. |

<a id="Section_3.12.5.5.1.1"></a>
###### 3.12.5.5.1.1 Request Body

None.

<a id="Section_3.12.5.5.1.2"></a>
###### 3.12.5.5.1.2 Response Body

None.

<a id="Section_3.12.5.5.1.3"></a>
###### 3.12.5.5.1.3 Processing Details

This call creates a shared folder on the specific server.

<a id="Section_3.12.5.6"></a>
#### 3.12.5.6 serverfolder/{id}/delete/deletecontents/{deletecontents}

Removes or ends the sharing of a shared folder managed by the server.

**id:** The identifier for the shared folder. See section [2.2.3.17](#Section_2.2.3.17).

**deletecontents:** A flag that indicates whether the contents of the shared folder are deleted when the folder is no longer shared. See section [2.2.3.6](#Section_2.2.3.6).

| HTTP method | Description |
| --- | --- |
| POST | Removes or ends the sharing of a shared folder managed by the server. |

<a id="Section_3.12.5.6.1"></a>
##### 3.12.5.6.1 POST

Removes or ends the sharing of a shared folder managed by the server.

This operation is transported by an HTTP POST.

The operation can be invoked through the following URI:

https://<ServerName>/services/builtin/StorageManagement.svc/serverfolder/{id}/delete/deletecontents/{deletecontents}

The request message for this operation contains the following HTTP headers.

| Request header | Usage | Value |
| --- | --- | --- |
| Canary | Optional | The user token. Client MUST either pass this header to the server or pass all of the following headers to the server. For more details, refer to section [2.2.2.5](#Section_2.2.2.5). |
| Authorization | Optional | The caller's credential is encoded text that is based on user name and password. For more details, refer to section [2.2.2.4](#Section_2.2.2.4). |
| AppName | Optional | The client application name. For more details, refer to section [2.2.2.1](#Section_2.2.2.1). |
| AppVersion | Optional | The client application version. For more details, refer to section [2.2.2.3](#Section_2.2.2.3). |
| AppPublisherName | Optional | The client application publisher name. For more details, refer to section [2.2.2.2](#Section_2.2.2.2). |

The response message for this operation can result in the following status codes.

| Status code | Description |
| --- | --- |
| 200 | Operation successfully completed. |
| 400 | One or more parameters are not valid. |
| 401 | Access to the requested resource is denied. This API only supports Administrator calls. |
| 404 | The specific resource does not exist. |

<a id="Section_3.12.5.6.1.1"></a>
###### 3.12.5.6.1.1 Request Body

None.

<a id="Section_3.12.5.6.1.2"></a>
###### 3.12.5.6.1.2 Response Body

None.

<a id="Section_3.12.5.6.1.3"></a>
###### 3.12.5.6.1.3 Processing Details

This call stops the sharing of a shared folder managed by the server, and can delete the contents of the folder.

<a id="Section_3.12.5.7"></a>
#### 3.12.5.7 serverfolder/{id}/rename?newname={newname}

Rename the specified shared folder that is managed by the server.

**id:** The identifier for the shared folder. See section [2.2.3.17](#Section_2.2.3.17).

**newname:** The new name of the shared folder. See section [2.2.3.26](#Section_2.2.3.26).

| HTTP method | Description |
| --- | --- |
| POST | Rename the specified shared folder that is managed by the server. |

<a id="Section_3.12.5.7.1"></a>
##### 3.12.5.7.1 POST

Rename the specified shared folder that is managed by the server.

This operation is transported by an HTTP POST.

The operation can be invoked through the following URI:

https://<ServerName>/services/builtin/StorageManagement.svc/serverfolder/{id}/rename?newname={newname}

The request message for this operation contains the following HTTP headers.

| Request header | Usage | Value |
| --- | --- | --- |
| Canary | Optional | The user token. Client MUST either pass this header to the server or pass all of the following headers to the server. For more details, refer to section [2.2.2.5](#Section_2.2.2.5). |
| Authorization | Optional | The caller's credential is encoded text that is based on user name and password. For more details, refer to section [2.2.2.4](#Section_2.2.2.4). |
| AppName | Optional | The client application name. For more details, refer to section [2.2.2.1](#Section_2.2.2.1). |
| AppVersion | Optional | The client application version. For more details, refer to section [2.2.2.3](#Section_2.2.2.3). |
| AppPublisherName | Optional | The client application publisher name. For more details, refer to section [2.2.2.2](#Section_2.2.2.2). |

The response message for this operation can result in the following status codes.

| Status code | Description |
| --- | --- |
| 200 | Operation successfully completed. |
| 400 | One or more parameters are not valid. |
| 401 | Access to the requested resource is denied. This API only supports Administrator calls. |
| 404 | The specific resource does not exist. |
| 409 | The shared folder with new name has existed. |

<a id="Section_3.12.5.7.1.1"></a>
###### 3.12.5.7.1.1 Request Body

None.

<a id="Section_3.12.5.7.1.2"></a>
###### 3.12.5.7.1.2 Response Body

None.

<a id="Section_3.12.5.7.1.3"></a>
###### 3.12.5.7.1.3 Processing Details

This call renames the shared folder.

<a id="Section_3.12.5.8"></a>
#### 3.12.5.8 serverfolder/{id}/modify/permission/{permission}?username={username}&name={name}&description={description}

Modifies the access permissions of a user on a shared folder by specifying a user name.

**id:** The identifier for the shared folder. See section [2.2.3.17](#Section_2.2.3.17).

**username:** The logon name of a user need set access permission. See section [2.2.3.51](#Section_2.2.3.51).

**permission:** The permission level of specific user. See section [2.2.3.33](#Section_2.2.3.33).

**name:** The name of the shared folder. See section [2.2.3.25](#Section_2.2.3.25).

**description:** The description of the shared folder. See section [2.2.3.7](#Section_2.2.3.7).

| HTTP method | Description |
| --- | --- |
| POST | Modifies the access permissions of a user on a shared folder by specifying a user name. |

<a id="Section_3.12.5.8.1"></a>
##### 3.12.5.8.1 POST

Modifies the access permissions of a user on a shared folder by specifying a user name.

This operation is transported by an HTTP **POST**.

The operation can be invoked through the following URI:

https://<ServerName>/services/builtin/StorageManagement.svc/serverfolder/{id}/modify/permission/{permission}?username={username}&name={name}&description={description}

The request message for this operation contains the following HTTP headers.

| Request header | Usage | Value |
| --- | --- | --- |
| Canary | Optional | The user token. Client MUST either pass this header to the server or pass all of the following headers to the server. For more details, refer to section [2.2.2.5](#Section_2.2.2.5). |
| Authorization | Optional | The caller's credential is encoded text that is based on user name and password. For more details, refer to section [2.2.2.4](#Section_2.2.2.4). |
| AppName | Optional | The client application name. For more details, refer to section [2.2.2.1](#Section_2.2.2.1). |
| AppVersion | Optional | The client application version. For more details, refer to section [2.2.2.3](#Section_2.2.2.3). |
| AppPublisherName | Optional | The client application publisher name. For more details, refer to section [2.2.2.2](#Section_2.2.2.2). |

The response message for this operation can result in the following status codes.

| Status code | Description |
| --- | --- |
| 200 | Operation successfully completed. |
| 400 | Operation successfully completed. |
| 401 | Access to the requested resource is denied. This API only supports Administrator calls. |
| 404 | The specific resource does not exist. |

<a id="Section_3.12.5.8.1.1"></a>
###### 3.12.5.8.1.1 Request Body

None.

<a id="Section_3.12.5.8.1.2"></a>
###### 3.12.5.8.1.2 Response Body

None.

<a id="Section_3.12.5.8.1.3"></a>
###### 3.12.5.8.1.3 Processing Details

This call modifies the user access permission on the specific shared folder.

The user access permission MAY also be affected by access permission settings of the user group.

<a id="Section_3.12.5.9"></a>
#### 3.12.5.9 serverfolder/{id}/modify/usersid/{usersid}/permission/{permission}?name={name}&description={description}

Modifies the access permissions of a user on a shared folder by specifying a security identifier.

**id:** The identifier for the shared folder. See section [2.2.3.17](#Section_2.2.3.17).

**usersid:** The security identifier (SID) of a user. See section [2.2.3.52](#Section_2.2.3.52).

**permission:** The permission level of specific user. See section [2.2.3.33](#Section_2.2.3.33).

**name:** The name of the shared folder. See section [2.2.3.25](#Section_2.2.3.25).

**description:** The description of the shared folder. See section [2.2.3.7](#Section_2.2.3.7).

| HTTP method | Description |
| --- | --- |
| POST | Modifies the access permissions of a user on a shared folder by specifying a security identifier. |

<a id="Section_3.12.5.9.1"></a>
##### 3.12.5.9.1 POST

Modifies the access permissions of a user on a shared folder by specifying a security identifier.

This operation is transported by an HTTP **POST**.

The operation can be invoked through the following URI:

https://<ServerName>/services/builtin/StorageManagement.svc/serverfolder/{id}/modify/usersid/{usersid}/permission/{permission}?name={name}&description={description}

The request message for this operation contains the following HTTP headers.

| Request header | Usage | Value |
| --- | --- | --- |
| Canary | Optional | The user token. Client MUST either pass this header to the server or pass all of the following headers to the server. For more details, refer to section [2.2.2.5](#Section_2.2.2.5). |
| Authorization | Optional | The caller's credential is encoded text that is based on user name and password. For more details, refer to section [2.2.2.4](#Section_2.2.2.4). |
| AppName | Optional | The client application name. For more details, refer to section [2.2.2.1](#Section_2.2.2.1). |
| AppVersion | Optional | The client application version. For more details, refer to section [2.2.2.3](#Section_2.2.2.3) |
| AppPublisherName | Optional | The client application publisher name. For more details, refer to section [2.2.2.2](#Section_2.2.2.2). |

The response message for this operation can result in the following status codes.

| Status code | Description |
| --- | --- |
| 200 | Operation successfully completed. |
| 400 | One or more parameters are not valid. |
| 401 | Access to the requested resource is denied. This API only supports Administrator calls. |
| 404 | The specific resource does not exist. |

<a id="Section_3.12.5.9.1.1"></a>
###### 3.12.5.9.1.1 Request Body

None.

<a id="Section_3.12.5.9.1.2"></a>
###### 3.12.5.9.1.2 Response Body

None.

<a id="Section_3.12.5.9.1.3"></a>
###### 3.12.5.9.1.3 Processing Details

This call modifies the user access permission on the specific shared folder.

The user access permission MAY also be affected by access permission settings of the user group.

<a id="Section_3.12.6"></a>
### 3.12.6 Timer Events

None.

<a id="Section_3.12.7"></a>
### 3.12.7 Other Local Events

None.

<a id="Section_3.13"></a>
## 3.13 IUserManagement Server Details

<a id="Section_3.13.1"></a>
### 3.13.1 Abstract Data Model

This section describes a conceptual service contract that an implementation maintains to participate in this protocol. The described operations of the service contract are provided to facilitate the explanation of how the protocol behaves. This document does not mandate that implementations adhere to this service contract as long as their external behavior is consistent with how it is described in this document.

<a id="Section_3.13.1.1"></a>
#### 3.13.1.1 UserInfo

The UserInfo represents the information of a user.

The UserInfo data model has a full complex type defined in section [2.2.4.71](#Section_2.2.4.71).

<a id="Section_3.13.2"></a>
### 3.13.2 Timers

None.

<a id="Section_3.13.3"></a>
### 3.13.3 Initialization

None.

<a id="Section_3.13.4"></a>
### 3.13.4 Higher-Layer Triggered Events

None.

<a id="Section_3.13.5"></a>
### 3.13.5 Message Processing Events and Sequencing Rules

| Resource | Description |
| --- | --- |
| users/index/{startingindex}/count/{amount} | Retrieves a list of users that have been created on the server. |
| usergroups | Retrieves a list of groups that have been created on the server. |
| users/connection/index/{startingindex}/count/{amount}?username={username} | Retrieves the connection information for a specific user. |
| user/{userid}/enable | Activates a user based on a specified security identifier. |
| user/{userid}/disable | Deactivates a user in the domain. |
| user/setpassword/{userid} | Changes the password of a domain user. |
| user/{id}/update?firstname={firstname}&lastname={lastname}&remotewebaccess={remotewebaccess}&vpnaccess={vpnaccess} | Updates user information and permissions. |
| usergroup/{groupguid}/addusers | Add users to a specific group. |
| usergroup/{groupguid}/removeusers | Removes users from a specific group. |
| user/add?username={username}&firstname={firstname}&lastname={lastname}&remotewebaccess={remotewebaccess}&vpnaccess={vpnaccess}&usergroups={usergroups} | Creates a new standard user on the domain. |
| user/{id}/delete | Removes a standard user. |

The responses to all the operations can result in the following status codes.

| Status code | Reason phrase | Description |
| --- | --- | --- |
| 200 | OK | Operation successfully completed. |
| 400 | Bad Request | One or more parameters are not valid. |
| 401 | Unauthorized | Access to the requested resource is denied. |
| 404 | Not Found | The specific resource does not exist. |
| 403 | Forbidden | Operation is forbidden. |

<a id="Section_3.13.5.1"></a>
#### 3.13.5.1 users/index/{startingindex}/count/{amount}

Retrieves a list of users that have been created on the server's Active Directory.

**startingindex:** The numerical position of the first user to be retrieved. See section [2.2.3.45](#Section_2.2.3.45).

**amount:** The number of users to be retrieved. See section [2.2.3.2](#Section_2.2.3.2).

| HTTP method | Description |
| --- | --- |
| GET | Retrieves a list of users that have been created on the Active Directory. |

<a id="Section_3.13.5.1.1"></a>
##### 3.13.5.1.1 GET

Retrieves a list of users that have been created on the AD DS server.

This operation is transported by an HTTP GET.

The operation can be invoked through the following URI:

https://<ServerName>/services/builtin/UserManagement.svc/users/index/{startingindex}/count/{amount}

The request message for this operation contains the following HTTP headers.

| Request header | Usage | Value |
| --- | --- | --- |
| Canary | Optional | The user token. Client MUST either pass this header to the server or pass all of the following headers to the server. For more details, refer to section [2.2.2.5](#Section_2.2.2.5). |
| Authorization | Optional | The caller's credential is encoded text that is based on user name and password. For more details, refer to section [2.2.2.4](#Section_2.2.2.4). |
| AppName | Optional | The client application name. For more details, refer to section [2.2.2.1](#Section_2.2.2.1). |
| AppVersion | Optional | The client application version. For more details, refer to section [2.2.2.3](#Section_2.2.2.3). |
| AppPublisherName | Optional | The client application publisher name. For more details, refer to section [2.2.2.2](#Section_2.2.2.2). |

The response message for this operation can result in the following status codes.

| Status code | Description |
| --- | --- |
| 200 | Operation successfully completed. |
| 400 | One or more parameters are not valid. |
| 401 | Access to the requested resource is denied. This API only supports Administrator calls. |

For more detail on the UserInfo type, please see section [2.2.4.71](#Section_2.2.4.71).

<a id="Section_3.13.5.1.1.1"></a>
###### 3.13.5.1.1.1 Request Body

None.

<a id="Section_3.13.5.1.1.2"></a>
###### 3.13.5.1.1.2 Response Body

The response body is encoded in either XML or JSON format. The format is controlled by the Accept header defined in section [2.2.2.6](#Section_2.2.2.6).

<xs:element name="PartialCollection_Of_UserInfo" nillable="true" type="tns1:PartialCollection_Of_UserInfo"/>

<a id="Section_3.13.5.1.1.3"></a>
###### 3.13.5.1.1.3 Processing Details

This call returns the information of users that were created on the AD DS server. See section [2.2.4.71](#Section_2.2.4.71).

The server MUST construct a response in either XML or JSON format based on the value of the Accept header (section [2.2.2.6](#Section_2.2.2.6)), or in XML format if the Accept header is not present.

<a id="Section_3.13.5.2"></a>
#### 3.13.5.2 usergroups

Retrieves a list of groups that have been created on the server's Active Directory.

| HTTP method | Description |
| --- | --- |
| GET | Retrieves a list of groups that have been created on the server. |

<a id="Section_3.13.5.2.1"></a>
##### 3.13.5.2.1 GET

Retrieves a list of groups that have been created on the server.

This operation is transported by an HTTP **GET**.

The operation can be invoked through the following URI:

https://<ServerName>/services/builtin/UserManagement.svc/usergroups

The request message for this operation contains the following HTTP headers.

| Request header | Usage | Value |
| --- | --- | --- |
| Canary | Optional | The user token. Client MUST either pass this header to the server or pass all of the following headers to the server. For more details, refer to section [2.2.2.5](#Section_2.2.2.5). |
| Authorization | Optional | The caller's credential is encoded text that is based on user name and password. For more details, refer to section [2.2.2.4](#Section_2.2.2.4). |
| AppName | Optional | The client application name. For more details, refer to section [2.2.2.1](#Section_2.2.2.1). |
| AppVersion | Optional | The client application version. For more details, refer to section [2.2.2.3](#Section_2.2.2.3). |
| AppPublisherName | Optional | The client application publisher name. For more details, refer to section [2.2.2.2](#Section_2.2.2.2). |

The response message for this operation can result in the following status codes.

| Status code | Description |
| --- | --- |
| 200 | Operation successfully completed. |
| 401 | Access to the requested resource is denied. This API only supports Administrator calls. |

<a id="Section_3.13.5.2.1.1"></a>
###### 3.13.5.2.1.1 Request Body

None.

<a id="Section_3.13.5.2.1.2"></a>
###### 3.13.5.2.1.2 Response Body

The response body is encoded in XML format.

<xs:element name="ReadOnlyCollectionOfGroupInfoEV6sb80H" nillable="true" xmlns:q13="http://schemas.datacontract.org/2004/07/System.Collections.ObjectModel" type="q13:ReadOnlyCollectionOfGroupInfoEV6sb80H"/>

<a id="Section_3.13.5.2.1.3"></a>
###### 3.13.5.2.1.3 Processing Details

This call returns the information about groups created on the AD DS server. See section [2.2.4.31](#Section_2.2.4.31).

The server MUST construct a response in either XML or JSON format based on the value of the Accept header (section [2.2.2.6](#Section_2.2.2.6)), or in XML format if the Accept header is not present.

<a id="Section_3.13.5.3"></a>
#### 3.13.5.3 users/connection/index/{startingindex}/count/{amount}?username={username}

Retrieves the connection information related to a specific user.

**startingindex:** The numerical position of the first user to be retrieved. See section [2.2.3.45](#Section_2.2.3.45).

**amount:** The number of items to be retrieved. See section [2.2.3.2](#Section_2.2.3.2).

**username:** The user name of a specific user. It is an optional parameter; if the caller doesn’t specify this parameter, the API returns all of the user's connection information.

| HTTP method | Description |
| --- | --- |
| GET | Retrieves the connection information related to a specific user. |

<a id="Section_3.13.5.3.1"></a>
##### 3.13.5.3.1 GET

Retrieves the connection information related to a specific user.

This operation is transported by an HTTP GET.

The operation can be invoked through the following URI:

https://<ServerName>/services/builtin/UserManagement.svc/users/connection/index/{startingindex}/count/{amount}?username={username}

The request message for this operation contains the following HTTP headers.

| Request header | Usage | Value |
| --- | --- | --- |
| Canary | Optional | The user token. Client MUST either pass this header to the server or pass all of the following headers to the server. For more details, refer to section [2.2.2.5](#Section_2.2.2.5). |
| Authorization | Optional | The caller's credential is encoded text that is based on user name and password. For more details, refer to section [2.2.2.4](#Section_2.2.2.4). |
| AppName | Optional | The client application name. For more details, refer to section [2.2.2.1](#Section_2.2.2.1). |
| AppVersion | Optional | The client application version. For more details, refer to section [2.2.2.3](#Section_2.2.2.3). |
| AppPublisherName | Optional | The client application publisher name. For more details, refer to section [2.2.2.2](#Section_2.2.2.2). |

The response message for this operation can result in the following status codes.

| Status code | Description |
| --- | --- |
| 200 | Operation successfully completed. |
| 400 | One or more parameters are not valid. |
| 401 | Access to the requested resource is denied. This API only supports Administrator calls. |
| 404 | The specific resource does not exist. |

<a id="Section_3.13.5.3.1.1"></a>
###### 3.13.5.3.1.1 Request Body

None.

<a id="Section_3.13.5.3.1.2"></a>
###### 3.13.5.3.1.2 Response Body

The response body is encoded in either XML or JSON format. The format is controlled by the Accept header defined in section [2.2.2.6](#Section_2.2.2.6).

<xs:element name="PartialCollection_Of_ConnectionInfo" nillable="true" type="tns1:PartialCollection_Of_ConnectionInfo"/>

<a id="Section_3.13.5.3.1.3"></a>
###### 3.13.5.3.1.3 Processing Details

This call returns the connection information of a specific user. See section [2.2.4.26](#Section_2.2.4.26).

The server MUST construct a response in either XML or JSON format based on the value of the Accept header (section [2.2.2.6](#Section_2.2.2.6)), or in XML format if the Accept header is not present.

<a id="Section_3.13.5.4"></a>
#### 3.13.5.4 user/{userid}/enable

Activates a user based on a specified security identifier.

**userid:** The ID of the user; it is recommended to be the [**security identifier**](#gt_security-identifier-sid) of the user. See section [2.2.3.50](#Section_2.2.3.50).

| HTTP method | Description |
| --- | --- |
| POST | Activates a user based on a specified security identifier. |

<a id="Section_3.13.5.4.1"></a>
##### 3.13.5.4.1 POST

Activates a user based on a specified security identifier.

This operation is transported by an HTTP POST.

The operation can be invoked through the following URI:

https://<ServerName>/services/builtin/UserManagement.svc/user/{userid}/enable

The request message for this operation contains the following HTTP headers.

| Request header | Usage | Value |
| --- | --- | --- |
| Canary | Optional | The user token. Client MUST either pass this header to the server or pass all of the following headers to the server. For more details, refer to section [2.2.2.5](#Section_2.2.2.5). |
| Authorization | Optional | The caller's credential is encoded text that is based on user name and password. For more details, refer to section [2.2.2.4](#Section_2.2.2.4). |
| AppName | Optional | The client application name. For more details, refer to section [2.2.2.1](#Section_2.2.2.1). |
| AppVersion | Optional | The client application version. For more details, refer to section [2.2.2.3](#Section_2.2.2.3). |
| AppPublisherName | Optional | The client application publisher name. For more details, refer to section [2.2.2.2](#Section_2.2.2.2). |

The response message for this operation can result in the following status codes.

| Status code | Description |
| --- | --- |
| 200 | Operation successfully completed. |
| 400 | One or more parameters are not valid. |
| 401 | Access to the requested resource is denied. This API only supports Administrator calls. |
| 404 | The specific resource does not exist. |

<a id="Section_3.13.5.4.1.1"></a>
###### 3.13.5.4.1.1 Request Body

None.

<a id="Section_3.13.5.4.1.2"></a>
###### 3.13.5.4.1.2 Response Body

None.

<a id="Section_3.13.5.4.1.3"></a>
###### 3.13.5.4.1.3 Processing Details

This call actives the user specified by userid.

<a id="Section_3.13.5.5"></a>
#### 3.13.5.5 user/{userid}/disable

Deactivates a user in the domain.

**userid:** The [**SID**](#gt_security-identifier-sid) of the user. See section [2.2.3.50](#Section_2.2.3.50).

| HTTP method | Description |
| --- | --- |
| POST | Deactivates a user in the domain. |

<a id="Section_3.13.5.5.1"></a>
##### 3.13.5.5.1 POST

Deactivates a user in the domain.

This operation is transported by an HTTP POST.

The operation can be invoked through the following URI:

https://<ServerName>/services/builtin/UserManagement.svc/user/{userid}/disable

The request message for this operation contains the following HTTP headers.

| Request header | Usage | Value |
| --- | --- | --- |
| Canary | Optional | The user token. Client MUST either pass this header to the server or pass all of the following headers to the server. For more details, refer to section [2.2.2.5](#Section_2.2.2.5). |
| Authorization | Optional | The caller's credential is encoded text that is based on user name and password. For more details, refer to section [2.2.2.4](#Section_2.2.2.4). |
| AppName | Optional | The client application name. For more details, refer to section [2.2.2.1](#Section_2.2.2.1). |
| AppVersion | Optional | The client application version. For more details, refer to section [2.2.2.3](#Section_2.2.2.3). |
| AppPublisherName | Optional | The client application publisher name. For more details, refer to section [2.2.2.2](#Section_2.2.2.2). |

The response message for this operation can result in the following status codes.

| Status code | Description |
| --- | --- |
| 200 | Operation successfully completed. |
| 400 | One or more parameters are not valid. |
| 401 | Access to the requested resource is denied. This API only supports Administrator calls. |
| 404 | The specific resource does not exist. |

<a id="Section_3.13.5.5.1.1"></a>
###### 3.13.5.5.1.1 Request Body

None.

<a id="Section_3.13.5.5.1.2"></a>
###### 3.13.5.5.1.2 Response Body

None.

<a id="Section_3.13.5.5.1.3"></a>
###### 3.13.5.5.1.3 Processing Details

This call disables the user specified by the user ID (userid).

<a id="Section_3.13.5.6"></a>
#### 3.13.5.6 user/setpassword/{userid}

Changes the password of a domain user.

**userid:** The ID of the user; it is recommended to be the security identifier of the user. See section [2.2.3.50](#Section_2.2.3.50).

| HTTP method | Description |
| --- | --- |
| POST | Changes the password of a domain user. |

<a id="Section_3.13.5.6.1"></a>
##### 3.13.5.6.1 POST

Changes the password of a domain user.

This operation is transported by an HTTP **POST.**

The operation can be invoked through the following URI:

https://<ServerName>/services/builtin/UserManagement.svc/user/setpassword/{userid}

The request message for this operation contains the following HTTP headers.

| Request header | Usage | Value |
| --- | --- | --- |
| Canary | Optional | The user token. Client MUST either pass this header to the server or pass all of the following headers to the server. For more details, refer to section [2.2.2.5](#Section_2.2.2.5). |
| Authorization | Optional | The caller's credential is encoded text that is based on user name and password. For more details, refer to section [2.2.2.4](#Section_2.2.2.4). |
| AppName | Optional | The client application name. For more details, refer to section [2.2.2.1](#Section_2.2.2.1). |
| AppVersion | Optional | The client application version. For more details, refer to section [2.2.2.3](#Section_2.2.2.3). |
| AppPublisherName | Optional | The client application publisher name. For more details, refer to section [2.2.2.2](#Section_2.2.2.2). |

The response message for this operation can result in the following status codes.

| Status code | Description |
| --- | --- |
| 200 | Operation successfully completed. |
| 400 | One or more parameters are not valid. |
| 401 | Access to the requested resource is denied. This API only supports Administrator calls. |
| 404 | The specific resource does not exist. |

<a id="Section_3.13.5.6.1.1"></a>
###### 3.13.5.6.1.1 Request Body

The request body is encoded in XML format or JSON format based on the value of the Accept header (section [2.2.2.6](#Section_2.2.2.6)), or in XML format if the Accept header is not present.

<a id="Section_3.13.5.6.1.2"></a>
###### 3.13.5.6.1.2 Response Body

None.

<a id="Section_3.13.5.6.1.3"></a>
###### 3.13.5.6.1.3 Processing Details

This call changes the password of the user specified by the user ID (userid).

The new password MUST be specified in the body of the request, in the text of the string element.

<a id="Section_3.13.5.7"></a>
#### 3.13.5.7 user/{id}/update?firstname={firstname}&lastname={lastname}&remotewebaccess={remotewebaccess}&vpnaccess={vpnaccess}

Updates user information and permissions.

**id:** The [**SID**](#gt_security-identifier-sid) of a user. See section [2.2.3.17](#Section_2.2.3.17).

**firstname:** The first name of the user. See section [2.2.3.12](#Section_2.2.3.12).

**lastname:** The last name of the user. See section [2.2.3.22](#Section_2.2.3.22).

**remotewebaccess:** A flag indicates whether the user has remote web access permission. See section [2.2.3.35](#Section_2.2.3.35).

**vpnaccess:** A flag indicates whether the user has vpn access permission. See section [2.2.3.53](#Section_2.2.3.53).

| HTTP method | Description |
| --- | --- |
| POST | Updates user information and permissions. |

<a id="Section_3.13.5.7.1"></a>
##### 3.13.5.7.1 POST

This operation updates user information and permissions. It is transported by an HTTP POST.

The operation can be invoked through the following URI:

https://<ServerName>/services/builtin/UserManagement.svc/user/{id}/update?firstname={firstname}&lastname={lastname}&remotewebaccess={remotewebaccess}&vpnaccess={vpnaccess}

The request message for this operation contains the following HTTP headers.

| Request header | Usage | Value |
| --- | --- | --- |
| Canary | Optional | The user token. Client MUST either pass this header to the server or pass all of the following headers to the server. For more details, refer to section [2.2.2.5](#Section_2.2.2.5). |
| Authorization | Optional | The caller's credential is encoded text that is based on user name and password. For more details, refer to section [2.2.2.4](#Section_2.2.2.4). |
| AppName | Optional | The client application name. For more details, refer to section [2.2.2.1](#Section_2.2.2.1). |
| AppVersion | Optional | The client application version. For more details, refer to section [2.2.2.3](#Section_2.2.2.3). |
| AppPublisherName | Optional | The client application publisher name. For more details, refer to section [2.2.2.2](#Section_2.2.2.2). |

The response message for this operation can result in the following status codes.

| Status code | Description |
| --- | --- |
| 200 | Operation successfully completed. |
| 400 | One or more parameters are not valid. |
| 401 | Access to the requested resource is denied. This API only supports Administrator calls. |
| 404 | The specific resource does not exist. |

<a id="Section_3.13.5.7.1.1"></a>
###### 3.13.5.7.1.1 Request Body

None.

<a id="Section_3.13.5.7.1.2"></a>
###### 3.13.5.7.1.2 Response Body

None.

<a id="Section_3.13.5.7.1.3"></a>
###### 3.13.5.7.1.3 Processing Details

This call updates the specified user information and permissions.

<a id="Section_3.13.5.8"></a>
#### 3.13.5.8 usergroup/{groupguid}/addusers

Adds users to the specified user group.

**groupguid:** The [**GUID**](#gt_globally-unique-identifier-guid) of the group. See section [2.2.3.13](#Section_2.2.3.13).

| HTTP method | Description |
| --- | --- |
| POST | Adds users to the specified user group. |

<a id="Section_3.13.5.8.1"></a>
##### 3.13.5.8.1 POST

Adds users to the specified user group.

This operation is transported by an HTTP POST.

The operation can be invoked through the following URI:

https://<ServerName>/services/builtin/UserManagement.svc/usergroup/{groupguid}/addusers

The request message for this operation contains the following HTTP headers.

| Request header | Usage | Value |
| --- | --- | --- |
| Canary | Optional | The user token. Client MUST either pass this header to the server or pass all of the following headers to the server. For more details, refer to section [2.2.2.5](#Section_2.2.2.5). |
| Authorization | Optional | The caller's credential is encoded text that is based on user name and password. For more details, refer to section [2.2.2.4](#Section_2.2.2.4). |
| AppName | Optional | The client application name. For more details, refer to section [2.2.2.1](#Section_2.2.2.1). |
| AppVersion | Optional | The client application version. For more details, refer to section [2.2.2.3](#Section_2.2.2.3). |
| AppPublisherName | Optional | The client application publisher name. For more details, refer to section [2.2.2.2](#Section_2.2.2.2). |

The response message for this operation can result in the following status codes.

| Status code | Description |
| --- | --- |
| 200 | Operation successfully completed. |
| 400 | One or more parameters are not valid. |
| 401 | Access to the requested resource is denied. This API only supports Administrator calls. |
| 404 | The specific resource does not exist. |

<a id="Section_3.13.5.8.1.1"></a>
###### 3.13.5.8.1.1 Request Body

The request body is encoded in XML format or JSON format based on the value of the Accept header (section [2.2.2.6](#Section_2.2.2.6)), or in XML format if the Accept header is not present.

<a id="Section_3.13.5.8.1.2"></a>
###### 3.13.5.8.1.2 Response Body

None.

<a id="Section_3.13.5.8.1.3"></a>
###### 3.13.5.8.1.3 Processing Details

This call will add the users specified by the GUIDs in the request body to the group specified by GroupGuid.

<a id="Section_3.13.5.9"></a>
#### 3.13.5.9 usergroup/{groupguid}/removeusers

Removes users from the specified user group.

**groupguid:** The [**GUID**](#gt_globally-unique-identifier-guid) of the group. See section [2.2.3.13](#Section_2.2.3.13).

| HTTP method | Description |
| --- | --- |
| POST | Removes users from the specified user group. |

<a id="Section_3.13.5.9.1"></a>
##### 3.13.5.9.1 POST

Removes users from the specified user group.

This operation is transported by an HTTP POST.

The operation can be invoked through the following URI:

https://<ServerName>/services/builtin/UserManagement.svc/usergroup/{groupguid}/removeusers

The request message for this operation contains the following HTTP headers.

| Request header | Usage | Value |
| --- | --- | --- |
| Canary | Optional | The user token. Client MUST either pass this header to the server or pass all of the following headers to the server. For more details, refer to section [2.2.2.5](#Section_2.2.2.5). |
| Authorization | Optional | The caller's credential is encoded text that is based on user name and password. For more details, refer to section [2.2.2.4](#Section_2.2.2.4). |
| AppName | Optional | The client application name. For more details, refer to section [2.2.2.1](#Section_2.2.2.1). |
| AppVersion | Optional | The client application version. For more details, refer to section [2.2.2.3](#Section_2.2.2.3). |
| AppPublisherName | Optional | The client application publisher name. For more details, refer to section [2.2.2.2](#Section_2.2.2.2). |

The response message for this operation can result in the following status codes.

| Status code | Description |
| --- | --- |
| 200 | Operation successfully completed. |
| 400 | One or more parameters are not valid. |
| 401 | Access to the requested resource is denied. This API only supports Administrator calls. |
| 404 | The specific resource does not exist. |

<a id="Section_3.13.5.9.1.1"></a>
###### 3.13.5.9.1.1 Request Body

The request body is encoded in XML format or JSON format based on the value of the Accept header (section [2.2.2.6](#Section_2.2.2.6)), or in XML format if the Accept header is not present.

<a id="Section_3.13.5.9.1.2"></a>
###### 3.13.5.9.1.2 Response Body

None.

<a id="Section_3.13.5.9.1.3"></a>
###### 3.13.5.9.1.3 Processing Details

This call removes the users specified by the GUIDs in the request body from the group specified by GroupGuid.

<a id="Section_3.13.5.10"></a>
#### 3.13.5.10 user/add?username={username}&firstname={firstname}&lastname={lastname}&remotewebaccess={remotewebaccess}&vpnaccess={vpnaccess}&usergroups={usergroups}

Creates a new standard user on the domain.

**username:** The name of the user. It SHOULD be the logon name of the user. See section [2.2.3.51](#Section_2.2.3.51).

**firstname:** The first name of the user. See section [2.2.3.12](#Section_2.2.3.12).

**lastname:** The last name of the user. See section [2.2.3.22](#Section_2.2.3.22).

**remotewebaccess:** A flag indicating whether the user has remote web access permission. See section [2.2.3.35](#Section_2.2.3.35).

**vpnaccess:** A flag indicating whether the user has vpn access permission. See section [2.2.3.53](#Section_2.2.3.53).

**usergroups:** A comma-separated list of group GUIDs. It is an optional parameter<13>. See section [2.2.3.49](#Section_2.2.3.49).

| HTTP method | Description |
| --- | --- |
| POST | Creates a new standard user on the domain. |

<a id="Section_3.13.5.10.1"></a>
##### 3.13.5.10.1 POST

Creates a new standard user on the domain.

This operation is transported by an HTTP POST**.**

The operation can be invoked through the following URI:

https://<ServerName>/services/builtin/UserManagement.svc/user/add?username={username}&firstname={firstname}&lastname={lastname}&remotewebaccess={remotewebaccess}&vpnaccess={vpnaccess}&usergroups={usergroups}

The request message for this operation contains the following HTTP headers.

| Request header | Usage | Value |
| --- | --- | --- |
| Canary | Optional | The user token. Client MUST either pass this header to the server or pass all of the following headers to the server. For more details, refer to section [2.2.2.5](#Section_2.2.2.5). |
| Authorization | Optional | The caller's credential is encoded text that is based on user name and password. For more details, refer to section [2.2.2.4](#Section_2.2.2.4). |
| AppName | Optional | The client application name. For more details, refer to section [2.2.2.1](#Section_2.2.2.1). |
| AppVersion | Optional | The client application version. For more details, refer to section [2.2.2.3](#Section_2.2.2.3). |
| AppPublisherName | Optional | The client application publisher name. For more details, refer to section [2.2.2.2](#Section_2.2.2.2). |

The response message for this operation can result in the following status codes.

| Status code | Description |
| --- | --- |
| 200 | Operation successfully completed. |
| 400 | One or more parameters are not valid. |
| 401 | Access to the requested resource is denied. This API only supports Administrator calls. |
| 403 | A user with the requested name already exists. |
| 404 | The specific resource does not exist. |

<a id="Section_3.13.5.10.1.1"></a>
###### 3.13.5.10.1.1 Request Body

The request body is encoded in XML format or JSON format based on the value of the Accept header (section [2.2.2.6](#Section_2.2.2.6)), or in XML format if the Accept header is not present.

<a id="Section_3.13.5.10.1.2"></a>
###### 3.13.5.10.1.2 Response Body

None.

<a id="Section_3.13.5.10.1.3"></a>
###### 3.13.5.10.1.3 Processing Details

This call creates a standard user with specified user information and permission settings.

A user with domain administrator permission cannot be created with this method.

<a id="Section_3.13.5.11"></a>
#### 3.13.5.11 user/{id}/delete

Removes a standard user.

**id:** The [**security identifier (SID)**](#gt_security-identifier-sid) of a user.

| HTTP method | Description |
| --- | --- |
| POST | Removes a standard user. |

<a id="Section_3.13.5.11.1"></a>
##### 3.13.5.11.1 POST

This operation removes a standard user and is transported by an HTTP POST.

The operation can be invoked through the following URI:

https://<ServerName>/services/builtin/UserManagement.svc/user/{id}/delete

The request message for this operation contains the following HTTP headers.

| Request header | Usage | Value |
| --- | --- | --- |
| Canary | Optional | The user token. Client MUST either pass this header to the server or pass all of the following headers to the server. For more details, refer to section [2.2.2.5](#Section_2.2.2.5). |
| Authorization | Optional | The caller's credential is encoded text that is based on user name and password. For more details, refer to section [2.2.2.4](#Section_2.2.2.4). |
| AppName | Optional | The client application name. For more details, refer to section [2.2.2.1](#Section_2.2.2.1). |
| AppVersion | Optional | The client application version. For more details, refer to section [2.2.2.3](#Section_2.2.2.3). |
| AppPublisherName | Optional | The client application publisher name. For more details, refer to section [2.2.2.2](#Section_2.2.2.2). |

The response message for this operation can result in the following status codes.

| Status code | Description |
| --- | --- |
| 200 | Operation successfully completed. |
| 400 | One or more parameters are not valid. |
| 401 | Access to the requested resource is denied. This API only supports Administrator calls. |
| 404 | The specific resource does not exist. |

<a id="Section_3.13.5.11.1.1"></a>
###### 3.13.5.11.1.1 Request Body

None.

<a id="Section_3.13.5.11.1.2"></a>
###### 3.13.5.11.1.2 Response Body

None.

<a id="Section_3.13.5.11.1.3"></a>
###### 3.13.5.11.1.3 Processing Details

This call removes the user specified by id.

<a id="Section_3.13.6"></a>
### 3.13.6 Timer Events

None.

<a id="Section_3.13.7"></a>
### 3.13.7 Other Local Events

None.

<a id="Section_3.14"></a>
## 3.14 ISharePointSiteMgmt Server Details

<a id="Section_3.14.1"></a>
### 3.14.1 Abstract Data Model

None.

<a id="Section_3.14.2"></a>
### 3.14.2 Timers

None.

<a id="Section_3.14.3"></a>
### 3.14.3 Initialization

None.

<a id="Section_3.14.4"></a>
### 3.14.4 Higher-Layer Triggered Events

None.

<a id="Section_3.14.5"></a>
### 3.14.5 Message Processing Events and Sequencing Rules

| Resource | Description |
| --- | --- |
| site | Retrieves the team site and my site URI. |

<a id="Section_3.14.5.1"></a>
#### 3.14.5.1 site

| HTTP method | Description |
| --- | --- |
| GET | Retrieves the team site and my site URI. |

<a id="Section_3.14.5.1.1"></a>
##### 3.14.5.1.1 GET

Retrieves the team site and my site URI.

This operation is transported by an HTTP **GET**.

The operation can be invoked through the following URI:

https://<serverName>/services/builtin/SharePointSiteMgmt.svc/site

The request message for this operation contains the following HTTP headers.

| Request header | Usage | Value |
| --- | --- | --- |
| Canary | Optional | The user token. Client MUST either pass this header to the server or pass all of the following headers to the server. For more details, refer to section [2.2.2.5](#Section_2.2.2.5). |
| Authorization | Optional | The caller's credential is encoded text that is based on user name and password. For more details, refer to section [2.2.2.4](#Section_2.2.2.4). |
| AppName | Optional | The client application name. For more details, refer to section [2.2.2.1](#Section_2.2.2.1). |
| AppVersion | Optional | The client application version. For more details, refer to section [2.2.2.3](#Section_2.2.2.3). |
| AppPublisherName | Optional | The client application publisher name. For more details, refer to section [2.2.2.2](#Section_2.2.2.2). |

<a id="Section_3.14.5.1.1.1"></a>
###### 3.14.5.1.1.1 Request Body

The request body is encoded in XML format.

<a id="Section_3.14.5.1.1.2"></a>
###### 3.14.5.1.1.2 Response Body

The response body is encoded in XML format.

<xs:element name="SharePointSiteAddressCollection" nillable="true" xmlns:q14="http://schemas.datacontract.org/2004/07/Microsoft.WindowsServerSolutions.O365Integration" type="q14:SharePointSiteAddressCollection"/>

<a id="Section_3.14.5.1.1.3"></a>
###### 3.14.5.1.1.3 Processing Details

This call returns information about the SharePoint site. See section [2.2.4.68](#Section_2.2.4.68).

The server MUST construct a response in either XML or JSON format based on the value of the Accept header (section [2.2.2.6](#Section_2.2.2.6)), or in XML format if the Accept header is not present.

<a id="Section_3.14.6"></a>
### 3.14.6 Timer Events

None.

<a id="Section_3.14.7"></a>
### 3.14.7 Other Local Events

None.

<a id="Section_3.15"></a>
## 3.15 IWindowsPhoneManagement Server Details

<a id="Section_3.15.1"></a>
### 3.15.1 Abstract Data Model

None.

<a id="Section_3.15.2"></a>
### 3.15.2 Timers

None.

<a id="Section_3.15.3"></a>
### 3.15.3 Initialization

None.

<a id="Section_3.15.4"></a>
### 3.15.4 Higher-Layer Triggered Events

None.

<a id="Section_3.15.5"></a>
### 3.15.5 Message Processing Events and Sequencing Rules

| Resource | Description |
| --- | --- |
| /notification/subscribe?deviceid={deviceid} | Registers or updates registration for a device to receive Windows phone tile updates notifications. |
| /notification/unsubscribe?deviceid={deviceid} | Unsubscribes a device from Windows phone tile updates. |

The responses to all the operations can result in the following status codes.

| Status code | Reason phrase | Description |
| --- | --- | --- |
| 200 | OK | Operation successfully completed. |
| 400 | Bad Request | One or more parameters are not valid. |
| 401 | Unauthorized | Access to the requested resource is denied. |
| 404 | Not Found | The specific resource does not exist. |

<a id="Section_3.15.5.1"></a>
#### 3.15.5.1 /notification/subscribe?deviceid={deviceid}

Registers or updates the registration for a device to receive Windows Phone tile updates notifications.

**deviceid:** The ID of the device.

| HTTP method | Description |
| --- | --- |
| POST | Registers or updates the registration for a device to receive Windows Phone tile updates notifications. |

<a id="Section_3.15.5.1.1"></a>
##### 3.15.5.1.1 POST

Registers or updates the registration for a device to receive Windows Phone tile updates notifications.

This operation is transported by an HTTP **POST**.

The operation can be invoked through the following URI:

https://<ServerName>/services/builtin/WindowsPhoneManagement.svc/notification/subscribe?deviceid={deviceid}

The request message for this operation contains the following HTTP headers.

| Request header | Usage | Value |
| --- | --- | --- |
| Canary | Optional | The user token. Client MUST either pass this header to the server or pass all of the following headers to the server. For more details, refer to section [2.2.2.5](#Section_2.2.2.5). |
| Authorization | Optional | The caller's credential is encoded text that is based on user name and password. For more details, refer to section [2.2.2.4](#Section_2.2.2.4). |
| AppName | Optional | The client application name. For more details, refer to section [2.2.2.1](#Section_2.2.2.1). |
| AppVersion | Optional | The client application version. For more details, refer to section [2.2.2.3](#Section_2.2.2.3). |
| AppPublisherName | Optional | The client application publisher name. For more details, refer to section [2.2.2.2](#Section_2.2.2.2). |

The response message for this operation can result in the following status codes.

| Status code | Description |
| --- | --- |
| 200 | Operation successfully completed. |
| 400 | One or more parameters are not valid. |
| 401 | Access to the requested resource is denied. |

<a id="Section_3.15.5.1.1.1"></a>
###### 3.15.5.1.1.1 Request Body

The request body is encoded in XML format or JSON format based on the value of the Accept header (section [2.2.2.6](#Section_2.2.2.6)), or in XML format if the Accept header is not present.

The request content is the push notification channel URI obtained from the Microsoft Push Notification Service.

<a id="Section_3.15.5.1.1.2"></a>
###### 3.15.5.1.1.2 Response Body

None.

<a id="Section_3.15.5.1.1.3"></a>
###### 3.15.5.1.1.3 Processing Details

This call removes the user specified by the ID.

<a id="Section_3.15.5.2"></a>
#### 3.15.5.2 /notification/unsubscribe?deviceid={deviceid}

Unsubscribes a device from the Windows Phone tile updates.

**deviceid:** The ID of the device.

| HTTP method | Description |
| --- | --- |
| POST | Unsubscribes a device from Windows Phone tile updates. |

<a id="Section_3.15.5.2.1"></a>
##### 3.15.5.2.1 POST

Unsubscribes a device from Windows Phone tile updates.

This operation is transported by an HTTP POST.

The operation can be invoked through the following URI:

https://<ServerName>/services/builtin/WindowsPhoneManagement.svc/notification/unsubscribe?deviceid={deviceid}

The request message for this operation contains the following HTTP headers.

| Request header | Usage | Value |
| --- | --- | --- |
| Canary | Optional | The user token. Client MUST either pass this header to the server or pass all of the following headers to the server. For more details, refer to section [2.2.2.5](#Section_2.2.2.5). |
| Authorization | Optional | The caller's credential is encoded text that is based on user name and password. For more details, refer to section [2.2.2.4](#Section_2.2.2.4). |
| AppName | Optional | The client application name. For more details, refer to section [2.2.2.1](#Section_2.2.2.1). |
| AppVersion | Optional | The client application version. For more details, refer to section [2.2.2.3](#Section_2.2.2.3). |
| AppPublisherName | Optional | The client application publisher name. For more details, refer to section [2.2.2.2](#Section_2.2.2.2). |

The response message for this operation can result in the following status codes.

| Status code | Description |
| --- | --- |
| 200 | Operation successfully completed. |
| 400 | One or more parameters are not valid. |
| 401 | Access to the requested resource is denied. |
| 404 | The device specified by the device ID is not registered. |

<a id="Section_3.15.5.2.1.1"></a>
###### 3.15.5.2.1.1 Request Body

None.

<a id="Section_3.15.5.2.1.2"></a>
###### 3.15.5.2.1.2 Response Body

None.

<a id="Section_3.15.5.2.1.3"></a>
###### 3.15.5.2.1.3 Processing Details

This call unsubscribes a device from Windows Phone tile updates.

<a id="Section_3.15.6"></a>
### 3.15.6 Timer Events

None.

<a id="Section_3.15.7"></a>
### 3.15.7 Other Local Events

None.

<a id="Section_4"></a>
# 4 Protocol Examples

<a id="Section_4.1"></a>
## 4.1 Login

**Client Request:**

GET https://www.contoso.com/services/builtin/session.svc/login HTTP/1.1

User-Agent: Sample App Name/1.0.0.0

Accept: application/xml

AppName: Sample App Name

AppVersion: 1.0.0.0

AppPublisherName: Publisher

Authorization: Basic VXNlcjpQYXNzd29yZCE=

Host: domainName

**Server Response (XML):**

HTTP/1.1 200 OK

Cache-Control: no-cache

Server: Microsoft-IIS/8.5

Set-Cookie: ASP.NET_SessionId=hincf5pfrry4etux3rfe4n5k; path=/; HttpOnly

Canary: 7a10f945-91af-0597-14fd-a03bbdec2420

X-AspNet-Version: 4.0.30319

X-Powered-By: ASP.NET

X-Content-Type-Options: nosniff

Date: Fri, 14 Jun 2013 10:56:44 GMT

Content-Length: 0

<a id="Section_4.2"></a>
## 4.2 Get Server Information

**Client Request:**

GET https://www.contoso.com/services/builtin/servermanagement.svc/serverinformation HTTP/1.1

User-Agent: Sample App Name/1.0.0.0

Accept: application/xml

AppName: Sample App Name

AppVersion: 1.0.0.0

AppPublisherName: Publisher

Authorization: Basic VXNlcjpQYXNzd29yZCE=

Host: domainName

**Server Response (XML):**

HTTP/1.1 200 OK

Cache-Control: no-cache

Content-Length: 633

Content-Type: application/xml; charset=utf-8

Server: Microsoft-IIS/8.5

X-AspNet-Version: 4.0.30319

X-Powered-By: ASP.NET

X-Content-Type-Options: nosniff

Date: Fri, 14 Jun 2013 10:56:44 GMT

<ServerInfo xmlns="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" xmlns:i="http://www.w3.org/2001/XMLSchema-instance">

<IsMediaStreamingServiceAvailable>false</IsMediaStreamingServiceAvailable>

<IsTsGatewayEnabled>false</IsTsGatewayEnabled>

<ServerDomainGuid>82d53067-a76d-4d22-aa64-c8ff19fe22d3</ServerDomainGuid>

<ServerGuid>b82fde5b-4289-4a8f-913a-06e887a3c528</ServerGuid>

<ServerInternetDomainName>www.contoso.com</ServerInternetDomainName>

<ServerName>domainName</ServerName>

<ServerSku>50</ServerSku>

<ServerUtcNow>2013-12-02T03:09:57.3817387Z</ServerUtcNow>

<ServerVersion>6.3.9660.0</ServerVersion>

</ServerInfo>

<a id="Section_4.3"></a>
## 4.3 Get Server Folders

**Client Request:**

GET https://www.contoso.com/services/builtin/storagemanagement.svc/serverfolders/index/0/count/2147483647 HTTP/1.1

User-Agent: Sample App Name/1.0.0.0

Accept: application/xml

Canary: 7a10f945-91af-0597-14fd-a03bbdec2420

Host: domainName

Cookie: ASP.NET_SessionId=hincf5pfrry4etux3rfe4n5k

Host: domainName

**Server Response (XML):**

HTTP/1.1 200 OK

Cache-Control: no-cache

Content-Length: 1791

Content-Type: application/xml; charset=utf-8

Server: Microsoft-IIS/8.5

X-AspNet-Version: 4.0.30319

X-Powered-By: ASP.NET

X-Content-Type-Options: nosniff

Date: Fri, 14 Jun 2013 11:08:10 GMT

<PartialCollection_Of_FolderInfo xmlns="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" xmlns:i="http://www.w3.org/2001/XMLSchema-instance">

<CollectionChunk>

<FolderInfo>

<AccessPermission>Full</AccessPermission>

<CurrentStatus>Healthy</CurrentStatus>

<Description>Users</Description>

<DriveFreeSpace>96528044032</DriveFreeSpace>

<DriveID>75f98280-cbbf-409a-a2f1-dff1de8af145</DriveID>

<FolderType>UserType</FolderType>

<ID>6b2c4cd0-9a34-493f-939c-f7641491b4ee</ID>

<Name>Users</Name>

<Path>C:\ServerFolders\Users2</Path>

<SharePath>\\domainName\Shared Folders\Users</SharePath>

<Shared>true</Shared>

<UncPath>\\domainName\Users</UncPath>

</FolderInfo>

<FolderInfo>

<AccessPermission>Full</AccessPermission>

<CurrentStatus>Healthy</CurrentStatus>

<Description>Company</Description>

<DriveFreeSpace>96528044032</DriveFreeSpace>

<DriveID>75f98280-cbbf-409a-a2f1-dff1de8af145</DriveID>

<FolderType>CompanyType</FolderType>

<ID>3f2ff46c-031e-4ade-bdeb-e101e9c3d33a</ID>

<Name>Company</Name>

<Path>C:\ServerFolders\Company2</Path>

<SharePath>\\domainName\Shared Folders\Company</SharePath>

<Shared>true</Shared>

<UncPath>\\domainName\Company</UncPath>

</FolderInfo>

<FolderInfo>

<AccessPermission>Full</AccessPermission>

<CurrentStatus>Healthy</CurrentStatus>

<Description/>

<DriveFreeSpace>96538091520</DriveFreeSpace>

<DriveID>75f98280-cbbf-409a-a2f1-dff1de8af145</DriveID>

<FolderType>NonPredefinedType</FolderType>

<ID>084c36d8-dbaf-4ec0-945e-dcf6684bda96</ID>

<Name>Software</Name>

<Path>C:\ServerFolders\software</Path>

<SharePath>\\domainName\Shared Folders\software</SharePath>

<Shared>true</Shared>

<UncPath>\\domainName\software</UncPath>

</FolderInfo>

</CollectionChunk>

<CollectionModified>2013-12-01T19:24:17.12413-08:00</CollectionModified>

<CollectionSize>3</CollectionSize>

</PartialCollection_Of_FolderInfo>

<a id="Section_4.4"></a>
## 4.4 Retrieve the Metadata for Items within a Folder

**Client Request:**

GET https://www.contoso.com/services/builtin/fileoperationservice.svc/items/index/0/count/510?path=%5C%5CdomainName%5CCompany&filter=All&sortByField=Name&ascending=True HTTP/1.1

User-Agent: Sample App Name/1.0.0.0

Accept: application/xml

Canary: 7a10f945-91af-0597-14fd-a03bbdec2420

Host: domainName

Cookie: ASP.NET_SessionId=hincf5pfrry4etux3rfe4n5k

**Server Response (XML):**

HTTP/1.1 200 OK

Cache-Control: no-cache

Content-Length: 1173

Content-Type: application/xml; charset=utf-8

Server: Microsoft-IIS/8.5

X-AspNet-Version: 4.0.30319

X-Powered-By: ASP.NET

X-Content-Type-Options: nosniff

Date: Mon, 02 Dec 2013 03:46:55 GMT

<ItemList xmlns="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" xmlns:i="http://www.w3.org/2001/XMLSchema-instance">

<Items>

<ItemInfo>

<AccessPermission>Full</AccessPermission>

<CreateTime>2013-12-01T19:42:06.7225931-08:00</CreateTime>

<CreateTimeUtc>2013-12-02T03:42:06.7225931Z</CreateTimeUtc>

<IsDirectory>true</IsDirectory>

<ModifiedTime>2013-12-01T19:42:06.7225931-08:00</ModifiedTime>

<ModifiedTimeUtc>2013-12-02T03:42:06.7225931Z</ModifiedTimeUtc>

<Name>DesignDocuments</Name>

<Path>\\domainName\Company</Path>

<Size>0</Size>

</ItemInfo>

<ItemInfo>

<AccessPermission>Full</AccessPermission>

<CreateTime>2013-12-01T19:42:12.8161694-08:00</CreateTime>

<CreateTimeUtc>2013-12-02T03:42:12.8161694Z</CreateTimeUtc>

<IsDirectory>true</IsDirectory>

<ModifiedTime>2013-12-01T19:42:12.8161694-08:00</ModifiedTime>

<ModifiedTimeUtc>2013-12-02T03:42:12.8161694Z</ModifiedTimeUtc>

<Name>Specifications</Name>

<Path>\\domainName\Company</Path>

<Size>0</Size>

</ItemInfo>

<ItemInfo>

<AccessPermission>Full</AccessPermission>

<CreateTime>2013-12-01T19:43:57.2274112-08:00</CreateTime>

<CreateTimeUtc>2013-12-02T03:43:57.2274112Z</CreateTimeUtc>

<IsDirectory>false</IsDirectory>

<ModifiedTime>2013-11-20T01:06:45.980719-08:00</ModifiedTime>

<ModifiedTimeUtc>2013-11-20T09:06:45.980719Z</ModifiedTimeUtc>

<Name>MaterialsList.xls</Name>

<Path>\\DomainName\Company</Path>

<Size>74240</Size>

</ItemInfo>

<ItemInfo>

<AccessPermission>Full</AccessPermission>

<CreateTime>2013-12-01T19:43:08.8831761-08:00</CreateTime>

<CreateTimeUtc>2013-12-02T03:43:08.8831761Z</CreateTimeUtc>

<IsDirectory>false</IsDirectory>

<ModifiedTime>2013-11-20T00:43:35.967-08:00</ModifiedTime>

<ModifiedTimeUtc>2013-11-20T08:43:35.967Z</ModifiedTimeUtc>

<Name>ProductsIntroduction.pptx</Name>

<Path>\\domainName\Company</Path>

<Size>65803</Size>

</ItemInfo>

<ItemInfo>

<AccessPermission>Full</AccessPermission>

<CreateTime>2013-12-01T19:44:44.3645806-08:00</CreateTime>

<CreateTimeUtc>2013-12-02T03:44:44.3645806Z</CreateTimeUtc>

<IsDirectory>false</IsDirectory>

<ModifiedTime>2013-12-01T19:45:16.7316226-08:00</ModifiedTime>

<ModifiedTimeUtc>2013-12-02T03:45:16.7316226Z</ModifiedTimeUtc>

<Name>ReadMe.txt</Name>

<Path>\\domainName\Company</Path>

<Size>5865</Size>

</ItemInfo>

<ItemInfo>

<AccessPermission>Full</AccessPermission>

<CreateTime>2013-12-01T19:45:47.0763661-08:00</CreateTime>

<CreateTimeUtc>2013-12-02T03:45:47.0763661Z</CreateTimeUtc>

<IsDirectory>false</IsDirectory>

<ModifiedTime>2013-11-20T00:43:35.967-08:00</ModifiedTime>

<ModifiedTimeUtc>2013-11-20T08:43:35.967Z</ModifiedTimeUtc>

<Name>Structure.pptx</Name>

<Path>\\domainName\Company</Path>

<Size>65803</Size>

</ItemInfo>

</Items>

<TotalCount>6</TotalCount>

</ItemList>

<a id="Section_4.5"></a>
## 4.5 Create a Folder

**Client Request:**

POST https://www.contoso.com/services/builtin/fileoperationservice.svc/folder?path=%5C%5CDomainName%5CCompany%5CDemo+Folder HTTP/1.1

User-Agent: Sample App Name/1.0.0.0

Accept: application/xml

Canary: 7a10f945-91af-0597-14fd-a03bbdec2420

Host: DomainName

Cookie: ASP.NET_SessionId=hincf5pfrry4etux3rfe4n5k

Content-Length: 0

**Server Response (XML):**

HTTP/1.1 201 Created

Cache-Control: no-cache

Server: Microsoft-IIS/8.5

X-AspNet-Version: 4.0.30319

X-Powered-By: ASP.NET

X-Content-Type-Options: nosniff

Date: Fri, 14 Jun 2013 11:35:21 GMT

Content-Length: 0

<a id="Section_4.6"></a>
## 4.6 Upload a File

**Client Request:**

POST https://www.contoso.com/services/builtin/filecontentaccessservice.svc/filecontent?path=%5C%5CDomainName%5CCompany%5CDemo+Folder%5Ctext.txt&overwrite=True HTTP/1.1

Accept: */*

AppName: Sample App Name

AppVersion: 1.0.0.0

AppPublisherName: Publisher

Authorization: Basic VXNlcjpQYXNzd29yZCE=

UA-CPU: AMD64

Accept-Encoding: gzip, deflate

User-Agent: Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.2; Win64; x64; Trident/6.0)

Host: DomainName

Content-Length: 24

Connection: Keep-Alive

Cache-Control: no-cache

<File Content>

**Server Response (XML):**

HTTP/1.1 201 Created

Cache-Control: no-cache

Server: Microsoft-IIS/8.5

X-AspNet-Version: 4.0.30319

X-Powered-By: ASP.NET

X-Content-Type-Options: nosniff

Date: Fri, 14 Jun 2013 11:38:19 GMT

Content-Length: 0

<a id="Section_4.7"></a>
## 4.7 Logout

**Client Request:**

GET https://www.contoso.com/services/builtin/session.svc/logout HTTP/1.1

User-Agent: MSampleAppName/1.0.0.0

Accept: application/xml

Canary: 7a10f945-91af-0597-14fd-a03bbdec2420

Host: domainName

Cookie: ASP.NET_SessionId=hincf5pfrry4etux3rfe4n5k

**Server Response (XML):**

HTTP/1.1 200 OK

Cache-Control: no-cache

Server: Microsoft-IIS/8.5

X-AspNet-Version: 4.0.30319

Set-Cookie: ASP.NET_SessionId=; path=/

X-Powered-By: ASP.NET

X-Content-Type-Options: nosniff

Date: Fri, 14 Jun 2013 11:47:07 GMT

Content-Length: 0

<a id="Section_5"></a>
# 5 Security

<a id="Section_5.1"></a>
## 5.1 Security Considerations for Implementers

The Server and File Management Web APIs Protocol requires that all requests except GetCustomizationInfo (see section [3.10.5.1.1](#Section_3.10.5.1.1)) from the client be authenticated. The client is expected to submit requests with user credential headers or use an implementation-dependent authentication mechanism to obtain a security token and include that token in the HTTP Canary header. The server will validate the user credential information or security token and use it to authorize the request.

<a id="Section_5.2"></a>
## 5.2 Index of Security Parameters

None.

<a id="Section_6"></a>
# 6 Appendix A: Full WSDL

<?xml version="1.0" encoding="utf-8"?>

<wsdl:definitions xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/" xmlns:wsu="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:tns="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" xmlns:wsa="http://schemas.xmlsoap.org/ws/2004/08/addressing" xmlns:wsx="http://schemas.xmlsoap.org/ws/2004/09/mex" xmlns:wsap="http://schemas.xmlsoap.org/ws/2004/08/addressing/policy" xmlns:wsaw="http://www.w3.org/2006/05/addressing/wsdl" xmlns:msc="http://schemas.microsoft.com/ws/2005/12/wsdl/contract" xmlns:wsp="http://schemas.xmlsoap.org/ws/2004/09/policy" xmlns:wsa10="http://www.w3.org/2005/08/addressing" xmlns:wsam="http://www.w3.org/2007/05/addressing/metadata" targetNamespace="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">

<wsdl:types>

<xsd:schema targetNamespace="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/Imports">

<xsd:import namespace="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" />

<xsd:import namespace="http://schemas.microsoft.com/2003/10/Serialization/" />

<xsd:import namespace="http://schemas.datacontract.org/2004/07/Microsoft.WindowsServerSolutions.AzureADObjectModel" />

<xsd:import namespace="http://schemas.datacontract.org/2004/07/System.Collections.ObjectModel" />

<xsd:import namespace="http://schemas.microsoft.com/Message" />

<xsd:import namespace="http://schemas.datacontract.org/2004/07/Microsoft.WindowsServerSolutions.Storage" />

<xsd:import namespace="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />

<xsd:import namespace="http://schemas.datacontract.org/2004/07/Microsoft.WindowsServerSolutions.WebApi.Management.Storage" />

<xsd:import namespace="http://schemas.datacontract.org/2004/07/Microsoft.WindowsServerSolutions.O365Integration" />

</xsd:schema>

</wsdl:types>

<wsdl:message name="AzureADManagement_GetMSOUser_InputMessage">

<wsdl:part name="parameters" element="tns:GetMSOUser" />

</wsdl:message>

<wsdl:message name="AzureADManagement_GetMSOUser_OutputMessage">

<wsdl:part name="parameters" element="tns:GetMSOUserResponse" />

</wsdl:message>

<wsdl:message name="AzureADManagement_GetAllMSOUsers_InputMessage">

<wsdl:part name="parameters" element="tns:GetAllMSOUsers" />

</wsdl:message>

<wsdl:message name="AzureADManagement_GetAllMSOUsers_OutputMessage">

<wsdl:part name="parameters" element="tns:GetAllMSOUsersResponse" />

</wsdl:message>

<wsdl:message name="AzureADManagement_CreateMSOUser_InputMessage">

<wsdl:part name="parameters" element="tns:CreateMSOUser" />

</wsdl:message>

<wsdl:message name="AzureADManagement_CreateMSOUser_OutputMessage">

<wsdl:part name="parameters" element="tns:CreateMSOUserResponse" />

</wsdl:message>

<wsdl:message name="AzureADManagement_AssignMSOUser_InputMessage">

<wsdl:part name="parameters" element="tns:AssignMSOUser" />

</wsdl:message>

<wsdl:message name="AzureADManagement_AssignMSOUser_OutputMessage">

<wsdl:part name="parameters" element="tns:AssignMSOUserResponse" />

</wsdl:message>

<wsdl:message name="AzureADManagement_UnassignMSOUser_InputMessage">

<wsdl:part name="parameters" element="tns:UnassignMSOUser" />

</wsdl:message>

<wsdl:message name="AzureADManagement_UnassignMSOUser_OutputMessage">

<wsdl:part name="parameters" element="tns:UnassignMSOUserResponse" />

</wsdl:message>

<wsdl:message name="AzureADManagement_EnableMSOUser_InputMessage">

<wsdl:part name="parameters" element="tns:EnableMSOUser" />

</wsdl:message>

<wsdl:message name="AzureADManagement_EnableMSOUser_OutputMessage">

<wsdl:part name="parameters" element="tns:EnableMSOUserResponse" />

</wsdl:message>

<wsdl:message name="AzureADManagement_DisableMSOUser_InputMessage">

<wsdl:part name="parameters" element="tns:DisableMSOUser" />

</wsdl:message>

<wsdl:message name="AzureADManagement_DisableMSOUser_OutputMessage">

<wsdl:part name="parameters" element="tns:DisableMSOUserResponse" />

</wsdl:message>

<wsdl:message name="AzureADManagement_DeleteMSOUser_InputMessage">

<wsdl:part name="parameters" element="tns:DeleteMSOUser" />

</wsdl:message>

<wsdl:message name="AzureADManagement_DeleteMSOUser_OutputMessage">

<wsdl:part name="parameters" element="tns:DeleteMSOUserResponse" />

</wsdl:message>

<wsdl:message name="AzureADManagement_GetAcceptedMSODomains_InputMessage">

<wsdl:part name="parameters" element="tns:GetAcceptedMSODomains" />

</wsdl:message>

<wsdl:message name="AzureADManagement_GetAcceptedMSODomains_OutputMessage">

<wsdl:part name="parameters" element="tns:GetAcceptedMSODomainsResponse" />

</wsdl:message>

<wsdl:message name="AzureADManagement_GetMSOSubscriptionInfo_InputMessage">

<wsdl:part name="parameters" element="tns:GetMSOSubscriptionInfo" />

</wsdl:message>

<wsdl:message name="AzureADManagement_GetMSOSubscriptionInfo_OutputMessage">

<wsdl:part name="parameters" element="tns:GetMSOSubscriptionInfoResponse" />

</wsdl:message>

<wsdl:message name="AzureADManagement_SetMSOLicense_InputMessage">

<wsdl:part name="parameters" element="tns:SetMSOLicense" />

</wsdl:message>

<wsdl:message name="AzureADManagement_SetMSOLicense_OutputMessage">

<wsdl:part name="parameters" element="tns:SetMSOLicenseResponse" />

</wsdl:message>

<wsdl:message name="FileContentAccessService_DownloadFile_InputMessage">

<wsdl:part name="parameters" element="tns:DownloadFile" />

</wsdl:message>

<wsdl:message name="FileContentAccessService_DownloadFile_OutputMessage">

<wsdl:part name="parameters" element="tns:DownloadFileResponse" />

</wsdl:message>

<wsdl:message name="FileContentAccessService_UploadFile_InputMessage">

<wsdl:part name="parameters" element="tns:UploadFile" />

</wsdl:message>

<wsdl:message name="FileContentAccessService_UploadFile_OutputMessage">

<wsdl:part name="parameters" element="tns:UploadFileResponse" />

</wsdl:message>

<wsdl:message name="FileContentAccessService_GetThumbnail_InputMessage">

<wsdl:part name="parameters" element="tns:GetThumbnail" />

</wsdl:message>

<wsdl:message name="FileContentAccessService_GetThumbnail_OutputMessage">

<wsdl:part name="parameters" element="tns:GetThumbnailResponse" />

</wsdl:message>

<wsdl:message name="FileOperationService_ListItems_InputMessage">

<wsdl:part name="parameters" element="tns:ListItems" />

</wsdl:message>

<wsdl:message name="FileOperationService_ListItems_OutputMessage">

<wsdl:part name="parameters" element="tns:ListItemsResponse" />

</wsdl:message>

<wsdl:message name="FileOperationService_SearchItems_InputMessage">

<wsdl:part name="parameters" element="tns:SearchItems" />

</wsdl:message>

<wsdl:message name="FileOperationService_SearchItems_OutputMessage">

<wsdl:part name="parameters" element="tns:SearchItemsResponse" />

</wsdl:message>

<wsdl:message name="FileOperationService_GetUnusedNewFolderName_InputMessage">

<wsdl:part name="parameters" element="tns:GetUnusedNewFolderName" />

</wsdl:message>

<wsdl:message name="FileOperationService_GetUnusedNewFolderName_OutputMessage">

<wsdl:part name="parameters" element="tns:GetUnusedNewFolderNameResponse" />

</wsdl:message>

<wsdl:message name="FileOperationService_GetItemMetadata_InputMessage">

<wsdl:part name="parameters" element="tns:GetItemMetadata" />

</wsdl:message>

<wsdl:message name="FileOperationService_GetItemMetadata_OutputMessage">

<wsdl:part name="parameters" element="tns:GetItemMetadataResponse" />

</wsdl:message>

<wsdl:message name="FileOperationService_CreateFolder_InputMessage">

<wsdl:part name="parameters" element="tns:CreateFolder" />

</wsdl:message>

<wsdl:message name="FileOperationService_CreateFolder_OutputMessage">

<wsdl:part name="parameters" element="tns:CreateFolderResponse" />

</wsdl:message>

<wsdl:message name="FileOperationService_Rename_InputMessage">

<wsdl:part name="parameters" element="tns:Rename" />

</wsdl:message>

<wsdl:message name="FileOperationService_Rename_OutputMessage">

<wsdl:part name="parameters" element="tns:RenameResponse" />

</wsdl:message>

<wsdl:message name="FileOperationService_Delete_InputMessage">

<wsdl:part name="parameters" element="tns:Delete" />

</wsdl:message>

<wsdl:message name="FileOperationService_Delete_OutputMessage">

<wsdl:part name="parameters" element="tns:DeleteResponse" />

</wsdl:message>

<wsdl:message name="FileOperationService_GetAccessUri_InputMessage">

<wsdl:part name="parameters" element="tns:GetAccessUri" />

</wsdl:message>

<wsdl:message name="FileOperationService_GetAccessUri_OutputMessage">

<wsdl:part name="parameters" element="tns:GetAccessUriResponse" />

</wsdl:message>

<wsdl:message name="FileOperationService_Move_InputMessage">

<wsdl:part name="parameters" element="tns:Move" />

</wsdl:message>

<wsdl:message name="FileOperationService_Move_OutputMessage">

<wsdl:part name="parameters" element="tns:MoveResponse" />

</wsdl:message>

<wsdl:message name="FileOperationService_Copy_InputMessage">

<wsdl:part name="parameters" element="tns:Copy" />

</wsdl:message>

<wsdl:message name="FileOperationService_Copy_OutputMessage">

<wsdl:part name="parameters" element="tns:CopyResponse" />

</wsdl:message>

<wsdl:message name="MailManagement_GetMailbox_InputMessage">

<wsdl:part name="parameters" element="tns:GetMailbox" />

</wsdl:message>

<wsdl:message name="MailManagement_GetMailbox_OutputMessage">

<wsdl:part name="parameters" element="tns:GetMailboxResponse" />

</wsdl:message>

<wsdl:message name="MailManagement_CreateMailbox_InputMessage">

<wsdl:part name="parameters" element="tns:CreateMailbox" />

</wsdl:message>

<wsdl:message name="MailManagement_CreateMailbox_OutputMessage">

<wsdl:part name="parameters" element="tns:CreateMailboxResponse" />

</wsdl:message>

<wsdl:message name="MailManagement_SetMailbox_InputMessage">

<wsdl:part name="parameters" element="tns:SetMailbox" />

</wsdl:message>

<wsdl:message name="MailManagement_SetMailbox_OutputMessage">

<wsdl:part name="parameters" element="tns:SetMailboxResponse" />

</wsdl:message>

<wsdl:message name="MailManagement_UnsetMailbox_InputMessage">

<wsdl:part name="parameters" element="tns:UnsetMailbox" />

</wsdl:message>

<wsdl:message name="MailManagement_UnsetMailbox_OutputMessage">

<wsdl:part name="parameters" element="tns:UnsetMailboxResponse" />

</wsdl:message>

<wsdl:message name="MailManagement_DisableMailbox_InputMessage">

<wsdl:part name="parameters" element="tns:DisableMailbox" />

</wsdl:message>

<wsdl:message name="MailManagement_DisableMailbox_OutputMessage">

<wsdl:part name="parameters" element="tns:DisableMailboxResponse" />

</wsdl:message>

<wsdl:message name="MailManagement_DeleteMailbox_InputMessage">

<wsdl:part name="parameters" element="tns:DeleteMailbox" />

</wsdl:message>

<wsdl:message name="MailManagement_DeleteMailbox_OutputMessage">

<wsdl:part name="parameters" element="tns:DeleteMailboxResponse" />

</wsdl:message>

<wsdl:message name="MailManagement_EnableMailbox_InputMessage">

<wsdl:part name="parameters" element="tns:EnableMailbox" />

</wsdl:message>

<wsdl:message name="MailManagement_EnableMailbox_OutputMessage">

<wsdl:part name="parameters" element="tns:EnableMailboxResponse" />

</wsdl:message>

<wsdl:message name="MailManagement_GetAllMailboxes_InputMessage">

<wsdl:part name="parameters" element="tns:GetAllMailboxes" />

</wsdl:message>

<wsdl:message name="MailManagement_GetAllMailboxes_OutputMessage">

<wsdl:part name="parameters" element="tns:GetAllMailboxesResponse" />

</wsdl:message>

<wsdl:message name="MailManagement_GetAcceptedDomains_InputMessage">

<wsdl:part name="parameters" element="tns:GetAcceptedDomains" />

</wsdl:message>

<wsdl:message name="MailManagement_GetAcceptedDomains_OutputMessage">

<wsdl:part name="parameters" element="tns:GetAcceptedDomainsResponse" />

</wsdl:message>

<wsdl:message name="MailManagement_GetEmailAddresses_InputMessage">

<wsdl:part name="parameters" element="tns:GetEmailAddresses" />

</wsdl:message>

<wsdl:message name="MailManagement_GetEmailAddresses_OutputMessage">

<wsdl:part name="parameters" element="tns:GetEmailAddressesResponse" />

</wsdl:message>

<wsdl:message name="MailManagement_SetEmailAddresses_InputMessage">

<wsdl:part name="parameters" element="tns:SetEmailAddresses" />

</wsdl:message>

<wsdl:message name="MailManagement_SetEmailAddresses_OutputMessage">

<wsdl:part name="parameters" element="tns:SetEmailAddressesResponse" />

</wsdl:message>

<wsdl:message name="CustomizationManagement_GetCustomizationInformation_InputMessage">

<wsdl:part name="parameters" element="tns:GetCustomizationInformation" />

</wsdl:message>

<wsdl:message name="CustomizationManagement_GetCustomizationInformation_OutputMessage">

<wsdl:part name="parameters" element="tns:GetCustomizationInformationResponse" />

</wsdl:message>

<wsdl:message name="UserManagement_GetUsers_InputMessage">

<wsdl:part name="parameters" element="tns:GetUsers" />

</wsdl:message>

<wsdl:message name="UserManagement_GetUsers_OutputMessage">

<wsdl:part name="parameters" element="tns:GetUsersResponse" />

</wsdl:message>

<wsdl:message name="UserManagement_GetUserGroups_InputMessage">

<wsdl:part name="parameters" element="tns:GetUserGroups" />

</wsdl:message>

<wsdl:message name="UserManagement_GetUserGroups_OutputMessage">

<wsdl:part name="parameters" element="tns:GetUserGroupsResponse" />

</wsdl:message>

<wsdl:message name="UserManagement_GetConnectionInfo_InputMessage">

<wsdl:part name="parameters" element="tns:GetConnectionInfo" />

</wsdl:message>

<wsdl:message name="UserManagement_GetConnectionInfo_OutputMessage">

<wsdl:part name="parameters" element="tns:GetConnectionInfoResponse" />

</wsdl:message>

<wsdl:message name="UserManagement_EnableUser_InputMessage">

<wsdl:part name="parameters" element="tns:EnableUser" />

</wsdl:message>

<wsdl:message name="UserManagement_EnableUser_OutputMessage">

<wsdl:part name="parameters" element="tns:EnableUserResponse" />

</wsdl:message>

<wsdl:message name="UserManagement_DisableUser_InputMessage">

<wsdl:part name="parameters" element="tns:DisableUser" />

</wsdl:message>

<wsdl:message name="UserManagement_DisableUser_OutputMessage">

<wsdl:part name="parameters" element="tns:DisableUserResponse" />

</wsdl:message>

<wsdl:message name="UserManagement_SetUserPassword_InputMessage">

<wsdl:part name="parameters" element="tns:SetUserPassword" />

</wsdl:message>

<wsdl:message name="UserManagement_SetUserPassword_OutputMessage">

<wsdl:part name="parameters" element="tns:SetUserPasswordResponse" />

</wsdl:message>

<wsdl:message name="UserManagement_UpdateUser_InputMessage">

<wsdl:part name="parameters" element="tns:UpdateUser" />

</wsdl:message>

<wsdl:message name="UserManagement_UpdateUser_OutputMessage">

<wsdl:part name="parameters" element="tns:UpdateUserResponse" />

</wsdl:message>

<wsdl:message name="UserManagement_AddUsersToUserGroup_InputMessage">

<wsdl:part name="parameters" element="tns:AddUsersToUserGroup" />

</wsdl:message>

<wsdl:message name="UserManagement_AddUsersToUserGroup_OutputMessage">

<wsdl:part name="parameters" element="tns:AddUsersToUserGroupResponse" />

</wsdl:message>

<wsdl:message name="UserManagement_RemoveUsersFromUserGroup_InputMessage">

<wsdl:part name="parameters" element="tns:RemoveUsersFromUserGroup" />

</wsdl:message>

<wsdl:message name="UserManagement_RemoveUsersFromUserGroup_OutputMessage">

<wsdl:part name="parameters" element="tns:RemoveUsersFromUserGroupResponse" />

</wsdl:message>

<wsdl:message name="UserManagement_AddStandardUser_InputMessage">

<wsdl:part name="parameters" element="tns:AddStandardUser" />

</wsdl:message>

<wsdl:message name="UserManagement_AddStandardUser_OutputMessage">

<wsdl:part name="parameters" element="tns:AddStandardUserResponse" />

</wsdl:message>

<wsdl:message name="UserManagement_RemoveUser_InputMessage">

<wsdl:part name="parameters" element="tns:RemoveUser" />

</wsdl:message>

<wsdl:message name="UserManagement_RemoveUser_OutputMessage">

<wsdl:part name="parameters" element="tns:RemoveUserResponse" />

</wsdl:message>

<wsdl:message name="StorageManagement_GetServers_InputMessage">

<wsdl:part name="parameters" element="tns:GetServers" />

</wsdl:message>

<wsdl:message name="StorageManagement_GetServers_OutputMessage">

<wsdl:part name="parameters" element="tns:GetServersResponse" />

</wsdl:message>

<wsdl:message name="StorageManagement_GetStorageServerDrives_InputMessage">

<wsdl:part name="parameters" element="tns:GetStorageServerDrives" />

</wsdl:message>

<wsdl:message name="StorageManagement_GetStorageServerDrives_OutputMessage">

<wsdl:part name="parameters" element="tns:GetStorageServerDrivesResponse" />

</wsdl:message>

<wsdl:message name="StorageManagement_GetServerDrives_InputMessage">

<wsdl:part name="parameters" element="tns:GetServerDrives" />

</wsdl:message>

<wsdl:message name="StorageManagement_GetServerDrives_OutputMessage">

<wsdl:part name="parameters" element="tns:GetServerDrivesResponse" />

</wsdl:message>

<wsdl:message name="StorageManagement_GetServerFolders_InputMessage">

<wsdl:part name="parameters" element="tns:GetServerFolders" />

</wsdl:message>

<wsdl:message name="StorageManagement_GetServerFolders_OutputMessage">

<wsdl:part name="parameters" element="tns:GetServerFoldersResponse" />

</wsdl:message>

<wsdl:message name="StorageManagement_CreateServerFolder_InputMessage">

<wsdl:part name="parameters" element="tns:CreateServerFolder" />

</wsdl:message>

<wsdl:message name="StorageManagement_CreateServerFolder_OutputMessage">

<wsdl:part name="parameters" element="tns:CreateServerFolderResponse" />

</wsdl:message>

<wsdl:message name="StorageManagement_RemoveServerFolder_InputMessage">

<wsdl:part name="parameters" element="tns:RemoveServerFolder" />

</wsdl:message>

<wsdl:message name="StorageManagement_RemoveServerFolder_OutputMessage">

<wsdl:part name="parameters" element="tns:RemoveServerFolderResponse" />

</wsdl:message>

<wsdl:message name="StorageManagement_RenameServerFolder_InputMessage">

<wsdl:part name="parameters" element="tns:RenameServerFolder" />

</wsdl:message>

<wsdl:message name="StorageManagement_RenameServerFolder_OutputMessage">

<wsdl:part name="parameters" element="tns:RenameServerFolderResponse" />

</wsdl:message>

<wsdl:message name="StorageManagement_ModifyServerFolderByUserName_InputMessage">

<wsdl:part name="parameters" element="tns:ModifyServerFolderByUserName" />

</wsdl:message>

<wsdl:message name="StorageManagement_ModifyServerFolderByUserName_OutputMessage">

<wsdl:part name="parameters" element="tns:ModifyServerFolderByUserNameResponse" />

</wsdl:message>

<wsdl:message name="StorageManagement_ModifyServerFolderByUserSid_InputMessage">

<wsdl:part name="parameters" element="tns:ModifyServerFolderByUserSid" />

</wsdl:message>

<wsdl:message name="StorageManagement_ModifyServerFolderByUserSid_OutputMessage">

<wsdl:part name="parameters" element="tns:ModifyServerFolderByUserSidResponse" />

</wsdl:message>

<wsdl:message name="ServerManagement_GetServerInformation_InputMessage">

<wsdl:part name="parameters" element="tns:GetServerInformation" />

</wsdl:message>

<wsdl:message name="ServerManagement_GetServerInformation_OutputMessage">

<wsdl:part name="parameters" element="tns:GetServerInformationResponse" />

</wsdl:message>

<wsdl:message name="ServiceManagement_GetPermittedBuiltInServices_InputMessage">

<wsdl:part name="parameters" element="tns:GetPermittedBuiltInServices" />

</wsdl:message>

<wsdl:message name="ServiceManagement_GetPermittedBuiltInServices_OutputMessage">

<wsdl:part name="parameters" element="tns:GetPermittedBuiltInServicesResponse" />

</wsdl:message>

<wsdl:message name="DeviceManagement_GetDevices_InputMessage">

<wsdl:part name="parameters" element="tns:GetDevices" />

</wsdl:message>

<wsdl:message name="DeviceManagement_GetDevices_OutputMessage">

<wsdl:part name="parameters" element="tns:GetDevicesResponse" />

</wsdl:message>

<wsdl:message name="DeviceManagement_StartBackup_InputMessage">

<wsdl:part name="parameters" element="tns:StartBackup" />

</wsdl:message>

<wsdl:message name="DeviceManagement_StartBackup_OutputMessage">

<wsdl:part name="parameters" element="tns:StartBackupResponse" />

</wsdl:message>

<wsdl:message name="DeviceManagement_StopBackup_InputMessage">

<wsdl:part name="parameters" element="tns:StopBackup" />

</wsdl:message>

<wsdl:message name="DeviceManagement_StopBackup_OutputMessage">

<wsdl:part name="parameters" element="tns:StopBackupResponse" />

</wsdl:message>

<wsdl:message name="AlertManagement_GetAlerts_InputMessage">

<wsdl:part name="parameters" element="tns:GetAlerts" />

</wsdl:message>

<wsdl:message name="AlertManagement_GetAlerts_OutputMessage">

<wsdl:part name="parameters" element="tns:GetAlertsResponse" />

</wsdl:message>

<wsdl:message name="AlertManagement_EnableAlert_InputMessage">

<wsdl:part name="parameters" element="tns:EnableAlert" />

</wsdl:message>

<wsdl:message name="AlertManagement_EnableAlert_OutputMessage">

<wsdl:part name="parameters" element="tns:EnableAlertResponse" />

</wsdl:message>

<wsdl:message name="AlertManagement_DisableAlert_InputMessage">

<wsdl:part name="parameters" element="tns:DisableAlert" />

</wsdl:message>

<wsdl:message name="AlertManagement_DisableAlert_OutputMessage">

<wsdl:part name="parameters" element="tns:DisableAlertResponse" />

</wsdl:message>

<wsdl:message name="AlertManagement_ClearAlert_InputMessage">

<wsdl:part name="parameters" element="tns:ClearAlert" />

</wsdl:message>

<wsdl:message name="AlertManagement_ClearAlert_OutputMessage">

<wsdl:part name="parameters" element="tns:ClearAlertResponse" />

</wsdl:message>

<wsdl:message name="AlertManagement_RepairAlertAsync_InputMessage">

<wsdl:part name="parameters" element="tns:RepairAlertAsync" />

</wsdl:message>

<wsdl:message name="AlertManagement_RepairAlertAsync_OutputMessage">

<wsdl:part name="parameters" element="tns:RepairAlertAsyncResponse" />

</wsdl:message>

<wsdl:message name="SharePointSiteMgmt_GetSharePointSites_InputMessage">

<wsdl:part name="parameters" element="tns:GetSharePointSites" />

</wsdl:message>

<wsdl:message name="SharePointSiteMgmt_GetSharePointSites_OutputMessage">

<wsdl:part name="parameters" element="tns:GetSharePointSitesResponse" />

</wsdl:message>

<wsdl:portType name="AzureADManagement">

<wsdl:operation name="GetMSOUser">

<wsdl:input wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/AzureADManagement/GetMSOUser" message="tns:AzureADManagement_GetMSOUser_InputMessage" />

<wsdl:output wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/AzureADManagement/GetMSOUserResponse" message="tns:AzureADManagement_GetMSOUser_OutputMessage" />

</wsdl:operation>

<wsdl:operation name="GetAllMSOUsers">

<wsdl:input wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/AzureADManagement/GetAllMSOUsers" message="tns:AzureADManagement_GetAllMSOUsers_InputMessage" />

<wsdl:output wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/AzureADManagement/GetAllMSOUsersResponse" message="tns:AzureADManagement_GetAllMSOUsers_OutputMessage" />

</wsdl:operation>

<wsdl:operation name="CreateMSOUser">

<wsdl:input wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/AzureADManagement/CreateMSOUser" message="tns:AzureADManagement_CreateMSOUser_InputMessage" />

<wsdl:output wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/AzureADManagement/CreateMSOUserResponse" message="tns:AzureADManagement_CreateMSOUser_OutputMessage" />

</wsdl:operation>

<wsdl:operation name="AssignMSOUser">

<wsdl:input wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/AzureADManagement/AssignMSOUser" message="tns:AzureADManagement_AssignMSOUser_InputMessage" />

<wsdl:output wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/AzureADManagement/AssignMSOUserResponse" message="tns:AzureADManagement_AssignMSOUser_OutputMessage" />

</wsdl:operation>

<wsdl:operation name="UnassignMSOUser">

<wsdl:input wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/AzureADManagement/UnassignMSOUser" message="tns:AzureADManagement_UnassignMSOUser_InputMessage" />

<wsdl:output wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/AzureADManagement/UnassignMSOUserResponse" message="tns:AzureADManagement_UnassignMSOUser_OutputMessage" />

</wsdl:operation>

<wsdl:operation name="EnableMSOUser">

<wsdl:input wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/AzureADManagement/EnableMSOUser" message="tns:AzureADManagement_EnableMSOUser_InputMessage" />

<wsdl:output wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/AzureADManagement/EnableMSOUserResponse" message="tns:AzureADManagement_EnableMSOUser_OutputMessage" />

</wsdl:operation>

<wsdl:operation name="DisableMSOUser">

<wsdl:input wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/AzureADManagement/DisableMSOUser" message="tns:AzureADManagement_DisableMSOUser_InputMessage" />

<wsdl:output wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/AzureADManagement/DisableMSOUserResponse" message="tns:AzureADManagement_DisableMSOUser_OutputMessage" />

</wsdl:operation>

<wsdl:operation name="DeleteMSOUser">

<wsdl:input wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/AzureADManagement/DeleteMSOUser" message="tns:AzureADManagement_DeleteMSOUser_InputMessage" />

<wsdl:output wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/AzureADManagement/DeleteMSOUserResponse" message="tns:AzureADManagement_DeleteMSOUser_OutputMessage" />

</wsdl:operation>

<wsdl:operation name="GetAcceptedMSODomains">

<wsdl:input wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/AzureADManagement/GetAcceptedMSODomains" message="tns:AzureADManagement_GetAcceptedMSODomains_InputMessage" />

<wsdl:output wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/AzureADManagement/GetAcceptedMSODomainsResponse" message="tns:AzureADManagement_GetAcceptedMSODomains_OutputMessage" />

</wsdl:operation>

<wsdl:operation name="GetMSOSubscriptionInfo">

<wsdl:input wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/AzureADManagement/GetMSOSubscriptionInfo" message="tns:AzureADManagement_GetMSOSubscriptionInfo_InputMessage" />

<wsdl:output wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/AzureADManagement/GetMSOSubscriptionInfoResponse" message="tns:AzureADManagement_GetMSOSubscriptionInfo_OutputMessage" />

</wsdl:operation>

<wsdl:operation name="SetMSOLicense">

<wsdl:input wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/AzureADManagement/SetMSOLicense" message="tns:AzureADManagement_SetMSOLicense_InputMessage" />

<wsdl:output wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/AzureADManagement/SetMSOLicenseResponse" message="tns:AzureADManagement_SetMSOLicense_OutputMessage" />

</wsdl:operation>

</wsdl:portType>

<wsdl:portType name="FileContentAccessService">

<wsdl:operation name="DownloadFile">

<wsdl:input wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/FileContentAccessService/DownloadFile" message="tns:FileContentAccessService_DownloadFile_InputMessage" />

<wsdl:output wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/FileContentAccessService/DownloadFileResponse" message="tns:FileContentAccessService_DownloadFile_OutputMessage" />

</wsdl:operation>

<wsdl:operation name="UploadFile">

<wsdl:input wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/FileContentAccessService/UploadFile" message="tns:FileContentAccessService_UploadFile_InputMessage" />

<wsdl:output wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/FileContentAccessService/UploadFileResponse" message="tns:FileContentAccessService_UploadFile_OutputMessage" />

</wsdl:operation>

<wsdl:operation name="GetThumbnail">

<wsdl:input wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/FileContentAccessService/GetThumbnail" message="tns:FileContentAccessService_GetThumbnail_InputMessage" />

<wsdl:output wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/FileContentAccessService/GetThumbnailResponse" message="tns:FileContentAccessService_GetThumbnail_OutputMessage" />

</wsdl:operation>

</wsdl:portType>

<wsdl:portType name="FileOperationService">

<wsdl:operation name="ListItems">

<wsdl:input wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/FileOperationService/ListItems" message="tns:FileOperationService_ListItems_InputMessage" />

<wsdl:output wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/FileOperationService/ListItemsResponse" message="tns:FileOperationService_ListItems_OutputMessage" />

</wsdl:operation>

<wsdl:operation name="SearchItems">

<wsdl:input wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/FileOperationService/SearchItems" message="tns:FileOperationService_SearchItems_InputMessage" />

<wsdl:output wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/FileOperationService/SearchItemsResponse" message="tns:FileOperationService_SearchItems_OutputMessage" />

</wsdl:operation>

<wsdl:operation name="GetUnusedNewFolderName">

<wsdl:input wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/FileOperationService/GetUnusedNewFolderName" message="tns:FileOperationService_GetUnusedNewFolderName_InputMessage" />

<wsdl:output wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/FileOperationService/GetUnusedNewFolderNameResponse" message="tns:FileOperationService_GetUnusedNewFolderName_OutputMessage" />

</wsdl:operation>

<wsdl:operation name="GetItemMetadata">

<wsdl:input wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/FileOperationService/GetItemMetadata" message="tns:FileOperationService_GetItemMetadata_InputMessage" />

<wsdl:output wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/FileOperationService/GetItemMetadataResponse" message="tns:FileOperationService_GetItemMetadata_OutputMessage" />

</wsdl:operation>

<wsdl:operation name="CreateFolder">

<wsdl:input wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/FileOperationService/CreateFolder" message="tns:FileOperationService_CreateFolder_InputMessage" />

<wsdl:output wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/FileOperationService/CreateFolderResponse" message="tns:FileOperationService_CreateFolder_OutputMessage" />

</wsdl:operation>

<wsdl:operation name="Rename">

<wsdl:input wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/FileOperationService/Rename" message="tns:FileOperationService_Rename_InputMessage" />

<wsdl:output wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/FileOperationService/RenameResponse" message="tns:FileOperationService_Rename_OutputMessage" />

</wsdl:operation>

<wsdl:operation name="Delete">

<wsdl:input wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/FileOperationService/Delete" message="tns:FileOperationService_Delete_InputMessage" />

<wsdl:output wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/FileOperationService/DeleteResponse" message="tns:FileOperationService_Delete_OutputMessage" />

</wsdl:operation>

<wsdl:operation name="GetAccessUri">

<wsdl:input wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/FileOperationService/GetAccessUri" message="tns:FileOperationService_GetAccessUri_InputMessage" />

<wsdl:output wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/FileOperationService/GetAccessUriResponse" message="tns:FileOperationService_GetAccessUri_OutputMessage" />

</wsdl:operation>

<wsdl:operation name="Move">

<wsdl:input wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/FileOperationService/Move" message="tns:FileOperationService_Move_InputMessage" />

<wsdl:output wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/FileOperationService/MoveResponse" message="tns:FileOperationService_Move_OutputMessage" />

</wsdl:operation>

<wsdl:operation name="Copy">

<wsdl:input wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/FileOperationService/Copy" message="tns:FileOperationService_Copy_InputMessage" />

<wsdl:output wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/FileOperationService/CopyResponse" message="tns:FileOperationService_Copy_OutputMessage" />

</wsdl:operation>

</wsdl:portType>

<wsdl:portType name="MailManagement">

<wsdl:operation name="GetMailbox">

<wsdl:input wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/MailManagement/GetMailbox" message="tns:MailManagement_GetMailbox_InputMessage" />

<wsdl:output wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/MailManagement/GetMailboxResponse" message="tns:MailManagement_GetMailbox_OutputMessage" />

</wsdl:operation>

<wsdl:operation name="CreateMailbox">

<wsdl:input wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/MailManagement/CreateMailbox" message="tns:MailManagement_CreateMailbox_InputMessage" />

<wsdl:output wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/MailManagement/CreateMailboxResponse" message="tns:MailManagement_CreateMailbox_OutputMessage" />

</wsdl:operation>

<wsdl:operation name="SetMailbox">

<wsdl:input wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/MailManagement/SetMailbox" message="tns:MailManagement_SetMailbox_InputMessage" />

<wsdl:output wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/MailManagement/SetMailboxResponse" message="tns:MailManagement_SetMailbox_OutputMessage" />

</wsdl:operation>

<wsdl:operation name="UnsetMailbox">

<wsdl:input wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/MailManagement/UnsetMailbox" message="tns:MailManagement_UnsetMailbox_InputMessage" />

<wsdl:output wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/MailManagement/UnsetMailboxResponse" message="tns:MailManagement_UnsetMailbox_OutputMessage" />

</wsdl:operation>

<wsdl:operation name="DisableMailbox">

<wsdl:input wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/MailManagement/DisableMailbox" message="tns:MailManagement_DisableMailbox_InputMessage" />

<wsdl:output wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/MailManagement/DisableMailboxResponse" message="tns:MailManagement_DisableMailbox_OutputMessage" />

</wsdl:operation>

<wsdl:operation name="DeleteMailbox">

<wsdl:input wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/MailManagement/DeleteMailbox" message="tns:MailManagement_DeleteMailbox_InputMessage" />

<wsdl:output wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/MailManagement/DeleteMailboxResponse" message="tns:MailManagement_DeleteMailbox_OutputMessage" />

</wsdl:operation>

<wsdl:operation name="EnableMailbox">

<wsdl:input wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/MailManagement/EnableMailbox" message="tns:MailManagement_EnableMailbox_InputMessage" />

<wsdl:output wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/MailManagement/EnableMailboxResponse" message="tns:MailManagement_EnableMailbox_OutputMessage" />

</wsdl:operation>

<wsdl:operation name="GetAllMailboxes">

<wsdl:input wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/MailManagement/GetAllMailboxes" message="tns:MailManagement_GetAllMailboxes_InputMessage" />

<wsdl:output wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/MailManagement/GetAllMailboxesResponse" message="tns:MailManagement_GetAllMailboxes_OutputMessage" />

</wsdl:operation>

<wsdl:operation name="GetAcceptedDomains">

<wsdl:input wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/MailManagement/GetAcceptedDomains" message="tns:MailManagement_GetAcceptedDomains_InputMessage" />

<wsdl:output wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/MailManagement/GetAcceptedDomainsResponse" message="tns:MailManagement_GetAcceptedDomains_OutputMessage" />

</wsdl:operation>

<wsdl:operation name="GetEmailAddresses">

<wsdl:input wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/MailManagement/GetEmailAddresses" message="tns:MailManagement_GetEmailAddresses_InputMessage" />

<wsdl:output wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/MailManagement/GetEmailAddressesResponse" message="tns:MailManagement_GetEmailAddresses_OutputMessage" />

</wsdl:operation>

<wsdl:operation name="SetEmailAddresses">

<wsdl:input wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/MailManagement/SetEmailAddresses" message="tns:MailManagement_SetEmailAddresses_InputMessage" />

<wsdl:output wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/MailManagement/SetEmailAddressesResponse" message="tns:MailManagement_SetEmailAddresses_OutputMessage" />

</wsdl:operation>

</wsdl:portType>

<wsdl:portType name="CustomizationManagement">

<wsdl:operation name="GetCustomizationInformation">

<wsdl:input wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/CustomizationManagement/GetCustomizationInformation" message="tns:CustomizationManagement_GetCustomizationInformation_InputMessage" />

<wsdl:output wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/CustomizationManagement/GetCustomizationInformationResponse" message="tns:CustomizationManagement_GetCustomizationInformation_OutputMessage" />

</wsdl:operation>

</wsdl:portType>

<wsdl:portType name="UserManagement">

<wsdl:operation name="GetUsers">

<wsdl:input wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/UserManagement/GetUsers" message="tns:UserManagement_GetUsers_InputMessage" />

<wsdl:output wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/UserManagement/GetUsersResponse" message="tns:UserManagement_GetUsers_OutputMessage" />

</wsdl:operation>

<wsdl:operation name="GetUserGroups">

<wsdl:input wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/UserManagement/GetUserGroups" message="tns:UserManagement_GetUserGroups_InputMessage" />

<wsdl:output wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/UserManagement/GetUserGroupsResponse" message="tns:UserManagement_GetUserGroups_OutputMessage" />

</wsdl:operation>

<wsdl:operation name="GetConnectionInfo">

<wsdl:input wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/UserManagement/GetConnectionInfo" message="tns:UserManagement_GetConnectionInfo_InputMessage" />

<wsdl:output wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/UserManagement/GetConnectionInfoResponse" message="tns:UserManagement_GetConnectionInfo_OutputMessage" />

</wsdl:operation>

<wsdl:operation name="EnableUser">

<wsdl:input wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/UserManagement/EnableUser" message="tns:UserManagement_EnableUser_InputMessage" />

<wsdl:output wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/UserManagement/EnableUserResponse" message="tns:UserManagement_EnableUser_OutputMessage" />

</wsdl:operation>

<wsdl:operation name="DisableUser">

<wsdl:input wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/UserManagement/DisableUser" message="tns:UserManagement_DisableUser_InputMessage" />

<wsdl:output wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/UserManagement/DisableUserResponse" message="tns:UserManagement_DisableUser_OutputMessage" />

</wsdl:operation>

<wsdl:operation name="SetUserPassword">

<wsdl:input wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/UserManagement/SetUserPassword" message="tns:UserManagement_SetUserPassword_InputMessage" />

<wsdl:output wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/UserManagement/SetUserPasswordResponse" message="tns:UserManagement_SetUserPassword_OutputMessage" />

</wsdl:operation>

<wsdl:operation name="UpdateUser">

<wsdl:input wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/UserManagement/UpdateUser" message="tns:UserManagement_UpdateUser_InputMessage" />

<wsdl:output wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/UserManagement/UpdateUserResponse" message="tns:UserManagement_UpdateUser_OutputMessage" />

</wsdl:operation>

<wsdl:operation name="AddUsersToUserGroup">

<wsdl:input wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/UserManagement/AddUsersToUserGroup" message="tns:UserManagement_AddUsersToUserGroup_InputMessage" />

<wsdl:output wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/UserManagement/AddUsersToUserGroupResponse" message="tns:UserManagement_AddUsersToUserGroup_OutputMessage" />

</wsdl:operation>

<wsdl:operation name="RemoveUsersFromUserGroup">

<wsdl:input wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/UserManagement/RemoveUsersFromUserGroup" message="tns:UserManagement_RemoveUsersFromUserGroup_InputMessage" />

<wsdl:output wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/UserManagement/RemoveUsersFromUserGroupResponse" message="tns:UserManagement_RemoveUsersFromUserGroup_OutputMessage" />

</wsdl:operation>

<wsdl:operation name="AddStandardUser">

<wsdl:input wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/UserManagement/AddStandardUser" message="tns:UserManagement_AddStandardUser_InputMessage" />

<wsdl:output wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/UserManagement/AddStandardUserResponse" message="tns:UserManagement_AddStandardUser_OutputMessage" />

</wsdl:operation>

<wsdl:operation name="RemoveUser">

<wsdl:input wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/UserManagement/RemoveUser" message="tns:UserManagement_RemoveUser_InputMessage" />

<wsdl:output wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/UserManagement/RemoveUserResponse" message="tns:UserManagement_RemoveUser_OutputMessage" />

</wsdl:operation>

</wsdl:portType>

<wsdl:portType name="StorageManagement">

<wsdl:operation name="GetServers">

<wsdl:input wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/StorageManagement/GetServers" message="tns:StorageManagement_GetServers_InputMessage" />

<wsdl:output wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/StorageManagement/GetServersResponse" message="tns:StorageManagement_GetServers_OutputMessage" />

</wsdl:operation>

<wsdl:operation name="GetStorageServerDrives">

<wsdl:input wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/StorageManagement/GetStorageServerDrives" message="tns:StorageManagement_GetStorageServerDrives_InputMessage" />

<wsdl:output wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/StorageManagement/GetStorageServerDrivesResponse" message="tns:StorageManagement_GetStorageServerDrives_OutputMessage" />

</wsdl:operation>

<wsdl:operation name="GetServerDrives">

<wsdl:input wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/StorageManagement/GetServerDrives" message="tns:StorageManagement_GetServerDrives_InputMessage" />

<wsdl:output wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/StorageManagement/GetServerDrivesResponse" message="tns:StorageManagement_GetServerDrives_OutputMessage" />

</wsdl:operation>

<wsdl:operation name="GetServerFolders">

<wsdl:input wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/StorageManagement/GetServerFolders" message="tns:StorageManagement_GetServerFolders_InputMessage" />

<wsdl:output wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/StorageManagement/GetServerFoldersResponse" message="tns:StorageManagement_GetServerFolders_OutputMessage" />

</wsdl:operation>

<wsdl:operation name="CreateServerFolder">

<wsdl:input wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/StorageManagement/CreateServerFolder" message="tns:StorageManagement_CreateServerFolder_InputMessage" />

<wsdl:output wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/StorageManagement/CreateServerFolderResponse" message="tns:StorageManagement_CreateServerFolder_OutputMessage" />

</wsdl:operation>

<wsdl:operation name="RemoveServerFolder">

<wsdl:input wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/StorageManagement/RemoveServerFolder" message="tns:StorageManagement_RemoveServerFolder_InputMessage" />

<wsdl:output wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/StorageManagement/RemoveServerFolderResponse" message="tns:StorageManagement_RemoveServerFolder_OutputMessage" />

</wsdl:operation>

<wsdl:operation name="RenameServerFolder">

<wsdl:input wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/StorageManagement/RenameServerFolder" message="tns:StorageManagement_RenameServerFolder_InputMessage" />

<wsdl:output wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/StorageManagement/RenameServerFolderResponse" message="tns:StorageManagement_RenameServerFolder_OutputMessage" />

</wsdl:operation>

<wsdl:operation name="ModifyServerFolderByUserName">

<wsdl:input wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/StorageManagement/ModifyServerFolderByUserName" message="tns:StorageManagement_ModifyServerFolderByUserName_InputMessage" />

<wsdl:output wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/StorageManagement/ModifyServerFolderByUserNameResponse" message="tns:StorageManagement_ModifyServerFolderByUserName_OutputMessage" />

</wsdl:operation>

<wsdl:operation name="ModifyServerFolderByUserSid">

<wsdl:input wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/StorageManagement/ModifyServerFolderByUserSid" message="tns:StorageManagement_ModifyServerFolderByUserSid_InputMessage" />

<wsdl:output wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/StorageManagement/ModifyServerFolderByUserSidResponse" message="tns:StorageManagement_ModifyServerFolderByUserSid_OutputMessage" />

</wsdl:operation>

</wsdl:portType>

<wsdl:portType name="ServerManagement">

<wsdl:operation name="GetServerInformation">

<wsdl:input wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/ServerManagement/GetServerInformation" message="tns:ServerManagement_GetServerInformation_InputMessage" />

<wsdl:output wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/ServerManagement/GetServerInformationResponse" message="tns:ServerManagement_GetServerInformation_OutputMessage" />

</wsdl:operation>

</wsdl:portType>

<wsdl:portType name="ServiceManagement">

<wsdl:operation name="GetPermittedBuiltInServices">

<wsdl:input wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/ServiceManagement/GetPermittedBuiltInServices" message="tns:ServiceManagement_GetPermittedBuiltInServices_InputMessage" />

<wsdl:output wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/ServiceManagement/GetPermittedBuiltInServicesResponse" message="tns:ServiceManagement_GetPermittedBuiltInServices_OutputMessage" />

</wsdl:operation>

</wsdl:portType>

<wsdl:portType name="DeviceManagement">

<wsdl:operation name="GetDevices">

<wsdl:input wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/DeviceManagement/GetDevices" message="tns:DeviceManagement_GetDevices_InputMessage" />

<wsdl:output wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/DeviceManagement/GetDevicesResponse" message="tns:DeviceManagement_GetDevices_OutputMessage" />

</wsdl:operation>

<wsdl:operation name="StartBackup">

<wsdl:input wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/DeviceManagement/StartBackup" message="tns:DeviceManagement_StartBackup_InputMessage" />

<wsdl:output wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/DeviceManagement/StartBackupResponse" message="tns:DeviceManagement_StartBackup_OutputMessage" />

</wsdl:operation>

<wsdl:operation name="StopBackup">

<wsdl:input wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/DeviceManagement/StopBackup" message="tns:DeviceManagement_StopBackup_InputMessage" />

<wsdl:output wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/DeviceManagement/StopBackupResponse" message="tns:DeviceManagement_StopBackup_OutputMessage" />

</wsdl:operation>

</wsdl:portType>

<wsdl:portType name="AlertManagement">

<wsdl:operation name="GetAlerts">

<wsdl:input wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/AlertManagement/GetAlerts" message="tns:AlertManagement_GetAlerts_InputMessage" />

<wsdl:output wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/AlertManagement/GetAlertsResponse" message="tns:AlertManagement_GetAlerts_OutputMessage" />

</wsdl:operation>

<wsdl:operation name="EnableAlert">

<wsdl:input wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/AlertManagement/EnableAlert" message="tns:AlertManagement_EnableAlert_InputMessage" />

<wsdl:output wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/AlertManagement/EnableAlertResponse" message="tns:AlertManagement_EnableAlert_OutputMessage" />

</wsdl:operation>

<wsdl:operation name="DisableAlert">

<wsdl:input wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/AlertManagement/DisableAlert" message="tns:AlertManagement_DisableAlert_InputMessage" />

<wsdl:output wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/AlertManagement/DisableAlertResponse" message="tns:AlertManagement_DisableAlert_OutputMessage" />

</wsdl:operation>

<wsdl:operation name="ClearAlert">

<wsdl:input wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/AlertManagement/ClearAlert" message="tns:AlertManagement_ClearAlert_InputMessage" />

<wsdl:output wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/AlertManagement/ClearAlertResponse" message="tns:AlertManagement_ClearAlert_OutputMessage" />

</wsdl:operation>

<wsdl:operation name="RepairAlertAsync">

<wsdl:input wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/AlertManagement/RepairAlertAsync" message="tns:AlertManagement_RepairAlertAsync_InputMessage" />

<wsdl:output wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/AlertManagement/RepairAlertAsyncResponse" message="tns:AlertManagement_RepairAlertAsync_OutputMessage" />

</wsdl:operation>

</wsdl:portType>

<wsdl:portType name="SharePointSiteMgmt">

<wsdl:operation name="GetSharePointSites">

<wsdl:input wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/SharePointSiteMgmt/GetSharePointSites" message="tns:SharePointSiteMgmt_GetSharePointSites_InputMessage" />

<wsdl:output wsaw:Action="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/SharePointSiteMgmt/GetSharePointSitesResponse" message="tns:SharePointSiteMgmt_GetSharePointSites_OutputMessage" />

</wsdl:operation>

</wsdl:portType>

<wsdl:binding name="DefaultBinding_AzureADManagement" type="tns:AzureADManagement">

<soap:binding transport="http://schemas.xmlsoap.org/soap/http" />

<wsdl:operation name="GetMSOUser">

<soap:operation soapAction="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/AzureADManagement/GetMSOUser" style="document" />

<wsdl:input>

<soap:body use="literal" />

</wsdl:input>

<wsdl:output>

<soap:body use="literal" />

</wsdl:output>

</wsdl:operation>

<wsdl:operation name="GetAllMSOUsers">

<soap:operation soapAction="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/AzureADManagement/GetAllMSOUsers" style="document" />

<wsdl:input>

<soap:body use="literal" />

</wsdl:input>

<wsdl:output>

<soap:body use="literal" />

</wsdl:output>

</wsdl:operation>

<wsdl:operation name="CreateMSOUser">

<soap:operation soapAction="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/AzureADManagement/CreateMSOUser" style="document" />

<wsdl:input>

<soap:body use="literal" />

</wsdl:input>

<wsdl:output>

<soap:body use="literal" />

</wsdl:output>

</wsdl:operation>

<wsdl:operation name="AssignMSOUser">

<soap:operation soapAction="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/AzureADManagement/AssignMSOUser" style="document" />

<wsdl:input>

<soap:body use="literal" />

</wsdl:input>

<wsdl:output>

<soap:body use="literal" />

</wsdl:output>

</wsdl:operation>

<wsdl:operation name="UnassignMSOUser">

<soap:operation soapAction="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/AzureADManagement/UnassignMSOUser" style="document" />

<wsdl:input>

<soap:body use="literal" />

</wsdl:input>

<wsdl:output>

<soap:body use="literal" />

</wsdl:output>

</wsdl:operation>

<wsdl:operation name="EnableMSOUser">

<soap:operation soapAction="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/AzureADManagement/EnableMSOUser" style="document" />

<wsdl:input>

<soap:body use="literal" />

</wsdl:input>

<wsdl:output>

<soap:body use="literal" />

</wsdl:output>

</wsdl:operation>

<wsdl:operation name="DisableMSOUser">

<soap:operation soapAction="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/AzureADManagement/DisableMSOUser" style="document" />

<wsdl:input>

<soap:body use="literal" />

</wsdl:input>

<wsdl:output>

<soap:body use="literal" />

</wsdl:output>

</wsdl:operation>

<wsdl:operation name="DeleteMSOUser">

<soap:operation soapAction="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/AzureADManagement/DeleteMSOUser" style="document" />

<wsdl:input>

<soap:body use="literal" />

</wsdl:input>

<wsdl:output>

<soap:body use="literal" />

</wsdl:output>

</wsdl:operation>

<wsdl:operation name="GetAcceptedMSODomains">

<soap:operation soapAction="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/AzureADManagement/GetAcceptedMSODomains" style="document" />

<wsdl:input>

<soap:body use="literal" />

</wsdl:input>

<wsdl:output>

<soap:body use="literal" />

</wsdl:output>

</wsdl:operation>

<wsdl:operation name="GetMSOSubscriptionInfo">

<soap:operation soapAction="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/AzureADManagement/GetMSOSubscriptionInfo" style="document" />

<wsdl:input>

<soap:body use="literal" />

</wsdl:input>

<wsdl:output>

<soap:body use="literal" />

</wsdl:output>

</wsdl:operation>

<wsdl:operation name="SetMSOLicense">

<soap:operation soapAction="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/AzureADManagement/SetMSOLicense" style="document" />

<wsdl:input>

<soap:body use="literal" />

</wsdl:input>

<wsdl:output>

<soap:body use="literal" />

</wsdl:output>

</wsdl:operation>

</wsdl:binding>

<wsdl:binding name="DefaultBinding_FileContentAccessService" type="tns:FileContentAccessService">

<soap:binding transport="http://schemas.xmlsoap.org/soap/http" />

<wsdl:operation name="DownloadFile">

<soap:operation soapAction="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/FileContentAccessService/DownloadFile" style="document" />

<wsdl:input>

<soap:body use="literal" />

</wsdl:input>

<wsdl:output>

<soap:body use="literal" />

</wsdl:output>

</wsdl:operation>

<wsdl:operation name="UploadFile">

<soap:operation soapAction="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/FileContentAccessService/UploadFile" style="document" />

<wsdl:input>

<soap:body use="literal" />

</wsdl:input>

<wsdl:output>

<soap:body use="literal" />

</wsdl:output>

</wsdl:operation>

<wsdl:operation name="GetThumbnail">

<soap:operation soapAction="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/FileContentAccessService/GetThumbnail" style="document" />

<wsdl:input>

<soap:body use="literal" />

</wsdl:input>

<wsdl:output>

<soap:body use="literal" />

</wsdl:output>

</wsdl:operation>

</wsdl:binding>

<wsdl:binding name="DefaultBinding_FileOperationService" type="tns:FileOperationService">

<soap:binding transport="http://schemas.xmlsoap.org/soap/http" />

<wsdl:operation name="ListItems">

<soap:operation soapAction="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/FileOperationService/ListItems" style="document" />

<wsdl:input>

<soap:body use="literal" />

</wsdl:input>

<wsdl:output>

<soap:body use="literal" />

</wsdl:output>

</wsdl:operation>

<wsdl:operation name="SearchItems">

<soap:operation soapAction="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/FileOperationService/SearchItems" style="document" />

<wsdl:input>

<soap:body use="literal" />

</wsdl:input>

<wsdl:output>

<soap:body use="literal" />

</wsdl:output>

</wsdl:operation>

<wsdl:operation name="GetUnusedNewFolderName">

<soap:operation soapAction="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/FileOperationService/GetUnusedNewFolderName" style="document" />

<wsdl:input>

<soap:body use="literal" />

</wsdl:input>

<wsdl:output>

<soap:body use="literal" />

</wsdl:output>

</wsdl:operation>

<wsdl:operation name="GetItemMetadata">

<soap:operation soapAction="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/FileOperationService/GetItemMetadata" style="document" />

<wsdl:input>

<soap:body use="literal" />

</wsdl:input>

<wsdl:output>

<soap:body use="literal" />

</wsdl:output>

</wsdl:operation>

<wsdl:operation name="CreateFolder">

<soap:operation soapAction="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/FileOperationService/CreateFolder" style="document" />

<wsdl:input>

<soap:body use="literal" />

</wsdl:input>

<wsdl:output>

<soap:body use="literal" />

</wsdl:output>

</wsdl:operation>

<wsdl:operation name="Rename">

<soap:operation soapAction="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/FileOperationService/Rename" style="document" />

<wsdl:input>

<soap:body use="literal" />

</wsdl:input>

<wsdl:output>

<soap:body use="literal" />

</wsdl:output>

</wsdl:operation>

<wsdl:operation name="Delete">

<soap:operation soapAction="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/FileOperationService/Delete" style="document" />

<wsdl:input>

<soap:body use="literal" />

</wsdl:input>

<wsdl:output>

<soap:body use="literal" />

</wsdl:output>

</wsdl:operation>

<wsdl:operation name="GetAccessUri">

<soap:operation soapAction="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/FileOperationService/GetAccessUri" style="document" />

<wsdl:input>

<soap:body use="literal" />

</wsdl:input>

<wsdl:output>

<soap:body use="literal" />

</wsdl:output>

</wsdl:operation>

<wsdl:operation name="Move">

<soap:operation soapAction="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/FileOperationService/Move" style="document" />

<wsdl:input>

<soap:body use="literal" />

</wsdl:input>

<wsdl:output>

<soap:body use="literal" />

</wsdl:output>

</wsdl:operation>

<wsdl:operation name="Copy">

<soap:operation soapAction="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/FileOperationService/Copy" style="document" />

<wsdl:input>

<soap:body use="literal" />

</wsdl:input>

<wsdl:output>

<soap:body use="literal" />

</wsdl:output>

</wsdl:operation>

</wsdl:binding>

<wsdl:binding name="DefaultBinding_MailManagement" type="tns:MailManagement">

<soap:binding transport="http://schemas.xmlsoap.org/soap/http" />

<wsdl:operation name="GetMailbox">

<soap:operation soapAction="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/MailManagement/GetMailbox" style="document" />

<wsdl:input>

<soap:body use="literal" />

</wsdl:input>

<wsdl:output>

<soap:body use="literal" />

</wsdl:output>

</wsdl:operation>

<wsdl:operation name="CreateMailbox">

<soap:operation soapAction="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/MailManagement/CreateMailbox" style="document" />

<wsdl:input>

<soap:body use="literal" />

</wsdl:input>

<wsdl:output>

<soap:body use="literal" />

</wsdl:output>

</wsdl:operation>

<wsdl:operation name="SetMailbox">

<soap:operation soapAction="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/MailManagement/SetMailbox" style="document" />

<wsdl:input>

<soap:body use="literal" />

</wsdl:input>

<wsdl:output>

<soap:body use="literal" />

</wsdl:output>

</wsdl:operation>

<wsdl:operation name="UnsetMailbox">

<soap:operation soapAction="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/MailManagement/UnsetMailbox" style="document" />

<wsdl:input>

<soap:body use="literal" />

</wsdl:input>

<wsdl:output>

<soap:body use="literal" />

</wsdl:output>

</wsdl:operation>

<wsdl:operation name="DisableMailbox">

<soap:operation soapAction="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/MailManagement/DisableMailbox" style="document" />

<wsdl:input>

<soap:body use="literal" />

</wsdl:input>

<wsdl:output>

<soap:body use="literal" />

</wsdl:output>

</wsdl:operation>

<wsdl:operation name="DeleteMailbox">

<soap:operation soapAction="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/MailManagement/DeleteMailbox" style="document" />

<wsdl:input>

<soap:body use="literal" />

</wsdl:input>

<wsdl:output>

<soap:body use="literal" />

</wsdl:output>

</wsdl:operation>

<wsdl:operation name="EnableMailbox">

<soap:operation soapAction="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/MailManagement/EnableMailbox" style="document" />

<wsdl:input>

<soap:body use="literal" />

</wsdl:input>

<wsdl:output>

<soap:body use="literal" />

</wsdl:output>

</wsdl:operation>

<wsdl:operation name="GetAllMailboxes">

<soap:operation soapAction="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/MailManagement/GetAllMailboxes" style="document" />

<wsdl:input>

<soap:body use="literal" />

</wsdl:input>

<wsdl:output>

<soap:body use="literal" />

</wsdl:output>

</wsdl:operation>

<wsdl:operation name="GetAcceptedDomains">

<soap:operation soapAction="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/MailManagement/GetAcceptedDomains" style="document" />

<wsdl:input>

<soap:body use="literal" />

</wsdl:input>

<wsdl:output>

<soap:body use="literal" />

</wsdl:output>

</wsdl:operation>

<wsdl:operation name="GetEmailAddresses">

<soap:operation soapAction="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/MailManagement/GetEmailAddresses" style="document" />

<wsdl:input>

<soap:body use="literal" />

</wsdl:input>

<wsdl:output>

<soap:body use="literal" />

</wsdl:output>

</wsdl:operation>

<wsdl:operation name="SetEmailAddresses">

<soap:operation soapAction="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/MailManagement/SetEmailAddresses" style="document" />

<wsdl:input>

<soap:body use="literal" />

</wsdl:input>

<wsdl:output>

<soap:body use="literal" />

</wsdl:output>

</wsdl:operation>

</wsdl:binding>

<wsdl:binding name="DefaultBinding_CustomizationManagement" type="tns:CustomizationManagement">

<soap:binding transport="http://schemas.xmlsoap.org/soap/http" />

<wsdl:operation name="GetCustomizationInformation">

<soap:operation soapAction="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/CustomizationManagement/GetCustomizationInformation" style="document" />

<wsdl:input>

<soap:body use="literal" />

</wsdl:input>

<wsdl:output>

<soap:body use="literal" />

</wsdl:output>

</wsdl:operation>

</wsdl:binding>

<wsdl:binding name="DefaultBinding_UserManagement" type="tns:UserManagement">

<soap:binding transport="http://schemas.xmlsoap.org/soap/http" />

<wsdl:operation name="GetUsers">

<soap:operation soapAction="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/UserManagement/GetUsers" style="document" />

<wsdl:input>

<soap:body use="literal" />

</wsdl:input>

<wsdl:output>

<soap:body use="literal" />

</wsdl:output>

</wsdl:operation>

<wsdl:operation name="GetUserGroups">

<soap:operation soapAction="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/UserManagement/GetUserGroups" style="document" />

<wsdl:input>

<soap:body use="literal" />

</wsdl:input>

<wsdl:output>

<soap:body use="literal" />

</wsdl:output>

</wsdl:operation>

<wsdl:operation name="GetConnectionInfo">

<soap:operation soapAction="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/UserManagement/GetConnectionInfo" style="document" />

<wsdl:input>

<soap:body use="literal" />

</wsdl:input>

<wsdl:output>

<soap:body use="literal" />

</wsdl:output>

</wsdl:operation>

<wsdl:operation name="EnableUser">

<soap:operation soapAction="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/UserManagement/EnableUser" style="document" />

<wsdl:input>

<soap:body use="literal" />

</wsdl:input>

<wsdl:output>

<soap:body use="literal" />

</wsdl:output>

</wsdl:operation>

<wsdl:operation name="DisableUser">

<soap:operation soapAction="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/UserManagement/DisableUser" style="document" />

<wsdl:input>

<soap:body use="literal" />

</wsdl:input>

<wsdl:output>

<soap:body use="literal" />

</wsdl:output>

</wsdl:operation>

<wsdl:operation name="SetUserPassword">

<soap:operation soapAction="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/UserManagement/SetUserPassword" style="document" />

<wsdl:input>

<soap:body use="literal" />

</wsdl:input>

<wsdl:output>

<soap:body use="literal" />

</wsdl:output>

</wsdl:operation>

<wsdl:operation name="UpdateUser">

<soap:operation soapAction="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/UserManagement/UpdateUser" style="document" />

<wsdl:input>

<soap:body use="literal" />

</wsdl:input>

<wsdl:output>

<soap:body use="literal" />

</wsdl:output>

</wsdl:operation>

<wsdl:operation name="AddUsersToUserGroup">

<soap:operation soapAction="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/UserManagement/AddUsersToUserGroup" style="document" />

<wsdl:input>

<soap:body use="literal" />

</wsdl:input>

<wsdl:output>

<soap:body use="literal" />

</wsdl:output>

</wsdl:operation>

<wsdl:operation name="RemoveUsersFromUserGroup">

<soap:operation soapAction="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/UserManagement/RemoveUsersFromUserGroup" style="document" />

<wsdl:input>

<soap:body use="literal" />

</wsdl:input>

<wsdl:output>

<soap:body use="literal" />

</wsdl:output>

</wsdl:operation>

<wsdl:operation name="AddStandardUser">

<soap:operation soapAction="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/UserManagement/AddStandardUser" style="document" />

<wsdl:input>

<soap:body use="literal" />

</wsdl:input>

<wsdl:output>

<soap:body use="literal" />

</wsdl:output>

</wsdl:operation>

<wsdl:operation name="RemoveUser">

<soap:operation soapAction="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/UserManagement/RemoveUser" style="document" />

<wsdl:input>

<soap:body use="literal" />

</wsdl:input>

<wsdl:output>

<soap:body use="literal" />

</wsdl:output>

</wsdl:operation>

</wsdl:binding>

<wsdl:binding name="DefaultBinding_StorageManagement" type="tns:StorageManagement">

<soap:binding transport="http://schemas.xmlsoap.org/soap/http" />

<wsdl:operation name="GetServers">

<soap:operation soapAction="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/StorageManagement/GetServers" style="document" />

<wsdl:input>

<soap:body use="literal" />

</wsdl:input>

<wsdl:output>

<soap:body use="literal" />

</wsdl:output>

</wsdl:operation>

<wsdl:operation name="GetStorageServerDrives">

<soap:operation soapAction="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/StorageManagement/GetStorageServerDrives" style="document" />

<wsdl:input>

<soap:body use="literal" />

</wsdl:input>

<wsdl:output>

<soap:body use="literal" />

</wsdl:output>

</wsdl:operation>

<wsdl:operation name="GetServerDrives">

<soap:operation soapAction="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/StorageManagement/GetServerDrives" style="document" />

<wsdl:input>

<soap:body use="literal" />

</wsdl:input>

<wsdl:output>

<soap:body use="literal" />

</wsdl:output>

</wsdl:operation>

<wsdl:operation name="GetServerFolders">

<soap:operation soapAction="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/StorageManagement/GetServerFolders" style="document" />

<wsdl:input>

<soap:body use="literal" />

</wsdl:input>

<wsdl:output>

<soap:body use="literal" />

</wsdl:output>

</wsdl:operation>

<wsdl:operation name="CreateServerFolder">

<soap:operation soapAction="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/StorageManagement/CreateServerFolder" style="document" />

<wsdl:input>

<soap:body use="literal" />

</wsdl:input>

<wsdl:output>

<soap:body use="literal" />

</wsdl:output>

</wsdl:operation>

<wsdl:operation name="RemoveServerFolder">

<soap:operation soapAction="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/StorageManagement/RemoveServerFolder" style="document" />

<wsdl:input>

<soap:body use="literal" />

</wsdl:input>

<wsdl:output>

<soap:body use="literal" />

</wsdl:output>

</wsdl:operation>

<wsdl:operation name="RenameServerFolder">

<soap:operation soapAction="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/StorageManagement/RenameServerFolder" style="document" />

<wsdl:input>

<soap:body use="literal" />

</wsdl:input>

<wsdl:output>

<soap:body use="literal" />

</wsdl:output>

</wsdl:operation>

<wsdl:operation name="ModifyServerFolderByUserName">

<soap:operation soapAction="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/StorageManagement/ModifyServerFolderByUserName" style="document" />

<wsdl:input>

<soap:body use="literal" />

</wsdl:input>

<wsdl:output>

<soap:body use="literal" />

</wsdl:output>

</wsdl:operation>

<wsdl:operation name="ModifyServerFolderByUserSid">

<soap:operation soapAction="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/StorageManagement/ModifyServerFolderByUserSid" style="document" />

<wsdl:input>

<soap:body use="literal" />

</wsdl:input>

<wsdl:output>

<soap:body use="literal" />

</wsdl:output>

</wsdl:operation>

</wsdl:binding>

<wsdl:binding name="DefaultBinding_ServerManagement" type="tns:ServerManagement">

<soap:binding transport="http://schemas.xmlsoap.org/soap/http" />

<wsdl:operation name="GetServerInformation">

<soap:operation soapAction="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/ServerManagement/GetServerInformation" style="document" />

<wsdl:input>

<soap:body use="literal" />

</wsdl:input>

<wsdl:output>

<soap:body use="literal" />

</wsdl:output>

</wsdl:operation>

</wsdl:binding>

<wsdl:binding name="DefaultBinding_ServiceManagement" type="tns:ServiceManagement">

<soap:binding transport="http://schemas.xmlsoap.org/soap/http" />

<wsdl:operation name="GetPermittedBuiltInServices">

<soap:operation soapAction="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/ServiceManagement/GetPermittedBuiltInServices" style="document" />

<wsdl:input>

<soap:body use="literal" />

</wsdl:input>

<wsdl:output>

<soap:body use="literal" />

</wsdl:output>

</wsdl:operation>

</wsdl:binding>

<wsdl:binding name="DefaultBinding_DeviceManagement" type="tns:DeviceManagement">

<soap:binding transport="http://schemas.xmlsoap.org/soap/http" />

<wsdl:operation name="GetDevices">

<soap:operation soapAction="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/DeviceManagement/GetDevices" style="document" />

<wsdl:input>

<soap:body use="literal" />

</wsdl:input>

<wsdl:output>

<soap:body use="literal" />

</wsdl:output>

</wsdl:operation>

<wsdl:operation name="StartBackup">

<soap:operation soapAction="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/DeviceManagement/StartBackup" style="document" />

<wsdl:input>

<soap:body use="literal" />

</wsdl:input>

<wsdl:output>

<soap:body use="literal" />

</wsdl:output>

</wsdl:operation>

<wsdl:operation name="StopBackup">

<soap:operation soapAction="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/DeviceManagement/StopBackup" style="document" />

<wsdl:input>

<soap:body use="literal" />

</wsdl:input>

<wsdl:output>

<soap:body use="literal" />

</wsdl:output>

</wsdl:operation>

</wsdl:binding>

<wsdl:binding name="DefaultBinding_AlertManagement" type="tns:AlertManagement">

<soap:binding transport="http://schemas.xmlsoap.org/soap/http" />

<wsdl:operation name="GetAlerts">

<soap:operation soapAction="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/AlertManagement/GetAlerts" style="document" />

<wsdl:input>

<soap:body use="literal" />

</wsdl:input>

<wsdl:output>

<soap:body use="literal" />

</wsdl:output>

</wsdl:operation>

<wsdl:operation name="EnableAlert">

<soap:operation soapAction="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/AlertManagement/EnableAlert" style="document" />

<wsdl:input>

<soap:body use="literal" />

</wsdl:input>

<wsdl:output>

<soap:body use="literal" />

</wsdl:output>

</wsdl:operation>

<wsdl:operation name="DisableAlert">

<soap:operation soapAction="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/AlertManagement/DisableAlert" style="document" />

<wsdl:input>

<soap:body use="literal" />

</wsdl:input>

<wsdl:output>

<soap:body use="literal" />

</wsdl:output>

</wsdl:operation>

<wsdl:operation name="ClearAlert">

<soap:operation soapAction="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/AlertManagement/ClearAlert" style="document" />

<wsdl:input>

<soap:body use="literal" />

</wsdl:input>

<wsdl:output>

<soap:body use="literal" />

</wsdl:output>

</wsdl:operation>

<wsdl:operation name="RepairAlertAsync">

<soap:operation soapAction="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/AlertManagement/RepairAlertAsync" style="document" />

<wsdl:input>

<soap:body use="literal" />

</wsdl:input>

<wsdl:output>

<soap:body use="literal" />

</wsdl:output>

</wsdl:operation>

</wsdl:binding>

<wsdl:binding name="DefaultBinding_SharePointSiteMgmt" type="tns:SharePointSiteMgmt">

<soap:binding transport="http://schemas.xmlsoap.org/soap/http" />

<wsdl:operation name="GetSharePointSites">

<soap:operation soapAction="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi/SharePointSiteMgmt/GetSharePointSites" style="document" />

<wsdl:input>

<soap:body use="literal" />

</wsdl:input>

<wsdl:output>

<soap:body use="literal" />

</wsdl:output>

</wsdl:operation>

</wsdl:binding>

</wsdl:definitions>

<a id="Section_7"></a>
# 7 Appendix B: Full Xml Schema

| Schema name | Prefix | Section |
| --- | --- | --- |
| http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi | tns1 | [7.1](#Section_7.1) |
| http://schemas.datacontract.org/2004/07/Microsoft.WindowsServerSolutions.Storage | tns2 | [7.2](#Section_7.2) |
| http://schemas.microsoft.com/2003/10/Serialization/Arrays | tns4 | [7.3](#Section_7.3) |
| http://schemas.microsoft.com/2003/10/Serialization/ | tns5 | [7.6](#Section_7.6) |
| http://schemas.datacontract.org/2004/07/Microsoft.WindowsServerSolutions.AzureADObjectModel | tns6 | [7.4](#Section_7.4) |
| http://schemas.datacontract.org/2004/07/System.Collections.ObjectModel | tns7 | [7.5](#Section_7.5) |
| http://schemas.datacontract.org/2004/07/Microsoft.WindowsServerSolutions.WebApi.Management.Storage | tns8 | [7.7](#Section_7.7) |
| http://schemas.datacontract.org/2004/07/Microsoft.WindowsServerSolutions.O365Integration | tns9 | [7.8](#Section_7.8) |
| http://schemas.microsoft.com/Message | tns10 | [7.9](#Section_7.9) |

<a id="Section_7.1"></a>
## 7.1 http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi Schema

<?xml version="1.0" encoding="utf-8"?>

<xs:schema xmlns:ser="http://schemas.microsoft.com/2003/10/Serialization/" elementFormDefault="qualified" targetNamespace="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" xmlns:xs="http://www.w3.org/2001/XMLSchema">

<xs:import namespace="http://schemas.datacontract.org/2004/07/Microsoft.WindowsServerSolutions.AzureADObjectModel" />

<xs:import namespace="http://schemas.microsoft.com/Message" />

<xs:import namespace="http://schemas.datacontract.org/2004/07/Microsoft.WindowsServerSolutions.Storage" />

<xs:import namespace="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />

<xs:import namespace="http://schemas.microsoft.com/2003/10/Serialization/" />

<xs:import namespace="http://schemas.datacontract.org/2004/07/System.Collections.ObjectModel" />

<xs:import namespace="http://schemas.datacontract.org/2004/07/Microsoft.WindowsServerSolutions.WebApi.Management.Storage" />

<xs:import namespace="http://schemas.datacontract.org/2004/07/Microsoft.WindowsServerSolutions.O365Integration" />

<xs:element name="GetMSOUser">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="localUserName" nillable="true" type="xs:string" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:element name="GetMSOUserResponse">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="GetMSOUserResult" nillable="true" xmlns:q1="http://schemas.datacontract.org/2004/07/Microsoft.WindowsServerSolutions.AzureADObjectModel" type="q1:MSOUser" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:element name="GetAllMSOUsersResponse">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="GetAllMSOUsersResult" nillable="true" xmlns:q2="http://schemas.datacontract.org/2004/07/Microsoft.WindowsServerSolutions.AzureADObjectModel" type="q2:ArrayOfMSOUser" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:element name="CreateMSOUser">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="localUserName" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="onlineUserName" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="password" nillable="true" type="xs:string" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:element name="AssignMSOUser">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="localUserName" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="onlineUserName" nillable="true" type="xs:string" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:element name="UnassignMSOUser">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="localUserName" nillable="true" type="xs:string" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:element name="EnableMSOUser">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="localUserName" nillable="true" type="xs:string" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:element name="DisableMSOUser">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="localUserName" nillable="true" type="xs:string" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:element name="DeleteMSOUser">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="localUserName" nillable="true" type="xs:string" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:element name="GetAcceptedMSODomains">

<xs:complexType>

<xs:sequence />

</xs:complexType>

</xs:element>

<xs:element name="GetAcceptedMSODomainsResponse">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="GetAcceptedMSODomainsResult" nillable="true" xmlns:q3="http://schemas.datacontract.org/2004/07/Microsoft.WindowsServerSolutions.AzureADObjectModel" type="q3:ArrayOfMSODomain" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:element name="GetMSOSubscriptionInfoResponse">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="GetMSOSubscriptionInfoResult" nillable="true" xmlns:q4="http://schemas.datacontract.org/2004/07/Microsoft.WindowsServerSolutions.AzureADObjectModel" type="q4:MSOTenantInformation" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:element name="SetMSOLicense">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="localUserName" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="licenses" nillable="true" xmlns:q5="http://schemas.datacontract.org/2004/07/Microsoft.WindowsServerSolutions.AzureADObjectModel" type="q5:ArrayOfMSOLicense" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:element name="DownloadFile">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="path" nillable="true" type="xs:string" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:element name="DownloadFileResponse">

<xs:complexType>

<xs:sequence>

<xs:element name="DownloadFileResult" xmlns:q6="http://schemas.microsoft.com/Message" type="q6:StreamBody" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:element name="UploadFile">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="path" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="overwrite" nillable="true" type="xs:string" />

<xs:element name="content" xmlns:q7="http://schemas.microsoft.com/Message" type="q7:StreamBody" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:element name="GetThumbnail">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="path" nillable="true" type="xs:string" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:element name="GetThumbnailResponse">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="GetThumbnailResult" nillable="true" xmlns:q8="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" type="q8:ItemThumbnail" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:complexType name="ItemThumbnail">

<xs:sequence>

<xs:element minOccurs="0" name="Buffer" nillable="true" type="xs:base64Binary" />

<xs:element minOccurs="0" name="Format" xmlns:q9="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" type="q9:ThumbnailFormat" />

<xs:element minOccurs="0" name="Height" type="xs:int" />

<xs:element minOccurs="0" name="Width" type="xs:int" />

</xs:sequence>

</xs:complexType>

<xs:element name="ItemThumbnail" nillable="true" xmlns:q10="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" type="q10:ItemThumbnail" />

<xs:simpleType name="ThumbnailFormat">

<xs:restriction base="xs:string">

<xs:enumeration value="Jpeg" />

<xs:enumeration value="Png" />

</xs:restriction>

</xs:simpleType>

<xs:element name="ThumbnailFormat" nillable="true" xmlns:q11="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" type="q11:ThumbnailFormat" />

<xs:element name="ListItems">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="index" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="count" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="path" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="filter" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="sortByField" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="ascending" nillable="true" type="xs:string" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:element name="ListItemsResponse">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="ListItemsResult" nillable="true" xmlns:q12="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" type="q12:ItemList" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:complexType name="ItemList">

<xs:sequence>

<xs:element minOccurs="0" name="Items" nillable="true" xmlns:q13="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" type="q13:ArrayOfItemInfo" />

<xs:element minOccurs="0" name="TotalCount" type="xs:int" />

</xs:sequence>

</xs:complexType>

<xs:element name="ItemList" nillable="true" xmlns:q14="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" type="q14:ItemList" />

<xs:complexType name="ArrayOfItemInfo">

<xs:sequence>

<xs:element minOccurs="0" maxOccurs="unbounded" name="ItemInfo" nillable="true" xmlns:q15="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" type="q15:ItemInfo" />

</xs:sequence>

</xs:complexType>

<xs:element name="ArrayOfItemInfo" nillable="true" xmlns:q16="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" type="q16:ArrayOfItemInfo" />

<xs:complexType name="ItemInfo">

<xs:sequence>

<xs:element minOccurs="0" name="AccessPermission" xmlns:q17="http://schemas.datacontract.org/2004/07/Microsoft.WindowsServerSolutions.Storage" type="q17:Permission" />

<xs:element minOccurs="0" name="CreateTime" type="xs:dateTime" />

<xs:element minOccurs="0" name="CreateTimeUtc" type="xs:dateTime" />

<xs:element minOccurs="0" name="IsDirectory" type="xs:boolean" />

<xs:element minOccurs="0" name="ModifiedTime" type="xs:dateTime" />

<xs:element minOccurs="0" name="ModifiedTimeUtc" type="xs:dateTime" />

<xs:element minOccurs="0" name="Name" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="Path" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="Size" type="xs:long" />

</xs:sequence>

</xs:complexType>

<xs:element name="ItemInfo" nillable="true" xmlns:q18="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" type="q18:ItemInfo" />

<xs:element name="SearchItems">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="index" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="count" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="query" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="sortByField" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="ascending" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="scope" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="timeoutSeconds" nillable="true" type="xs:string" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:element name="SearchItemsResponse">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="SearchItemsResult" nillable="true" xmlns:q19="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" type="q19:SearchItemList" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:complexType name="SearchItemList">

<xs:complexContent mixed="false">

<xs:extension xmlns:q20="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" base="q20:ItemList">

<xs:sequence>

<xs:element minOccurs="0" name="UnsearchedShares" nillable="true" xmlns:q21="http://schemas.microsoft.com/2003/10/Serialization/Arrays" type="q21:ArrayOfstring" />

</xs:sequence>

</xs:extension>

</xs:complexContent>

</xs:complexType>

<xs:element name="SearchItemList" nillable="true" xmlns:q22="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" type="q22:SearchItemList" />

<xs:element name="GetUnusedNewFolderName">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="path" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="language" nillable="true" type="xs:string" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:element name="GetUnusedNewFolderNameResponse">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="GetUnusedNewFolderNameResult" nillable="true" type="xs:string" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:element name="GetItemMetadata">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="path" nillable="true" type="xs:string" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:element name="GetItemMetadataResponse">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="GetItemMetadataResult" nillable="true" xmlns:q23="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" type="q23:ItemInfo" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:element name="CreateFolder">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="path" nillable="true" type="xs:string" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:element name="Rename">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="path" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="newName" nillable="true" type="xs:string" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:element name="Delete">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="path" nillable="true" type="xs:string" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:element name="GetAccessUri">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="path" nillable="true" type="xs:string" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:element name="GetAccessUriResponse">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="GetAccessUriResult" nillable="true" type="xs:anyURI" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:element name="Move">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="originalPath" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="newPath" nillable="true" type="xs:string" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:element name="Copy">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="originalPath" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="newPath" nillable="true" type="xs:string" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:complexType name="Office365Mailbox">

<xs:complexContent mixed="false">

<xs:extension xmlns:q24="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" base="q24:Mailbox">

<xs:sequence>

<xs:element minOccurs="0" name="Activated" type="xs:boolean" />

</xs:sequence>

</xs:extension>

</xs:complexContent>

</xs:complexType>

<xs:element name="Office365Mailbox" nillable="true" xmlns:q25="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" type="q25:Office365Mailbox" />

<xs:complexType name="Mailbox">

<xs:sequence>

<xs:element minOccurs="0" name="Email" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="UserName" nillable="true" type="xs:string" />

</xs:sequence>

</xs:complexType>

<xs:element name="Mailbox" nillable="true" xmlns:q26="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" type="q26:Mailbox" />

<xs:complexType name="ExchangeServerMailbox">

<xs:complexContent mixed="false">

<xs:extension xmlns:q27="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" base="q27:Mailbox">

<xs:sequence>

<xs:element minOccurs="0" name="Quota" type="xs:double" />

<xs:element minOccurs="0" name="QuotaEnforced" type="xs:boolean" />

</xs:sequence>

</xs:extension>

</xs:complexContent>

</xs:complexType>

<xs:element name="ExchangeServerMailbox" nillable="true" xmlns:q28="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" type="q28:ExchangeServerMailbox" />

<xs:complexType name="HostedMailbox">

<xs:complexContent mixed="false">

<xs:extension xmlns:q29="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" base="q29:Mailbox">

<xs:sequence>

<xs:element minOccurs="0" name="Enabled" type="xs:boolean" />

</xs:sequence>

</xs:extension>

</xs:complexContent>

</xs:complexType>

<xs:element name="HostedMailbox" nillable="true" xmlns:q30="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" type="q30:HostedMailbox" />

<xs:element name="GetMailbox">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="username" nillable="true" type="xs:string" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:element name="GetMailboxResponse">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="GetMailboxResult" nillable="true" xmlns:q31="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" type="q31:Mailbox" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:element name="CreateMailbox">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="username" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="email" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="password" nillable="true" type="xs:string" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:element name="CreateMailboxResponse">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="CreateMailboxResult" nillable="true" xmlns:q32="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" type="q32:Mailbox" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:element name="SetMailbox">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="username" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="email" nillable="true" type="xs:string" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:element name="UnsetMailbox">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="username" nillable="true" type="xs:string" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:element name="DisableMailbox">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="username" nillable="true" type="xs:string" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:element name="DeleteMailbox">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="username" nillable="true" type="xs:string" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:element name="EnableMailbox">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="username" nillable="true" type="xs:string" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:element name="GetAllMailboxesResponse">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="GetAllMailboxesResult" nillable="true" xmlns:q33="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" type="q33:ArrayOfMailbox" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:complexType name="ArrayOfMailbox">

<xs:sequence>

<xs:element minOccurs="0" maxOccurs="unbounded" name="Mailbox" nillable="true" xmlns:q34="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" type="q34:Mailbox" />

</xs:sequence>

</xs:complexType>

<xs:element name="ArrayOfMailbox" nillable="true" xmlns:q35="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" type="q35:ArrayOfMailbox" />

<xs:element name="GetAcceptedDomainsResponse">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="GetAcceptedDomainsResult" nillable="true" xmlns:q36="http://schemas.microsoft.com/2003/10/Serialization/Arrays" type="q36:ArrayOfstring" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:element name="GetEmailAddresses">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="username" nillable="true" type="xs:string" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:element name="GetEmailAddressesResponse">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="GetEmailAddressesResult" nillable="true" xmlns:q37="http://schemas.microsoft.com/2003/10/Serialization/Arrays" type="q37:ArrayOfstring" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:element name="SetEmailAddresses">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="username" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="emails" nillable="true" type="xs:string" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:complexType name="CustomizationInfo">

<xs:sequence>

<xs:element minOccurs="0" name="BackgroundImage" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="Links" nillable="true" xmlns:q38="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" type="q38:ArrayOfLink" />

<xs:element minOccurs="0" name="Logo" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="Title" nillable="true" type="xs:string" />

</xs:sequence>

</xs:complexType>

<xs:element name="CustomizationInfo" nillable="true" xmlns:q39="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" type="q39:CustomizationInfo" />

<xs:complexType name="ArrayOfLink">

<xs:sequence>

<xs:element minOccurs="0" maxOccurs="unbounded" name="Link" nillable="true" xmlns:q40="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" type="q40:Link" />

</xs:sequence>

</xs:complexType>

<xs:element name="ArrayOfLink" nillable="true" xmlns:q41="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" type="q41:ArrayOfLink" />

<xs:complexType name="Link">

<xs:sequence>

<xs:element minOccurs="0" name="Address" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="Title" nillable="true" type="xs:string" />

</xs:sequence>

</xs:complexType>

<xs:element name="Link" nillable="true" xmlns:q42="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" type="q42:Link" />

<xs:element name="GetCustomizationInformationResponse">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="GetCustomizationInformationResult" nillable="true" xmlns:q43="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" type="q43:CustomizationInfo" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:element name="GetUsers">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="startingIndex" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="amount" nillable="true" type="xs:string" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:element name="GetUsersResponse">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="GetUsersResult" nillable="true" xmlns:q44="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" type="q44:PartialCollection_Of_UserInfo" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:complexType name="PartialCollection_Of_UserInfo">

<xs:annotation>

<xs:appinfo>

<GenericType Name="PartialCollection_Of_{0}" Namespace="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" xmlns="http://schemas.microsoft.com/2003/10/Serialization/">

<GenericParameter Name="UserInfo" Namespace="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" />

</GenericType>

</xs:appinfo>

</xs:annotation>

<xs:sequence>

<xs:element minOccurs="0" name="CollectionChunk" nillable="true" xmlns:q45="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" type="q45:ArrayOfUserInfo" />

<xs:element minOccurs="0" name="CollectionModified" type="xs:dateTime" />

<xs:element minOccurs="0" name="CollectionSize" type="xs:int" />

</xs:sequence>

</xs:complexType>

<xs:element name="PartialCollection_Of_UserInfo" nillable="true" xmlns:q46="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" type="q46:PartialCollection_Of_UserInfo" />

<xs:complexType name="ArrayOfUserInfo">

<xs:sequence>

<xs:element minOccurs="0" maxOccurs="unbounded" name="UserInfo" nillable="true" xmlns:q47="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" type="q47:UserInfo" />

</xs:sequence>

</xs:complexType>

<xs:element name="ArrayOfUserInfo" nillable="true" xmlns:q48="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" type="q48:ArrayOfUserInfo" />

<xs:complexType name="UserInfo">

<xs:sequence>

<xs:element minOccurs="0" name="AccessLevel" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="CanChangePassword" type="xs:boolean" />

<xs:element minOccurs="0" name="FirstName" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="Key" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="LastName" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="RemoteWebAccess" type="xs:boolean" />

<xs:element minOccurs="0" name="UserGroups" nillable="true" xmlns:q49="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" type="q49:ArrayOfGroupInfo" />

<xs:element minOccurs="0" name="UserGuid" type="ser:guid" />

<xs:element minOccurs="0" name="UserName" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="UserStatus" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="VpnAccess" type="xs:boolean" />

</xs:sequence>

</xs:complexType>

<xs:element name="UserInfo" nillable="true" xmlns:q50="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" type="q50:UserInfo" />

<xs:complexType name="ArrayOfGroupInfo">

<xs:sequence>

<xs:element minOccurs="0" maxOccurs="unbounded" name="GroupInfo" nillable="true" xmlns:q51="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" type="q51:GroupInfo" />

</xs:sequence>

</xs:complexType>

<xs:element name="ArrayOfGroupInfo" nillable="true" xmlns:q52="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" type="q52:ArrayOfGroupInfo" />

<xs:complexType name="GroupInfo">

<xs:sequence>

<xs:element minOccurs="0" name="CurrentSid" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="GroupName" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="Guid" type="ser:guid" />

<xs:element minOccurs="0" name="RemoteWebAccess" type="xs:boolean" />

<xs:element minOccurs="0" name="VpnAccess" type="xs:boolean" />

<xs:element minOccurs="0" name="WindowsAccount" nillable="true" type="xs:string" />

</xs:sequence>

</xs:complexType>

<xs:element name="GroupInfo" nillable="true" xmlns:q53="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" type="q53:GroupInfo" />

<xs:element name="GetUserGroupsResponse">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="GetUserGroupsResult" nillable="true" xmlns:q54="http://schemas.datacontract.org/2004/07/System.Collections.ObjectModel" type="q54:ReadOnlyCollectionOfGroupInfoEV6sb80H" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:complexType name="ConnectionInfo">

<xs:sequence>

<xs:element minOccurs="0" name="ClientInfo" nillable="true" xmlns:q55="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" type="q55:ConnectionClientInfo" />

<xs:element minOccurs="0" name="EndTime" nillable="true" type="xs:dateTime" />

<xs:element minOccurs="0" name="ServiceType" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="StartTime" type="xs:dateTime" />

<xs:element minOccurs="0" name="UserInfo" nillable="true" xmlns:q56="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" type="q56:RemoteConnectionUserInfo" />

</xs:sequence>

</xs:complexType>

<xs:element name="ConnectionInfo" nillable="true" xmlns:q57="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" type="q57:ConnectionInfo" />

<xs:complexType name="ConnectionClientInfo">

<xs:sequence>

<xs:element minOccurs="0" name="ClientApplicationName" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="ClientApplicationPublisher" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="ClientApplicationVersion" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="ClientHostname" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="ClientIPAddress" nillable="true" type="xs:string" />

</xs:sequence>

</xs:complexType>

<xs:element name="ConnectionClientInfo" nillable="true" xmlns:q58="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" type="q58:ConnectionClientInfo" />

<xs:complexType name="RemoteConnectionUserInfo">

<xs:sequence>

<xs:element minOccurs="0" name="AccountName" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="FirstName" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="LastName" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="SidValue" nillable="true" type="xs:string" />

</xs:sequence>

</xs:complexType>

<xs:element name="RemoteConnectionUserInfo" nillable="true" xmlns:q59="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" type="q59:RemoteConnectionUserInfo" />

<xs:element name="GetConnectionInfo">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="startingIndex" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="amount" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="userName" nillable="true" type="xs:string" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:element name="GetConnectionInfoResponse">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="GetConnectionInfoResult" nillable="true" xmlns:q60="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" type="q60:PartialCollection_Of_ConnectionInfo" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:complexType name="PartialCollection_Of_ConnectionInfo">

<xs:annotation>

<xs:appinfo>

<GenericType Name="PartialCollection_Of_{0}" Namespace="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" xmlns="http://schemas.microsoft.com/2003/10/Serialization/">

<GenericParameter Name="ConnectionInfo" Namespace="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" />

</GenericType>

</xs:appinfo>

</xs:annotation>

<xs:sequence>

<xs:element minOccurs="0" name="CollectionChunk" nillable="true" xmlns:q61="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" type="q61:ArrayOfConnectionInfo" />

<xs:element minOccurs="0" name="CollectionModified" type="xs:dateTime" />

<xs:element minOccurs="0" name="CollectionSize" type="xs:int" />

</xs:sequence>

</xs:complexType>

<xs:element name="PartialCollection_Of_ConnectionInfo" nillable="true" xmlns:q62="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" type="q62:PartialCollection_Of_ConnectionInfo" />

<xs:complexType name="ArrayOfConnectionInfo">

<xs:sequence>

<xs:element minOccurs="0" maxOccurs="unbounded" name="ConnectionInfo" nillable="true" xmlns:q63="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" type="q63:ConnectionInfo" />

</xs:sequence>

</xs:complexType>

<xs:element name="ArrayOfConnectionInfo" nillable="true" xmlns:q64="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" type="q64:ArrayOfConnectionInfo" />

<xs:element name="EnableUser">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="userId" nillable="true" type="xs:string" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:element name="DisableUser">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="userId" nillable="true" type="xs:string" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:element name="SetUserPassword">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="userId" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="password" nillable="true" type="xs:string" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:element name="UpdateUser">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="id" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="firstName" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="lastName" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="remoteWebAccess" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="vpnAccess" nillable="true" type="xs:string" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:element name="AddUsersToUserGroup">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="groupGuid" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="membersToAdd" nillable="true" type="xs:string" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:element name="RemoveUsersFromUserGroup">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="groupGuid" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="membersToRemove" nillable="true" type="xs:string" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:element name="AddStandardUser">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="userName" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="password" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="firstName" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="lastName" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="remoteWebAccess" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="vpnAccess" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="userGroups" nillable="true" type="xs:string" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:element name="RemoveUser">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="id" nillable="true" type="xs:string" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:element name="GetServersResponse">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="GetServersResult" nillable="true" xmlns:q65="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" type="q65:ArrayOfStorageServerInfo" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:complexType name="ArrayOfStorageServerInfo">

<xs:sequence>

<xs:element minOccurs="0" maxOccurs="unbounded" name="StorageServerInfo" nillable="true" xmlns:q66="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" type="q66:StorageServerInfo" />

</xs:sequence>

</xs:complexType>

<xs:element name="ArrayOfStorageServerInfo" nillable="true" xmlns:q67="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" type="q67:ArrayOfStorageServerInfo" />

<xs:complexType name="StorageServerInfo">

<xs:sequence>

<xs:element minOccurs="0" name="DeviceName" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="DfsNameSpace" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="DfsPhysicalPath" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="IsSecondServer" type="xs:boolean" />

<xs:element minOccurs="0" name="OperatingSystemName" nillable="true" type="xs:string" />

</xs:sequence>

</xs:complexType>

<xs:element name="StorageServerInfo" nillable="true" xmlns:q68="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" type="q68:StorageServerInfo" />

<xs:element name="GetStorageServerDrives">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="serverName" nillable="true" type="xs:string" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:element name="GetStorageServerDrivesResponse">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="GetStorageServerDrivesResult" nillable="true" xmlns:q69="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" type="q69:ArrayOfStorageDriveInfo" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:complexType name="ArrayOfStorageDriveInfo">

<xs:sequence>

<xs:element minOccurs="0" maxOccurs="unbounded" name="StorageDriveInfo" nillable="true" xmlns:q70="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" type="q70:StorageDriveInfo" />

</xs:sequence>

</xs:complexType>

<xs:element name="ArrayOfStorageDriveInfo" nillable="true" xmlns:q71="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" type="q71:ArrayOfStorageDriveInfo" />

<xs:complexType name="StorageDriveInfo">

<xs:sequence>

<xs:element minOccurs="0" name="DeviceName" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="FileSystem" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="ShortName" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="Size" type="xs:unsignedLong" />

<xs:element minOccurs="0" name="SizeRemaining" type="xs:unsignedLong" />

<xs:element minOccurs="0" name="VolumeName" nillable="true" type="xs:string" />

</xs:sequence>

</xs:complexType>

<xs:element name="StorageDriveInfo" nillable="true" xmlns:q72="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" type="q72:StorageDriveInfo" />

<xs:element name="GetServerDrives">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="index" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="count" nillable="true" type="xs:string" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:element name="GetServerDrivesResponse">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="GetServerDrivesResult" nillable="true" xmlns:q73="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" type="q73:PartialCollection_Of_DriveInfo" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:complexType name="PartialCollection_Of_DriveInfo">

<xs:annotation>

<xs:appinfo>

<GenericType Name="PartialCollection_Of_{0}" Namespace="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" xmlns="http://schemas.microsoft.com/2003/10/Serialization/">

<GenericParameter Name="DriveInfo" Namespace="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" />

</GenericType>

</xs:appinfo>

</xs:annotation>

<xs:sequence>

<xs:element minOccurs="0" name="CollectionChunk" nillable="true" xmlns:q74="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" type="q74:ArrayOfDriveInfo" />

<xs:element minOccurs="0" name="CollectionModified" type="xs:dateTime" />

<xs:element minOccurs="0" name="CollectionSize" type="xs:int" />

</xs:sequence>

</xs:complexType>

<xs:element name="PartialCollection_Of_DriveInfo" nillable="true" xmlns:q75="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" type="q75:PartialCollection_Of_DriveInfo" />

<xs:complexType name="ArrayOfDriveInfo">

<xs:sequence>

<xs:element minOccurs="0" maxOccurs="unbounded" name="DriveInfo" nillable="true" xmlns:q76="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" type="q76:DriveInfo" />

</xs:sequence>

</xs:complexType>

<xs:element name="ArrayOfDriveInfo" nillable="true" xmlns:q77="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" type="q77:ArrayOfDriveInfo" />

<xs:complexType name="DriveInfo">

<xs:sequence>

<xs:element minOccurs="0" name="Capacity" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="DataStatus" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="DiskID" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="DriveGuid" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="FileSystemType" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="ID" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="MountPoint" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="Name" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="NextSnapshotTime" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="SnapshotsEnabled" type="xs:boolean" />

<xs:element minOccurs="0" name="Status" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="SystemDrive" type="xs:boolean" />

<xs:element minOccurs="0" name="UsedSpace" nillable="true" type="xs:string" />

</xs:sequence>

</xs:complexType>

<xs:element name="DriveInfo" nillable="true" xmlns:q78="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" type="q78:DriveInfo" />

<xs:element name="GetServerFolders">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="index" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="count" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="userName" nillable="true" type="xs:string" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:element name="GetServerFoldersResponse">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="GetServerFoldersResult" nillable="true" xmlns:q79="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" type="q79:PartialCollection_Of_FolderInfo" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:complexType name="PartialCollection_Of_FolderInfo">

<xs:annotation>

<xs:appinfo>

<GenericType Name="PartialCollection_Of_{0}" Namespace="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" xmlns="http://schemas.microsoft.com/2003/10/Serialization/">

<GenericParameter Name="FolderInfo" Namespace="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" />

</GenericType>

</xs:appinfo>

</xs:annotation>

<xs:sequence>

<xs:element minOccurs="0" name="CollectionChunk" nillable="true" xmlns:q80="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" type="q80:ArrayOfFolderInfo" />

<xs:element minOccurs="0" name="CollectionModified" type="xs:dateTime" />

<xs:element minOccurs="0" name="CollectionSize" type="xs:int" />

</xs:sequence>

</xs:complexType>

<xs:element name="PartialCollection_Of_FolderInfo" nillable="true" xmlns:q81="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" type="q81:PartialCollection_Of_FolderInfo" />

<xs:complexType name="ArrayOfFolderInfo">

<xs:sequence>

<xs:element minOccurs="0" maxOccurs="unbounded" name="FolderInfo" nillable="true" xmlns:q82="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" type="q82:FolderInfo" />

</xs:sequence>

</xs:complexType>

<xs:element name="ArrayOfFolderInfo" nillable="true" xmlns:q83="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" type="q83:ArrayOfFolderInfo" />

<xs:complexType name="FolderInfo">

<xs:sequence>

<xs:element minOccurs="0" name="AccessPermission" xmlns:q84="http://schemas.datacontract.org/2004/07/Microsoft.WindowsServerSolutions.Storage" type="q84:Permission" />

<xs:element minOccurs="0" name="CurrentStatus" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="Description" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="DriveFreeSpace" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="DriveID" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="FolderType" xmlns:q85="http://schemas.datacontract.org/2004/07/Microsoft.WindowsServerSolutions.WebApi.Management.Storage" type="q85:ServerFolderType" />

<xs:element minOccurs="0" name="ID" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="Name" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="Path" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="SharePath" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="Shared" type="xs:boolean" />

<xs:element minOccurs="0" name="UncPath" nillable="true" type="xs:string" />

</xs:sequence>

</xs:complexType>

<xs:element name="FolderInfo" nillable="true" xmlns:q86="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" type="q86:FolderInfo" />

<xs:element name="CreateServerFolder">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="shareName" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="overwritePermissions" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="path" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="description" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="serverName" nillable="true" type="xs:string" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:element name="RemoveServerFolder">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="id" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="deleteContents" nillable="true" type="xs:string" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:element name="RenameServerFolder">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="id" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="newName" nillable="true" type="xs:string" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:element name="ModifyServerFolderByUserName">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="id" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="userName" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="permission" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="name" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="description" nillable="true" type="xs:string" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:element name="ModifyServerFolderByUserSid">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="id" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="userSid" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="permission" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="name" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="description" nillable="true" type="xs:string" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:element name="GetServerInformationResponse">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="GetServerInformationResult" nillable="true" xmlns:q87="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" type="q87:ServerInfo" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:complexType name="ServerInfo">

<xs:sequence>

<xs:element minOccurs="0" name="IsMediaStreamingServiceAvailable" type="xs:boolean" />

<xs:element minOccurs="0" name="IsTsGatewayEnabled" type="xs:boolean" />

<xs:element minOccurs="0" name="ServerDomainGuid" type="ser:guid" />

<xs:element minOccurs="0" name="ServerGuid" type="ser:guid" />

<xs:element minOccurs="0" name="ServerInternetDomainName" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="ServerName" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="ServerSku" type="xs:int" />

<xs:element minOccurs="0" name="ServerUtcNow" type="xs:dateTime" />

<xs:element minOccurs="0" name="ServerVersion" nillable="true" type="xs:string" />

</xs:sequence>

</xs:complexType>

<xs:element name="ServerInfo" nillable="true" xmlns:q88="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" type="q88:ServerInfo" />

<xs:element name="GetPermittedBuiltInServicesResponse">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="GetPermittedBuiltInServicesResult" nillable="true" xmlns:q89="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" type="q89:ArrayOfWebApiProvider" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:complexType name="ArrayOfWebApiProvider">

<xs:sequence>

<xs:element minOccurs="0" maxOccurs="unbounded" name="WebApiProvider" nillable="true" xmlns:q90="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" type="q90:WebApiProvider" />

</xs:sequence>

</xs:complexType>

<xs:element name="ArrayOfWebApiProvider" nillable="true" xmlns:q91="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" type="q91:ArrayOfWebApiProvider" />

<xs:complexType name="WebApiProvider">

<xs:sequence>

<xs:element minOccurs="0" name="ContractName" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="ContractNameSpace" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="RelativeLocation" nillable="true" type="xs:anyURI" />

</xs:sequence>

</xs:complexType>

<xs:element name="WebApiProvider" nillable="true" xmlns:q92="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" type="q92:WebApiProvider" />

<xs:element name="GetDevices">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="startingIndex" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="amount" nillable="true" type="xs:string" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:element name="GetDevicesResponse">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="GetDevicesResult" nillable="true" xmlns:q93="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" type="q93:PartialCollection_Of_DeviceInfo" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:complexType name="PartialCollection_Of_DeviceInfo">

<xs:annotation>

<xs:appinfo>

<GenericType Name="PartialCollection_Of_{0}" Namespace="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" xmlns="http://schemas.microsoft.com/2003/10/Serialization/">

<GenericParameter Name="DeviceInfo" Namespace="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" />

</GenericType>

</xs:appinfo>

</xs:annotation>

<xs:sequence>

<xs:element minOccurs="0" name="CollectionChunk" nillable="true" xmlns:q94="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" type="q94:ArrayOfDeviceInfo" />

<xs:element minOccurs="0" name="CollectionModified" type="xs:dateTime" />

<xs:element minOccurs="0" name="CollectionSize" type="xs:int" />

</xs:sequence>

</xs:complexType>

<xs:element name="PartialCollection_Of_DeviceInfo" nillable="true" xmlns:q95="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" type="q95:PartialCollection_Of_DeviceInfo" />

<xs:complexType name="ArrayOfDeviceInfo">

<xs:sequence>

<xs:element minOccurs="0" maxOccurs="unbounded" name="DeviceInfo" nillable="true" xmlns:q96="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" type="q96:DeviceInfo" />

</xs:sequence>

</xs:complexType>

<xs:element name="ArrayOfDeviceInfo" nillable="true" xmlns:q97="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" type="q97:ArrayOfDeviceInfo" />

<xs:complexType name="DeviceInfo">

<xs:sequence>

<xs:element minOccurs="0" name="AntiSpywareStatus" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="AntiVirusStatus" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="BackupProgress" type="xs:int" />

<xs:element minOccurs="0" name="BackupStatus" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="CanBackup" type="xs:boolean" />

<xs:element minOccurs="0" name="DeviceDescription" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="DeviceName" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="DeviceType" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="FirewallStatus" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="Key" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="OSFamily" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="OSName" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="OSServicePack" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="OnlineStatus" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="SecurityCenterStatus" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="SystemType" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="UpdateDetailStatus" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="UpdateStatus" nillable="true" type="xs:string" />

</xs:sequence>

</xs:complexType>

<xs:element name="DeviceInfo" nillable="true" xmlns:q98="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" type="q98:DeviceInfo" />

<xs:element name="StartBackup">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="deviceId" nillable="true" type="xs:string" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:element name="StopBackup">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="deviceId" nillable="true" type="xs:string" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:element name="GetAlerts">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="startingIndex" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="amount" nillable="true" type="xs:string" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:element name="GetAlertsResponse">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="GetAlertsResult" nillable="true" xmlns:q99="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" type="q99:PartialCollection_Of_AlertInfo" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:complexType name="PartialCollection_Of_AlertInfo">

<xs:annotation>

<xs:appinfo>

<GenericType Name="PartialCollection_Of_{0}" Namespace="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" xmlns="http://schemas.microsoft.com/2003/10/Serialization/">

<GenericParameter Name="AlertInfo" Namespace="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" />

</GenericType>

</xs:appinfo>

</xs:annotation>

<xs:sequence>

<xs:element minOccurs="0" name="CollectionChunk" nillable="true" xmlns:q100="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" type="q100:ArrayOfAlertInfo" />

<xs:element minOccurs="0" name="CollectionModified" type="xs:dateTime" />

<xs:element minOccurs="0" name="CollectionSize" type="xs:int" />

</xs:sequence>

</xs:complexType>

<xs:element name="PartialCollection_Of_AlertInfo" nillable="true" xmlns:q101="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" type="q101:PartialCollection_Of_AlertInfo" />

<xs:complexType name="ArrayOfAlertInfo">

<xs:sequence>

<xs:element minOccurs="0" maxOccurs="unbounded" name="AlertInfo" nillable="true" xmlns:q102="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" type="q102:AlertInfo" />

</xs:sequence>

</xs:complexType>

<xs:element name="ArrayOfAlertInfo" nillable="true" xmlns:q103="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" type="q103:ArrayOfAlertInfo" />

<xs:complexType name="AlertInfo">

<xs:sequence>

<xs:element minOccurs="0" name="CanRepair" type="xs:boolean" />

<xs:element minOccurs="0" name="DateAndTime" type="xs:dateTime" />

<xs:element minOccurs="0" name="Description" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="IsSuppressed" type="xs:boolean" />

<xs:element minOccurs="0" name="Key" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="MachineName" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="Severity" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="Title" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="TroubleshootingSteps" nillable="true" type="xs:string" />

</xs:sequence>

</xs:complexType>

<xs:element name="AlertInfo" nillable="true" xmlns:q104="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" type="q104:AlertInfo" />

<xs:element name="EnableAlert">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="alertKey" nillable="true" type="xs:string" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:element name="DisableAlert">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="alertKey" nillable="true" type="xs:string" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:element name="ClearAlert">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="alertKey" nillable="true" type="xs:string" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:element name="RepairAlertAsync">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="alertKey" nillable="true" type="xs:string" />

</xs:sequence>

</xs:complexType>

</xs:element>

<xs:element name="GetSharePointSitesResponse">

<xs:complexType>

<xs:sequence>

<xs:element minOccurs="0" name="GetSharePointSitesResult" nillable="true" xmlns:q105="http://schemas.datacontract.org/2004/07/Microsoft.WindowsServerSolutions.O365Integration" type="q105:SharePointSiteAddressCollection" />

</xs:sequence>

</xs:complexType>

</xs:element>

</xs:schema>

<a id="Section_7.2"></a>
## 7.2 http://schemas.datacontract.org/2004/07/Microsoft.WindowsServerSolutions.Storage Schema

<?xml version="1.0" encoding="utf-8"?>

<xs:schema xmlns:tns="http://schemas.datacontract.org/2004/07/Microsoft.WindowsServerSolutions.Storage" elementFormDefault="qualified" targetNamespace="http://schemas.datacontract.org/2004/07/Microsoft.WindowsServerSolutions.Storage" xmlns:xs="http://www.w3.org/2001/XMLSchema">

<xs:simpleType name="Permission">

<xs:restriction base="xs:string">

<xs:enumeration value="None" />

<xs:enumeration value="ReadOnly" />

<xs:enumeration value="Full" />

<xs:enumeration value="Other" />

<xs:enumeration value="ReadPermissions" />

</xs:restriction>

</xs:simpleType>

<xs:element name="Permission" nillable="true" type="tns:Permission" />

</xs:schema>

<a id="Section_7.3"></a>
## 7.3 http://schemas.microsoft.com/2003/10/Serialization/Arrays Schema

<?xml version="1.0" encoding="utf-8"?>

<xs:schema xmlns:tns="http://schemas.microsoft.com/2003/10/Serialization/Arrays" elementFormDefault="qualified" targetNamespace="http://schemas.microsoft.com/2003/10/Serialization/Arrays" xmlns:xs="http://www.w3.org/2001/XMLSchema">

<xs:complexType name="ArrayOfstring">

<xs:sequence>

<xs:element minOccurs="0" maxOccurs="unbounded" name="string" nillable="true" type="xs:string" />

</xs:sequence>

</xs:complexType>

<xs:element name="ArrayOfstring" nillable="true" type="tns:ArrayOfstring" />

</xs:schema>

<a id="Section_7.4"></a>
## 7.4 http://schemas.datacontract.org/2004/07/Microsoft.WindowsServerSolutions.AzureADObjectModel Schema

<?xml version="1.0" encoding="utf-8"?>

<xs:schema xmlns:ser="http://schemas.microsoft.com/2003/10/Serialization/" xmlns:tns="http://schemas.datacontract.org/2004/07/Microsoft.WindowsServerSolutions.AzureADObjectModel" elementFormDefault="qualified" targetNamespace="http://schemas.datacontract.org/2004/07/Microsoft.WindowsServerSolutions.AzureADObjectModel" xmlns:xs="http://www.w3.org/2001/XMLSchema">

<xs:import namespace="http://schemas.datacontract.org/2004/07/System.Collections.ObjectModel" />

<xs:import namespace="http://schemas.microsoft.com/2003/10/Serialization/" />

<xs:complexType name="MSOUser">

<xs:sequence>

<xs:element minOccurs="0" name="Activated" type="xs:boolean" />

<xs:element minOccurs="0" maxOccurs="1" name="FirstName" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" maxOccurs="1" name="LastName" nillable="true" type="xs:string"/>

<xs:element minOccurs="0" name="Licenses" nillable="true" xmlns:q1="http://schemas.datacontract.org/2004/07/System.Collections.ObjectModel" type="q1:ReadOnlyCollectionOfMSOLicensepPGX_Pb6b" />

<xs:element minOccurs="0" name="LocalUserName" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="ObjectId" type="ser:guid" />

<xs:element minOccurs="0" name="UserPrincipalName" nillable="true" type="xs:string" />

</xs:sequence>

</xs:complexType>

<xs:element name="MSOUser" nillable="true" type="tns:MSOUser" />

<xs:complexType name="ArrayOfMSOLicense">

<xs:sequence>

<xs:element minOccurs="0" maxOccurs="unbounded" name="MSOLicense" nillable="true" type="tns:MSOLicense" />

</xs:sequence>

</xs:complexType>

<xs:element name="ArrayOfMSOLicense" nillable="true" type="tns:ArrayOfMSOLicense" />

<xs:complexType name="MSOLicense">

<xs:sequence>

<xs:element minOccurs="0" name="AccountName" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="Services" nillable="true" xmlns:q2="http://schemas.datacontract.org/2004/07/System.Collections.ObjectModel" type="q2:ReadOnlyCollectionOfMSOLicenseServicepPGX_Pb6b" />

<xs:element minOccurs="0" name="SkuId" nillable="true" type="xs:string" />

</xs:sequence>

</xs:complexType>

<xs:element name="MSOLicense" nillable="true" type="tns:MSOLicense" />

<xs:complexType name="ArrayOfMSOLicenseService">

<xs:sequence>

<xs:element minOccurs="0" maxOccurs="unbounded" name="MSOLicenseService" nillable="true" type="tns:MSOLicenseService" />

</xs:sequence>

</xs:complexType>

<xs:element name="ArrayOfMSOLicenseService" nillable="true" type="tns:ArrayOfMSOLicenseService" />

<xs:complexType name="MSOLicenseService">

<xs:sequence>

<xs:element minOccurs="0" name="Activated" type="xs:boolean" />

<xs:element minOccurs="0" name="Description" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="ServicePlan" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="ServiceType" type="tns:MSOLicenseServiceTypes" />

</xs:sequence>

</xs:complexType>

<xs:element name="MSOLicenseService" nillable="true" type="tns:MSOLicenseService" />

<xs:simpleType name="MSOLicenseServiceTypes">

<xs:list>

<xs:simpleType>

<xs:restriction base="xs:string">

<xs:enumeration value="None">

<xs:annotation>

<xs:appinfo>

<EnumerationValue xmlns="http://schemas.microsoft.com/2003/10/Serialization/">0</EnumerationValue>

</xs:appinfo>

</xs:annotation>

</xs:enumeration>

<xs:enumeration value="Unknown">

<xs:annotation>

<xs:appinfo>

<EnumerationValue xmlns="http://schemas.microsoft.com/2003/10/Serialization/">1</EnumerationValue>

</xs:appinfo>

</xs:annotation>

</xs:enumeration>

<xs:enumeration value="ExchangeOnline">

<xs:annotation>

<xs:appinfo>

<EnumerationValue xmlns="http://schemas.microsoft.com/2003/10/Serialization/">2</EnumerationValue>

</xs:appinfo>

</xs:annotation>

</xs:enumeration>

<xs:enumeration value="SharePointOnline">

<xs:annotation>

<xs:appinfo>

<EnumerationValue xmlns="http://schemas.microsoft.com/2003/10/Serialization/">4</EnumerationValue>

</xs:appinfo>

</xs:annotation>

</xs:enumeration>

<xs:enumeration value="LyncOnline">

<xs:annotation>

<xs:appinfo>

<EnumerationValue xmlns="http://schemas.microsoft.com/2003/10/Serialization/">8</EnumerationValue>

</xs:appinfo>

</xs:annotation>

</xs:enumeration>

<xs:enumeration value="IntuneOnline">

<xs:annotation>

<xs:appinfo>

<EnumerationValue xmlns="http://schemas.microsoft.com/2003/10/Serialization/">16</EnumerationValue>

</xs:appinfo>

</xs:annotation>

</xs:enumeration>

</xs:restriction>

</xs:simpleType>

</xs:list>

</xs:simpleType>

<xs:element name="MSOLicenseServiceTypes" nillable="true" type="tns:MSOLicenseServiceTypes" />

<xs:complexType name="ArrayOfMSOUser">

<xs:sequence>

<xs:element minOccurs="0" maxOccurs="unbounded" name="MSOUser" nillable="true" type="tns:MSOUser" />

</xs:sequence>

</xs:complexType>

<xs:element name="ArrayOfMSOUser" nillable="true" type="tns:ArrayOfMSOUser" />

<xs:complexType name="ArrayOfMSODomain">

<xs:sequence>

<xs:element minOccurs="0" maxOccurs="unbounded" name="MSODomain" nillable="true" type="tns:MSODomain" />

</xs:sequence>

</xs:complexType>

<xs:element name="ArrayOfMSODomain" nillable="true" type="tns:ArrayOfMSODomain" />

<xs:complexType name="MSODomain">

<xs:sequence>

<xs:element minOccurs="0" name="CapabilityType" type="tns:MSODomainTypes" />

<xs:element minOccurs="0" name="IsPrimary" type="xs:boolean" />

<xs:element minOccurs="0" name="IsVerified" type="xs:boolean" />

<xs:element minOccurs="0" name="Name" nillable="true" type="xs:string" />

</xs:sequence>

</xs:complexType>

<xs:element name="MSODomain" nillable="true" type="tns:MSODomain" />

<xs:simpleType name="MSODomainTypes">

<xs:restriction base="xs:string">

<xs:enumeration value="None" />

<xs:enumeration value="Email" />

<xs:enumeration value="Sharepoint" />

</xs:restriction>

</xs:simpleType>

<xs:element name="MSODomainTypes" nillable="true" type="tns:MSODomainTypes" />

<xs:complexType name="MSOTenantInformation">

<xs:sequence>

<xs:element minOccurs="0" name="Activated" type="xs:boolean" />

<xs:element minOccurs="0" name="Address" nillable="true" type="tns:CompanyAddress" />

<xs:element minOccurs="0" name="CompanyName" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="InitialDomain" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="LicenseSuite" nillable="true" xmlns:q3="http://schemas.datacontract.org/2004/07/System.Collections.ObjectModel" type="q3:ReadOnlyCollectionOfMSOLicenseSuitepPGX_Pb6b" />

<xs:element minOccurs="0" name="PrimaryDomain" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="TechnicalContact" nillable="true" type="xs:string" />

</xs:sequence>

</xs:complexType>

<xs:element name="MSOTenantInformation" nillable="true" type="tns:MSOTenantInformation" />

<xs:complexType name="CompanyAddress">

<xs:sequence>

<xs:element minOccurs="0" name="City" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="Country" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="PostalCode" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="State" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="Street" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="TelephoneNumber" nillable="true" type="xs:string" />

</xs:sequence>

</xs:complexType>

<xs:element name="CompanyAddress" nillable="true" type="tns:CompanyAddress" />

<xs:complexType name="ArrayOfMSOLicenseSuite">

<xs:sequence>

<xs:element minOccurs="0" maxOccurs="unbounded" name="MSOLicenseSuite" nillable="true" type="tns:MSOLicenseSuite" />

</xs:sequence>

</xs:complexType>

<xs:element name="ArrayOfMSOLicenseSuite" nillable="true" type="tns:ArrayOfMSOLicenseSuite" />

<xs:complexType name="MSOLicenseSuite">

<xs:sequence>

<xs:element minOccurs="0" name="ConsumedLicenses" type="xs:int" />

<xs:element minOccurs="0" name="Description" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="License" nillable="true" type="tns:MSOLicense" />

<xs:element minOccurs="0" name="Subscriptions" nillable="true" xmlns:q4="http://schemas.datacontract.org/2004/07/System.Collections.ObjectModel" type="q4:ReadOnlyCollectionOfMSOLicenseSubscriptionpPGX_Pb6b" />

<xs:element minOccurs="0" name="TotalLicenses" type="xs:int" />

</xs:sequence>

</xs:complexType>

<xs:element name="MSOLicenseSuite" nillable="true" type="tns:MSOLicenseSuite" />

<xs:complexType name="ArrayOfMSOLicenseSubscription">

<xs:sequence>

<xs:element minOccurs="0" maxOccurs="unbounded" name="MSOLicenseSubscription" nillable="true" type="tns:MSOLicenseSubscription" />

</xs:sequence>

</xs:complexType>

<xs:element name="ArrayOfMSOLicenseSubscription" nillable="true" type="tns:ArrayOfMSOLicenseSubscription" />

<xs:complexType name="MSOLicenseSubscription">

<xs:sequence>

<xs:element minOccurs="0" name="BillingExpirationTime" type="xs:dateTime" />

<xs:element minOccurs="0" name="Expired" type="xs:boolean" />

</xs:sequence>

</xs:complexType>

<xs:element name="MSOLicenseSubscription" nillable="true" type="tns:MSOLicenseSubscription" />

</xs:schema>

<a id="Section_7.5"></a>
## 7.5 http://schemas.datacontract.org/2004/07/System.Collections.ObjectModel Schema

<?xml version="1.0" encoding="utf-8"?>

<xs:schema xmlns:tns="http://schemas.datacontract.org/2004/07/System.Collections.ObjectModel" elementFormDefault="qualified" targetNamespace="http://schemas.datacontract.org/2004/07/System.Collections.ObjectModel" xmlns:xs="http://www.w3.org/2001/XMLSchema">

<xs:import namespace="http://schemas.datacontract.org/2004/07/Microsoft.WindowsServerSolutions.AzureADObjectModel" />

<xs:import namespace="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" />

<xs:complexType name="ReadOnlyCollectionOfMSOLicensepPGX_Pb6b">

<xs:annotation>

<xs:appinfo>

<GenericType Name="ReadOnlyCollectionOf{0}{#}" Namespace="http://schemas.datacontract.org/2004/07/System.Collections.ObjectModel" xmlns="http://schemas.microsoft.com/2003/10/Serialization/">

<GenericParameter Name="MSOLicense" Namespace="http://schemas.datacontract.org/2004/07/Microsoft.WindowsServerSolutions.AzureADObjectModel" />

</GenericType>

</xs:appinfo>

</xs:annotation>

<xs:sequence>

<xs:element name="list" nillable="true" xmlns:q1="http://schemas.datacontract.org/2004/07/Microsoft.WindowsServerSolutions.AzureADObjectModel" type="q1:ArrayOfMSOLicense" />

</xs:sequence>

</xs:complexType>

<xs:element name="ReadOnlyCollectionOfMSOLicensepPGX_Pb6b" nillable="true" type="tns:ReadOnlyCollectionOfMSOLicensepPGX_Pb6b" />

<xs:complexType name="ReadOnlyCollectionOfMSOLicenseServicepPGX_Pb6b">

<xs:annotation>

<xs:appinfo>

<GenericType Name="ReadOnlyCollectionOf{0}{#}" Namespace="http://schemas.datacontract.org/2004/07/System.Collections.ObjectModel" xmlns="http://schemas.microsoft.com/2003/10/Serialization/">

<GenericParameter Name="MSOLicenseService" Namespace="http://schemas.datacontract.org/2004/07/Microsoft.WindowsServerSolutions.AzureADObjectModel" />

</GenericType>

</xs:appinfo>

</xs:annotation>

<xs:sequence>

<xs:element name="list" nillable="true" xmlns:q2="http://schemas.datacontract.org/2004/07/Microsoft.WindowsServerSolutions.AzureADObjectModel" type="q2:ArrayOfMSOLicenseService" />

</xs:sequence>

</xs:complexType>

<xs:element name="ReadOnlyCollectionOfMSOLicenseServicepPGX_Pb6b" nillable="true" type="tns:ReadOnlyCollectionOfMSOLicenseServicepPGX_Pb6b" />

<xs:complexType name="ReadOnlyCollectionOfMSOLicenseSuitepPGX_Pb6b">

<xs:annotation>

<xs:appinfo>

<GenericType Name="ReadOnlyCollectionOf{0}{#}" Namespace="http://schemas.datacontract.org/2004/07/System.Collections.ObjectModel" xmlns="http://schemas.microsoft.com/2003/10/Serialization/">

<GenericParameter Name="MSOLicenseSuite" Namespace="http://schemas.datacontract.org/2004/07/Microsoft.WindowsServerSolutions.AzureADObjectModel" />

</GenericType>

</xs:appinfo>

</xs:annotation>

<xs:sequence>

<xs:element name="list" nillable="true" xmlns:q3="http://schemas.datacontract.org/2004/07/Microsoft.WindowsServerSolutions.AzureADObjectModel" type="q3:ArrayOfMSOLicenseSuite" />

</xs:sequence>

</xs:complexType>

<xs:element name="ReadOnlyCollectionOfMSOLicenseSuitepPGX_Pb6b" nillable="true" type="tns:ReadOnlyCollectionOfMSOLicenseSuitepPGX_Pb6b" />

<xs:complexType name="ReadOnlyCollectionOfMSOLicenseSubscriptionpPGX_Pb6b">

<xs:annotation>

<xs:appinfo>

<GenericType Name="ReadOnlyCollectionOf{0}{#}" Namespace="http://schemas.datacontract.org/2004/07/System.Collections.ObjectModel" xmlns="http://schemas.microsoft.com/2003/10/Serialization/">

<GenericParameter Name="MSOLicenseSubscription" Namespace="http://schemas.datacontract.org/2004/07/Microsoft.WindowsServerSolutions.AzureADObjectModel" />

</GenericType>

</xs:appinfo>

</xs:annotation>

<xs:sequence>

<xs:element name="list" nillable="true" xmlns:q4="http://schemas.datacontract.org/2004/07/Microsoft.WindowsServerSolutions.AzureADObjectModel" type="q4:ArrayOfMSOLicenseSubscription" />

</xs:sequence>

</xs:complexType>

<xs:element name="ReadOnlyCollectionOfMSOLicenseSubscriptionpPGX_Pb6b" nillable="true" type="tns:ReadOnlyCollectionOfMSOLicenseSubscriptionpPGX_Pb6b" />

<xs:complexType name="ReadOnlyCollectionOfGroupInfoEV6sb80H">

<xs:annotation>

<xs:appinfo>

<GenericType Name="ReadOnlyCollectionOf{0}{#}" Namespace="http://schemas.datacontract.org/2004/07/System.Collections.ObjectModel" xmlns="http://schemas.microsoft.com/2003/10/Serialization/">

<GenericParameter Name="GroupInfo" Namespace="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" />

</GenericType>

</xs:appinfo>

</xs:annotation>

<xs:sequence>

<xs:element name="list" nillable="true" xmlns:q5="http://contracts.microsoft.com/WindowsServerEssentials/2011/09/WebApi" type="q5:ArrayOfGroupInfo" />

</xs:sequence>

</xs:complexType>

<xs:element name="ReadOnlyCollectionOfGroupInfoEV6sb80H" nillable="true" type="tns:ReadOnlyCollectionOfGroupInfoEV6sb80H" />

</xs:schema>

<a id="Section_7.6"></a>
## 7.6 http://schemas.microsoft.com/2003/10/Serialization/ Schema

<?xml version="1.0" encoding="utf-8"?>

<xs:schema xmlns:tns="http://schemas.microsoft.com/2003/10/Serialization/" attributeFormDefault="qualified" elementFormDefault="qualified" targetNamespace="http://schemas.microsoft.com/2003/10/Serialization/" xmlns:xs="http://www.w3.org/2001/XMLSchema">

<xs:element name="anyType" nillable="true" type="xs:anyType" />

<xs:element name="anyURI" nillable="true" type="xs:anyURI" />

<xs:element name="base64Binary" nillable="true" type="xs:base64Binary" />

<xs:element name="boolean" nillable="true" type="xs:boolean" />

<xs:element name="byte" nillable="true" type="xs:byte" />

<xs:element name="dateTime" nillable="true" type="xs:dateTime" />

<xs:element name="decimal" nillable="true" type="xs:decimal" />

<xs:element name="double" nillable="true" type="xs:double" />

<xs:element name="float" nillable="true" type="xs:float" />

<xs:element name="int" nillable="true" type="xs:int" />

<xs:element name="long" nillable="true" type="xs:long" />

<xs:element name="QName" nillable="true" type="xs:QName" />

<xs:element name="short" nillable="true" type="xs:short" />

<xs:element name="string" nillable="true" type="xs:string" />

<xs:element name="unsignedByte" nillable="true" type="xs:unsignedByte" />

<xs:element name="unsignedInt" nillable="true" type="xs:unsignedInt" />

<xs:element name="unsignedLong" nillable="true" type="xs:unsignedLong" />

<xs:element name="unsignedShort" nillable="true" type="xs:unsignedShort" />

<xs:element name="char" nillable="true" type="tns:char" />

<xs:simpleType name="char">

<xs:restriction base="xs:int" />

</xs:simpleType>

<xs:element name="duration" nillable="true" type="tns:duration" />

<xs:simpleType name="duration">

<xs:restriction base="xs:duration">

<xs:pattern value="\-?P(\d*D)?(T(\d*H)?(\d*M)?(\d*(\.\d*)?S)?)?" />

<xs:minInclusive value="-P10675199DT2H48M5.4775808S" />

<xs:maxInclusive value="P10675199DT2H48M5.4775807S" />

</xs:restriction>

</xs:simpleType>

<xs:element name="guid" nillable="true" type="tns:guid" />

<xs:simpleType name="guid">

<xs:restriction base="xs:string">

<xs:pattern value="[\da-fA-F]{8}-[\da-fA-F]{4}-[\da-fA-F]{4}-[\da-fA-F]{4}-[\da-fA-F]{12}" />

</xs:restriction>

</xs:simpleType>

<xs:attribute name="FactoryType" type="xs:QName" />

<xs:attribute name="Id" type="xs:ID" />

<xs:attribute name="Ref" type="xs:IDREF" />

</xs:schema>

<a id="Section_7.7"></a>
## 7.7 http://schemas.datacontract.org/2004/07/Microsoft.WindowsServerSolutions.WebApi.Management.Storage Schema

<?xml version="1.0" encoding="utf-8"?>

<xs:schema xmlns:tns="http://schemas.datacontract.org/2004/07/Microsoft.WindowsServerSolutions.WebApi.Management.Storage" elementFormDefault="qualified" targetNamespace="http://schemas.datacontract.org/2004/07/Microsoft.WindowsServerSolutions.WebApi.Management.Storage" xmlns:xs="http://www.w3.org/2001/XMLSchema">

<xs:import namespace="http://schemas.microsoft.com/2003/10/Serialization/" />

<xs:simpleType name="ServerFolderType">

<xs:restriction base="xs:string">

<xs:enumeration value="NonPredefinedType" />

<xs:enumeration value="MusicType" />

<xs:enumeration value="PicturesType" />

<xs:enumeration value="DocumentsType" />

<xs:enumeration value="VideosType" />

<xs:enumeration value="BackupsType">

<xs:annotation>

<xs:appinfo>

<EnumerationValue xmlns="http://schemas.microsoft.com/2003/10/Serialization/">6</EnumerationValue>

</xs:appinfo>

</xs:annotation>

</xs:enumeration>

<xs:enumeration value="FileBackupsType">

<xs:annotation>

<xs:appinfo>

<EnumerationValue xmlns="http://schemas.microsoft.com/2003/10/Serialization/">7</EnumerationValue>

</xs:appinfo>

</xs:annotation>

</xs:enumeration>

<xs:enumeration value="FolderRedirectionType">

<xs:annotation>

<xs:appinfo>

<EnumerationValue xmlns="http://schemas.microsoft.com/2003/10/Serialization/">8</EnumerationValue>

</xs:appinfo>

</xs:annotation>

</xs:enumeration>

<xs:enumeration value="CompanyType">

<xs:annotation>

<xs:appinfo>

<EnumerationValue xmlns="http://schemas.microsoft.com/2003/10/Serialization/">9</EnumerationValue>

</xs:appinfo>

</xs:annotation>

</xs:enumeration>

<xs:enumeration value="UserType">

<xs:annotation>

<xs:appinfo>

<EnumerationValue xmlns="http://schemas.microsoft.com/2003/10/Serialization/">10</EnumerationValue>

</xs:appinfo>

</xs:annotation>

</xs:enumeration>

<xs:enumeration value="OtherType">

<xs:annotation>

<xs:appinfo>

<EnumerationValue xmlns="http://schemas.microsoft.com/2003/10/Serialization/">11</EnumerationValue>

</xs:appinfo>

</xs:annotation>

</xs:enumeration>

</xs:restriction>

</xs:simpleType>

<xs:element name="ServerFolderType" nillable="true" type="tns:ServerFolderType" />

</xs:schema>

<a id="Section_7.8"></a>
## 7.8 http://schemas.datacontract.org/2004/07/Microsoft.WindowsServerSolutions.O365Integration Schema

<?xml version="1.0" encoding="utf-8"?>

<xs:schema xmlns:tns="http://schemas.datacontract.org/2004/07/Microsoft.WindowsServerSolutions.O365Integration" elementFormDefault="qualified" targetNamespace="http://schemas.datacontract.org/2004/07/Microsoft.WindowsServerSolutions.O365Integration" xmlns:xs="http://www.w3.org/2001/XMLSchema">

<xs:complexType name="SharePointSiteAddressCollection">

<xs:sequence>

<xs:element minOccurs="0" name="MySiteAddress" nillable="true" type="xs:string" />

<xs:element minOccurs="0" name="TeamSiteAddress" nillable="true" type="xs:string" />

</xs:sequence>

</xs:complexType>

<xs:element name="SharePointSiteAddressCollection" nillable="true" type="tns:SharePointSiteAddressCollection" />

</xs:schema>

<a id="Section_7.9"></a>
## 7.9 http://schemas.microsoft.com/Message Schema

<?xml version="1.0" encoding="utf-8"?>

<xs:schema xmlns:tns="http://schemas.microsoft.com/Message" elementFormDefault="qualified" targetNamespace="http://schemas.microsoft.com/Message" xmlns:xs="http://www.w3.org/2001/XMLSchema">

<xs:simpleType name="StreamBody">

<xs:restriction base="xs:base64Binary" />

</xs:simpleType>

</xs:schema>

<a id="Section_8"></a>
# 8 Appendix C: Product Behavior

The information in this specification is applicable to the following Microsoft products or supplemental software. References to product versions include updates to those products.

- Windows Server 2012 R2 operating system
- Windows Server 2016 operating system
- Windows Server 2019 operating system
- Windows Server 2022 operating system
- Windows Server 2025 operating system
Exceptions, if any, are noted in this section. If an update version, service pack or Knowledge Base (KB) number appears with a product name, the behavior changed in that update. The new behavior also applies to subsequent updates unless otherwise specified. If a product edition appears with the product version, behavior is different in that product edition.

Unless otherwise specified, any statement of optional behavior in this specification that is prescribed using the terms "SHOULD" or "SHOULD NOT" implies product behavior in accordance with the SHOULD or SHOULD NOT prescription. Unless otherwise specified, the term "MAY" implies that the product does not follow the prescription.

<1> Section 2.2.4.11: This complex type is not available in the Windows Server 2012 operating system.

<2> Section 2.2.4.12: This complex type is not available in Windows Server 2012.

<3> Section 2.2.4.40: This complex type is not available in Windows Server 2012.

<4> Section 2.2.4.41: This complex type is not available in Windows Server 2012.

<5> Section 2.2.4.42: This complex type is not available in Windows Server 2012.

<6> Section 2.2.4.43: This complex type is not available in Windows Server 2012.

<7> Section 2.2.4.44: This complex type is not available in Windows Server 2012.

<8> Section 2.2.4.45: This complex type is not available in Windows Server 2012.

<9> Section 2.2.4.46: This complex type is not available in Windows Server 2012.

<10> Section 2.2.5.1: This simple type is not available in Windows Server 2012.

<11> Section 3.7.5.1.1: In Windows, this API only supports administrator calls and standard user calling. It returns a list of devices that are managed by the server. If the caller is a standard user, this API returns a list of devices for which the standard user has remote access permission.

<12> Section 3.11.3: When using the Media Web APIs on Windows Server 2012 R2, an HTTP 500 error occurs unless the Windows Server Essentials Media Pack is installed.

<13> Section 3.13.5.10: The **usergroups** parameter is supported only in Windows Server 2012 R2.

<a id="Section_9"></a>
# 9 Change Tracking

This section identifies changes that were made to this document since the last release. Changes are classified as Major, Minor, or None.

The revision class **Major** means that the technical content in the document was significantly revised. Major changes affect protocol interoperability or implementation. Examples of major changes are:

- A document revision that incorporates changes to interoperability requirements.
- A document revision that captures changes to protocol functionality.
The revision class **Minor** means that the meaning of the technical content was clarified. Minor changes do not affect protocol interoperability or implementation. Examples of minor changes are updates to clarify ambiguity at the sentence, paragraph, or table level.

The revision class **None** means that no new technical changes were introduced. Minor editorial and formatting changes may have been made, but the relevant technical content is identical to the last released version.

The changes made to this document are listed in the following table. For more information, please contact [dochelp@microsoft.com](mailto:dochelp@microsoft.com).

| Section | Description | Revision class |
| --- | --- | --- |
| [8](#Section_8) Appendix C: Product Behavior | Added Windows Server 2025 to the list of applicable products. | Major |


# [MS-ADA3]: Active Directory Schema Attributes N-Z

Last updated: 9/12/2018

Table of Contents

<details>
<summary>1 Introduction</summary>

- [1 Introduction](#Section_1)
  - [1.1 References](#Section_1.1)
</details>

<details>
<summary>2 Attributes</summary>

- [2 Attributes](#Section_2)
  - [2.1 Attribute name](#Section_2.1)
  - [2.2 Attribute nameServiceFlags](#Section_2.2)
  - [2.3 Attribute nCName](#Section_2.3)
  - [2.4 Attribute nETBIOSName](#Section_2.4)
  - [2.5 Attribute netbootAllowNewClients](#Section_2.5)
  - [2.6 Attribute netbootAnswerOnlyValidClients](#Section_2.6)
  - [2.7 Attribute netbootAnswerRequests](#Section_2.7)
  - [2.8 Attribute netbootCurrentClientCount](#Section_2.8)
  - [2.9 Attribute netbootDUID](#Section_2.9)
  - [2.10 Attribute netbootGUID](#Section_2.10)
  - [2.11 Attribute netbootInitialization](#Section_2.11)
  - [2.12 Attribute netbootIntelliMirrorOSes](#Section_2.12)
  - [2.13 Attribute netbootLimitClients](#Section_2.13)
  - [2.14 Attribute netbootLocallyInstalledOSes](#Section_2.14)
  - [2.15 Attribute netbootMachineFilePath](#Section_2.15)
  - [2.16 Attribute netbootMaxClients](#Section_2.16)
  - [2.17 Attribute netbootMirrorDataFile](#Section_2.17)
  - [2.18 Attribute netbootNewMachineNamingPolicy](#Section_2.18)
  - [2.19 Attribute netbootNewMachineOU](#Section_2.19)
  - [2.20 Attribute netbootSCPBL](#Section_2.20)
  - [2.21 Attribute netbootServer](#Section_2.21)
  - [2.22 Attribute netbootSIFFile](#Section_2.22)
  - [2.23 Attribute netbootTools](#Section_2.23)
  - [2.24 Attribute networkAddress](#Section_2.24)
  - [2.25 Attribute nextLevelStore](#Section_2.25)
  - [2.26 Attribute nextRid](#Section_2.26)
  - [2.27 Attribute nisMapEntry](#Section_2.27)
  - [2.28 Attribute nisMapName](#Section_2.28)
  - [2.29 Attribute nisNetgroupTriple](#Section_2.29)
  - [2.30 Attribute nonSecurityMember](#Section_2.30)
  - [2.31 Attribute nonSecurityMemberBL](#Section_2.31)
  - [2.32 Attribute notes](#Section_2.32)
  - [2.33 Attribute notificationList](#Section_2.33)
  - [2.34 Attribute nTGroupMembers](#Section_2.34)
  - [2.35 Attribute nTMixedDomain](#Section_2.35)
  - [2.36 Attribute ntPwdHistory](#Section_2.36)
  - [2.37 Attribute nTSecurityDescriptor](#Section_2.37)
  - [2.38 Attribute o](#Section_2.38)
  - [2.39 Attribute objectCategory](#Section_2.39)
  - [2.40 Attribute objectClass](#Section_2.40)
  - [2.41 Attribute objectClassCategory](#Section_2.41)
  - [2.42 Attribute objectClasses](#Section_2.42)
  - [2.43 Attribute objectCount](#Section_2.43)
  - [2.44 Attribute objectGUID](#Section_2.44)
  - [2.45 Attribute objectSid](#Section_2.45)
  - [2.46 Attribute objectVersion](#Section_2.46)
  - [2.47 Attribute oEMInformation](#Section_2.47)
  - [2.48 Attribute oMObjectClass](#Section_2.48)
  - [2.49 Attribute oMSyntax](#Section_2.49)
  - [2.50 Attribute oMTGuid](#Section_2.50)
  - [2.51 Attribute oMTIndxGuid](#Section_2.51)
  - [2.52 Attribute oncRpcNumber](#Section_2.52)
  - [2.53 Attribute operatingSystem](#Section_2.53)
  - [2.54 Attribute operatingSystemHotfix](#Section_2.54)
  - [2.55 Attribute operatingSystemServicePack](#Section_2.55)
  - [2.56 Attribute operatingSystemVersion](#Section_2.56)
  - [2.57 Attribute operatorCount](#Section_2.57)
  - [2.58 Attribute optionDescription](#Section_2.58)
  - [2.59 Attribute options](#Section_2.59)
  - [2.60 Attribute optionsLocation](#Section_2.60)
  - [2.61 Attribute organizationalStatus](#Section_2.61)
  - [2.62 Attribute originalDisplayTable](#Section_2.62)
  - [2.63 Attribute originalDisplayTableMSDOS](#Section_2.63)
  - [2.64 Attribute otherFacsimileTelephoneNumber](#Section_2.64)
  - [2.65 Attribute otherHomePhone](#Section_2.65)
  - [2.66 Attribute otherIpPhone](#Section_2.66)
  - [2.67 Attribute otherLoginWorkstations](#Section_2.67)
  - [2.68 Attribute otherMailbox](#Section_2.68)
  - [2.69 Attribute otherMobile](#Section_2.69)
  - [2.70 Attribute otherPager](#Section_2.70)
  - [2.71 Attribute otherTelephone](#Section_2.71)
  - [2.72 Attribute otherWellKnownObjects](#Section_2.72)
  - [2.73 Attribute ou](#Section_2.73)
  - [2.74 Attribute owner](#Section_2.74)
  - [2.75 Attribute ownerBL](#Section_2.75)
  - [2.76 Attribute packageFlags](#Section_2.76)
  - [2.77 Attribute packageName](#Section_2.77)
  - [2.78 Attribute packageType](#Section_2.78)
  - [2.79 Attribute pager](#Section_2.79)
  - [2.80 Attribute parentCA](#Section_2.80)
  - [2.81 Attribute parentCACertificateChain](#Section_2.81)
  - [2.82 Attribute parentGUID](#Section_2.82)
  - [2.83 Attribute partialAttributeDeletionList](#Section_2.83)
  - [2.84 Attribute partialAttributeSet](#Section_2.84)
  - [2.85 Attribute pekKeyChangeInterval](#Section_2.85)
  - [2.86 Attribute pekList](#Section_2.86)
  - [2.87 Attribute pendingCACertificates](#Section_2.87)
  - [2.88 Attribute pendingParentCA](#Section_2.88)
  - [2.89 Attribute perMsgDialogDisplayTable](#Section_2.89)
  - [2.90 Attribute perRecipDialogDisplayTable](#Section_2.90)
  - [2.91 Attribute personalTitle](#Section_2.91)
  - [2.92 Attribute photo](#Section_2.92)
  - [2.93 Attribute physicalDeliveryOfficeName](#Section_2.93)
  - [2.94 Attribute physicalLocationObject](#Section_2.94)
  - [2.95 Attribute pKICriticalExtensions](#Section_2.95)
  - [2.96 Attribute pKIDefaultCSPs](#Section_2.96)
  - [2.97 Attribute pKIDefaultKeySpec](#Section_2.97)
  - [2.98 Attribute pKIEnrollmentAccess](#Section_2.98)
  - [2.99 Attribute pKIExpirationPeriod](#Section_2.99)
  - [2.100 Attribute pKIExtendedKeyUsage](#Section_2.100)
  - [2.101 Attribute pKIKeyUsage](#Section_2.101)
  - [2.102 Attribute pKIMaxIssuingDepth](#Section_2.102)
  - [2.103 Attribute pKIOverlapPeriod](#Section_2.103)
  - [2.104 Attribute pKT](#Section_2.104)
  - [2.105 Attribute pKTGuid](#Section_2.105)
  - [2.106 Attribute policyReplicationFlags](#Section_2.106)
  - [2.107 Attribute portName](#Section_2.107)
  - [2.108 Attribute possibleInferiors](#Section_2.108)
  - [2.109 Attribute possSuperiors](#Section_2.109)
  - [2.110 Attribute postalAddress](#Section_2.110)
  - [2.111 Attribute postalCode](#Section_2.111)
  - [2.112 Attribute postOfficeBox](#Section_2.112)
  - [2.113 Attribute preferredDeliveryMethod](#Section_2.113)
  - [2.114 Attribute preferredLanguage](#Section_2.114)
  - [2.115 Attribute preferredOU](#Section_2.115)
  - [2.116 Attribute prefixMap](#Section_2.116)
  - [2.117 Attribute presentationAddress](#Section_2.117)
  - [2.118 Attribute previousCACertificates](#Section_2.118)
  - [2.119 Attribute previousParentCA](#Section_2.119)
  - [2.120 Attribute primaryGroupID](#Section_2.120)
  - [2.121 Attribute primaryGroupToken](#Section_2.121)
  - [2.122 Attribute primaryInternationalISDNNumber](#Section_2.122)
  - [2.123 Attribute primaryTelexNumber](#Section_2.123)
  - [2.124 Attribute printAttributes](#Section_2.124)
  - [2.125 Attribute printBinNames](#Section_2.125)
  - [2.126 Attribute printCollate](#Section_2.126)
  - [2.127 Attribute printColor](#Section_2.127)
  - [2.128 Attribute printDuplexSupported](#Section_2.128)
  - [2.129 Attribute printEndTime](#Section_2.129)
  - [2.130 Attribute printerName](#Section_2.130)
  - [2.131 Attribute printFormName](#Section_2.131)
  - [2.132 Attribute printKeepPrintedJobs](#Section_2.132)
  - [2.133 Attribute printLanguage](#Section_2.133)
  - [2.134 Attribute printMACAddress](#Section_2.134)
  - [2.135 Attribute printMaxCopies](#Section_2.135)
  - [2.136 Attribute printMaxResolutionSupported](#Section_2.136)
  - [2.137 Attribute printMaxXExtent](#Section_2.137)
  - [2.138 Attribute printMaxYExtent](#Section_2.138)
  - [2.139 Attribute printMediaReady](#Section_2.139)
  - [2.140 Attribute printMediaSupported](#Section_2.140)
  - [2.141 Attribute printMemory](#Section_2.141)
  - [2.142 Attribute printMinXExtent](#Section_2.142)
  - [2.143 Attribute printMinYExtent](#Section_2.143)
  - [2.144 Attribute printNetworkAddress](#Section_2.144)
  - [2.145 Attribute printNotify](#Section_2.145)
  - [2.146 Attribute printNumberUp](#Section_2.146)
  - [2.147 Attribute printOrientationsSupported](#Section_2.147)
  - [2.148 Attribute printOwner](#Section_2.148)
  - [2.149 Attribute printPagesPerMinute](#Section_2.149)
  - [2.150 Attribute printRate](#Section_2.150)
  - [2.151 Attribute printRateUnit](#Section_2.151)
  - [2.152 Attribute printSeparatorFile](#Section_2.152)
  - [2.153 Attribute printShareName](#Section_2.153)
  - [2.154 Attribute printSpooling](#Section_2.154)
  - [2.155 Attribute printStaplingSupported](#Section_2.155)
  - [2.156 Attribute printStartTime](#Section_2.156)
  - [2.157 Attribute printStatus](#Section_2.157)
  - [2.158 Attribute priority](#Section_2.158)
  - [2.159 Attribute priorSetTime](#Section_2.159)
  - [2.160 Attribute priorValue](#Section_2.160)
  - [2.161 Attribute privateKey](#Section_2.161)
  - [2.162 Attribute privilegeAttributes](#Section_2.162)
  - [2.163 Attribute privilegeDisplayName](#Section_2.163)
  - [2.164 Attribute privilegeHolder](#Section_2.164)
  - [2.165 Attribute privilegeValue](#Section_2.165)
  - [2.166 Attribute productCode](#Section_2.166)
  - [2.167 Attribute profilePath](#Section_2.167)
  - [2.168 Attribute proxiedObjectName](#Section_2.168)
  - [2.169 Attribute proxyAddresses](#Section_2.169)
  - [2.170 Attribute proxyGenerationEnabled](#Section_2.170)
  - [2.171 Attribute proxyLifetime](#Section_2.171)
  - [2.172 Attribute publicKeyPolicy](#Section_2.172)
  - [2.173 Attribute purportedSearch](#Section_2.173)
  - [2.174 Attribute pwdHistoryLength](#Section_2.174)
  - [2.175 Attribute pwdLastSet](#Section_2.175)
  - [2.176 Attribute pwdProperties](#Section_2.176)
  - [2.177 Attribute qualityOfService](#Section_2.177)
  - [2.178 Attribute queryFilter](#Section_2.178)
  - [2.179 Attribute queryPoint](#Section_2.179)
  - [2.180 Attribute queryPolicyBL](#Section_2.180)
  - [2.181 Attribute queryPolicyObject](#Section_2.181)
  - [2.182 Attribute rangeLower](#Section_2.182)
  - [2.183 Attribute rangeUpper](#Section_2.183)
  - [2.184 Attribute rDNAttID](#Section_2.184)
  - [2.185 Attribute registeredAddress](#Section_2.185)
  - [2.186 Attribute remoteServerName](#Section_2.186)
  - [2.187 Attribute remoteSource](#Section_2.187)
  - [2.188 Attribute remoteSourceType](#Section_2.188)
  - [2.189 Attribute remoteStorageGUID](#Section_2.189)
  - [2.190 Attribute replicaSource](#Section_2.190)
  - [2.191 Attribute replInterval](#Section_2.191)
  - [2.192 Attribute replPropertyMetaData](#Section_2.192)
  - [2.193 Attribute replTopologyStayOfExecution](#Section_2.193)
  - [2.194 Attribute replUpToDateVector](#Section_2.194)
  - [2.195 Attribute repsFrom](#Section_2.195)
  - [2.196 Attribute repsTo](#Section_2.196)
  - [2.197 Attribute requiredCategories](#Section_2.197)
  - [2.198 Attribute retiredReplDSASignatures](#Section_2.198)
  - [2.199 Attribute revision](#Section_2.199)
  - [2.200 Attribute rid](#Section_2.200)
  - [2.201 Attribute rIDAllocationPool](#Section_2.201)
  - [2.202 Attribute rIDAvailablePool](#Section_2.202)
  - [2.203 Attribute rIDManagerReference](#Section_2.203)
  - [2.204 Attribute rIDNextRID](#Section_2.204)
  - [2.205 Attribute rIDPreviousAllocationPool](#Section_2.205)
  - [2.206 Attribute rIDSetReferences](#Section_2.206)
  - [2.207 Attribute rIDUsedPool](#Section_2.207)
  - [2.208 Attribute rightsGuid](#Section_2.208)
  - [2.209 Attribute roleOccupant](#Section_2.209)
  - [2.210 Attribute roomNumber](#Section_2.210)
  - [2.211 Attribute rootTrust](#Section_2.211)
  - [2.212 Attribute rpcNsAnnotation](#Section_2.212)
  - [2.213 Attribute rpcNsBindings](#Section_2.213)
  - [2.214 Attribute rpcNsCodeset](#Section_2.214)
  - [2.215 Attribute rpcNsEntryFlags](#Section_2.215)
  - [2.216 Attribute rpcNsGroup](#Section_2.216)
  - [2.217 Attribute rpcNsInterfaceID](#Section_2.217)
  - [2.218 Attribute rpcNsObjectID](#Section_2.218)
  - [2.219 Attribute rpcNsPriority](#Section_2.219)
  - [2.220 Attribute rpcNsProfileEntry](#Section_2.220)
  - [2.221 Attribute rpcNsTransferSyntax](#Section_2.221)
  - [2.222 Attribute sAMAccountName](#Section_2.222)
  - [2.223 Attribute sAMAccountType](#Section_2.223)
  - [2.224 Attribute samDomainUpdates](#Section_2.224)
  - [2.225 Attribute schedule](#Section_2.225)
  - [2.226 Attribute schemaFlagsEx](#Section_2.226)
  - [2.227 Attribute schemaIDGUID](#Section_2.227)
  - [2.228 Attribute schemaInfo](#Section_2.228)
  - [2.229 Attribute schemaUpdate](#Section_2.229)
  - [2.230 Attribute schemaVersion](#Section_2.230)
  - [2.231 Attribute scopeFlags](#Section_2.231)
  - [2.232 Attribute scriptPath](#Section_2.232)
  - [2.233 Attribute sDRightsEffective](#Section_2.233)
  - [2.234 Attribute searchFlags](#Section_2.234)
  - [2.235 Attribute searchGuide](#Section_2.235)
  - [2.236 Attribute secretary](#Section_2.236)
  - [2.237 Attribute securityIdentifier](#Section_2.237)
  - [2.238 Attribute seeAlso](#Section_2.238)
  - [2.239 Attribute seqNotification](#Section_2.239)
  - [2.240 Attribute serialNumber](#Section_2.240)
  - [2.241 Attribute serverName](#Section_2.241)
  - [2.242 Attribute serverReference](#Section_2.242)
  - [2.243 Attribute serverReferenceBL](#Section_2.243)
  - [2.244 Attribute serverRole](#Section_2.244)
  - [2.245 Attribute serverState](#Section_2.245)
  - [2.246 Attribute serviceBindingInformation](#Section_2.246)
  - [2.247 Attribute serviceClassID](#Section_2.247)
  - [2.248 Attribute serviceClassInfo](#Section_2.248)
  - [2.249 Attribute serviceClassName](#Section_2.249)
  - [2.250 Attribute serviceDNSName](#Section_2.250)
  - [2.251 Attribute serviceDNSNameType](#Section_2.251)
  - [2.252 Attribute serviceInstanceVersion](#Section_2.252)
  - [2.253 Attribute servicePrincipalName](#Section_2.253)
  - [2.254 Attribute setupCommand](#Section_2.254)
  - [2.255 Attribute shadowExpire](#Section_2.255)
  - [2.256 Attribute shadowFlag](#Section_2.256)
  - [2.257 Attribute shadowInactive](#Section_2.257)
  - [2.258 Attribute shadowLastChange](#Section_2.258)
  - [2.259 Attribute shadowMax](#Section_2.259)
  - [2.260 Attribute shadowMin](#Section_2.260)
  - [2.261 Attribute shadowWarning](#Section_2.261)
  - [2.262 Attribute shellContextMenu](#Section_2.262)
  - [2.263 Attribute shellPropertyPages](#Section_2.263)
  - [2.264 Attribute shortServerName](#Section_2.264)
  - [2.265 Attribute showInAddressBook](#Section_2.265)
  - [2.266 Attribute showInAdvancedViewOnly](#Section_2.266)
  - [2.267 Attribute sIDHistory](#Section_2.267)
  - [2.268 Attribute signatureAlgorithms](#Section_2.268)
  - [2.269 Attribute siteGUID](#Section_2.269)
  - [2.270 Attribute siteLinkList](#Section_2.270)
  - [2.271 Attribute siteList](#Section_2.271)
  - [2.272 Attribute siteObject](#Section_2.272)
  - [2.273 Attribute siteObjectBL](#Section_2.273)
  - [2.274 Attribute siteServer](#Section_2.274)
  - [2.275 Attribute sn](#Section_2.275)
  - [2.276 Attribute sPNMappings](#Section_2.276)
  - [2.277 Attribute st](#Section_2.277)
  - [2.278 Attribute street](#Section_2.278)
  - [2.279 Attribute streetAddress](#Section_2.279)
  - [2.280 Attribute structuralObjectClass](#Section_2.280)
  - [2.281 Attribute subClassOf](#Section_2.281)
  - [2.282 Attribute subRefs](#Section_2.282)
  - [2.283 Attribute subSchemaSubEntry](#Section_2.283)
  - [2.284 Attribute superiorDNSRoot](#Section_2.284)
  - [2.285 Attribute superScopeDescription](#Section_2.285)
  - [2.286 Attribute superScopes](#Section_2.286)
  - [2.287 Attribute supplementalCredentials](#Section_2.287)
  - [2.288 Attribute supportedApplicationContext](#Section_2.288)
  - [2.289 Attribute syncAttributes](#Section_2.289)
  - [2.290 Attribute syncMembership](#Section_2.290)
  - [2.291 Attribute syncWithObject](#Section_2.291)
  - [2.292 Attribute syncWithSID](#Section_2.292)
  - [2.293 Attribute systemAuxiliaryClass](#Section_2.293)
  - [2.294 Attribute systemFlags](#Section_2.294)
  - [2.295 Attribute systemMayContain](#Section_2.295)
  - [2.296 Attribute systemMustContain](#Section_2.296)
  - [2.297 Attribute systemOnly](#Section_2.297)
  - [2.298 Attribute systemPossSuperiors](#Section_2.298)
  - [2.299 Attribute telephoneNumber](#Section_2.299)
  - [2.300 Attribute teletexTerminalIdentifier](#Section_2.300)
  - [2.301 Attribute telexNumber](#Section_2.301)
  - [2.302 Attribute templateRoots](#Section_2.302)
  - [2.303 Attribute templateRoots2](#Section_2.303)
  - [2.304 Attribute terminalServer](#Section_2.304)
  - [2.305 Attribute textEncodedORAddress](#Section_2.305)
  - [2.306 Attribute thumbnailLogo](#Section_2.306)
  - [2.307 Attribute thumbnailPhoto](#Section_2.307)
  - [2.308 Attribute timeRefresh](#Section_2.308)
  - [2.309 Attribute timeVolChange](#Section_2.309)
  - [2.310 Attribute title](#Section_2.310)
  - [2.311 Attribute tokenGroups](#Section_2.311)
  - [2.312 Attribute tokenGroupsGlobalAndUniversal](#Section_2.312)
  - [2.313 Attribute tokenGroupsNoGCAcceptable](#Section_2.313)
  - [2.314 Attribute tombstoneLifetime](#Section_2.314)
  - [2.315 Attribute transportAddressAttribute](#Section_2.315)
  - [2.316 Attribute transportDLLName](#Section_2.316)
  - [2.317 Attribute transportType](#Section_2.317)
  - [2.318 Attribute treatAsLeaf](#Section_2.318)
  - [2.319 Attribute treeName](#Section_2.319)
  - [2.320 Attribute trustAttributes](#Section_2.320)
  - [2.321 Attribute trustAuthIncoming](#Section_2.321)
  - [2.322 Attribute trustAuthOutgoing](#Section_2.322)
  - [2.323 Attribute trustDirection](#Section_2.323)
  - [2.324 Attribute trustParent](#Section_2.324)
  - [2.325 Attribute trustPartner](#Section_2.325)
  - [2.326 Attribute trustPosixOffset](#Section_2.326)
  - [2.327 Attribute trustType](#Section_2.327)
  - [2.328 Attribute uASCompat](#Section_2.328)
  - [2.329 Attribute uid](#Section_2.329)
  - [2.330 Attribute uidNumber](#Section_2.330)
  - [2.331 Attribute uNCName](#Section_2.331)
  - [2.332 Attribute unicodePwd](#Section_2.332)
  - [2.333 Attribute uniqueIdentifier](#Section_2.333)
  - [2.334 Attribute uniqueMember](#Section_2.334)
  - [2.335 Attribute unixHomeDirectory](#Section_2.335)
  - [2.336 Attribute unixUserPassword](#Section_2.336)
  - [2.337 Attribute unstructuredAddress](#Section_2.337)
  - [2.338 Attribute unstructuredName](#Section_2.338)
  - [2.339 Attribute upgradeProductCode](#Section_2.339)
  - [2.340 Attribute uPNSuffixes](#Section_2.340)
  - [2.341 Attribute url](#Section_2.341)
  - [2.342 Attribute userAccountControl](#Section_2.342)
  - [2.343 Attribute userCert](#Section_2.343)
  - [2.344 Attribute userCertificate](#Section_2.344)
  - [2.345 Attribute userClass](#Section_2.345)
  - [2.346 Attribute userParameters](#Section_2.346)
  - [2.347 Attribute userPassword](#Section_2.347)
  - [2.348 Attribute userPKCS12](#Section_2.348)
  - [2.349 Attribute userPrincipalName](#Section_2.349)
  - [2.350 Attribute userSharedFolder](#Section_2.350)
  - [2.351 Attribute userSharedFolderOther](#Section_2.351)
  - [2.352 Attribute userSMIMECertificate](#Section_2.352)
  - [2.353 Attribute userWorkstations](#Section_2.353)
  - [2.354 Attribute uSNChanged](#Section_2.354)
  - [2.355 Attribute uSNCreated](#Section_2.355)
  - [2.356 Attribute uSNDSALastObjRemoved](#Section_2.356)
  - [2.357 Attribute USNIntersite](#Section_2.357)
  - [2.358 Attribute uSNLastObjRem](#Section_2.358)
  - [2.359 Attribute uSNSource](#Section_2.359)
  - [2.360 Attribute validAccesses](#Section_2.360)
  - [2.361 Attribute vendor](#Section_2.361)
  - [2.362 Attribute versionNumber](#Section_2.362)
  - [2.363 Attribute versionNumberHi](#Section_2.363)
  - [2.364 Attribute versionNumberLo](#Section_2.364)
  - [2.365 Attribute volTableGUID](#Section_2.365)
  - [2.366 Attribute volTableIdxGUID](#Section_2.366)
  - [2.367 Attribute volumeCount](#Section_2.367)
  - [2.368 Attribute wbemPath](#Section_2.368)
  - [2.369 Attribute wellKnownObjects](#Section_2.369)
  - [2.370 Attribute whenChanged](#Section_2.370)
  - [2.371 Attribute whenCreated](#Section_2.371)
  - [2.372 Attribute winsockAddresses](#Section_2.372)
  - [2.373 Attribute wWWHomePage](#Section_2.373)
  - [2.374 Attribute x121Address](#Section_2.374)
  - [2.375 Attribute x500uniqueIdentifier](#Section_2.375)
</details>

<details>
<summary>3 Change Tracking</summary>

- [3 Change Tracking](#Section_3)
</details>
<a id="Section_1"></a>
# 1 Introduction

Active Directory Schema Attributes N-Z contains a partial list of the objects that exist in the Active Directory schema for **Active Directory Domain Services (AD DS)**; it contains schema objects of type "attribute" whose names start with the letters N through Z. Active Directory and all associated terms and concepts are described in [MS-ADTS](../MS-ADTS/MS-ADTS.md).

**Note**: This document is not intended to stand on its own; it is intended to act as an appendix to the Active Directory Technical Specification. For details about the Active Directory schema, see [MS-ADTS] section 3.1.1.2 (Active Directory Schema).

**Note**: The object definitions in this document are also available for download in LDAP Data Interchange Format (LDIF) at the following location: [[MSFT-ADSCHEMA]](https://go.microsoft.com/fwlink/?LinkId=212555).

**Note**: The object definitions in this document contain information about the product in which the objects were first implemented in the Active Directory schema. Unless otherwise specified, objects continue to be available in the Active Directory schema in all subsequent versions of the product according to the list of products in [MS-ADTS] section 1.

<a id="Section_1.1"></a>
## 1.1 References

[MS-ADA2] Microsoft Corporation, "[Active Directory Schema Attributes M](../MS-ADA2/MS-ADA2.md)".

[MS-ADOD] Microsoft Corporation, "[Active Directory Protocols Overview](../MS-ADOD/MS-ADOD.md)".

[MS-ADSC] Microsoft Corporation, "[Active Directory Schema Classes](../MS-ADSC/MS-ADSC.md)".

[MS-ADTS] Microsoft Corporation, "[Active Directory Technical Specification](../MS-ADTS/MS-ADTS.md)".

[MS-CBCP] Microsoft Corporation, "[Callback Control Protocol](../MS-CBCP/MS-CBCP.md)".

[MS-DRSR] Microsoft Corporation, "[Directory Replication Service (DRS) Remote Protocol](../MS-DRSR/MS-DRSR.md)".

[MS-DTYP] Microsoft Corporation, "[Windows Data Types](../MS-DTYP/MS-DTYP.md)".

[MS-SAMR] Microsoft Corporation, "[Security Account Manager (SAM) Remote Protocol (Client-to-Server)](../MS-SAMR/MS-SAMR.md)".

[MS-TSTS] Microsoft Corporation, "[Terminal Services Terminal Server Runtime Interface Protocol](../MS-TSTS/MS-TSTS.md)".

[MSDN-ExtUserIntDirObj] Microsoft Corporation, "Extending the User Interface for Directory Objects", [http://msdn.microsoft.com/en-us/library/ms676902.aspx](https://go.microsoft.com/fwlink/?LinkId=107095)

[MSDN-PACKAGE-FLAGS] Microsoft Corporation, "Package-Flags", [http://msdn.microsoft.com/en-us/library/ms679099.aspx](https://go.microsoft.com/fwlink/?LinkId=90058)

[MSFT-ADSCHEMA] Microsoft Corporation, "Combined Active Directory Schema Classes and Attributes for Windows Server", December 2013, [http://www.microsoft.com/downloads/en/details.aspx?displaylang=en&FamilyID=da2fc73a-3d35-484c-9bea-f023dcba7275](https://go.microsoft.com/fwlink/?LinkId=212555)

[RFC1274] Barker, P. and Kille, S., "The COSINE and Internet X.500 Schema", RFC 1274, November 1991, [http://www.ietf.org/rfc/rfc1274.txt](https://go.microsoft.com/fwlink/?LinkId=90271)

[RFC2251] Wahl, M., Howes, T., and Kille, S., "Lightweight Directory Access Protocol (v3)", RFC 2251, December 1997, [http://www.ietf.org/rfc/rfc2251.txt](https://go.microsoft.com/fwlink/?LinkId=90325)

[RFC2307] Howard, L., "An Approach for Using LDAP as a Network Information Service", RFC 2307, March 1998, [http://www.ietf.org/rfc/rfc2307.txt](https://go.microsoft.com/fwlink/?LinkId=90333)

[RFC2849] Good, G., "The LDAP Data Interchange Format (LDIF) - Technical Specification", RFC 2849, June 2000, [http://www.ietf.org/rfc/rfc2849.txt](https://go.microsoft.com/fwlink/?LinkId=90389)

[RFC3280] Housley, R., Polk, W., Ford, W., and Solo, D., "Internet X.509 Public Key Infrastructure Certificate and Certificate Revocation List (CRL) Profile", RFC 3280, April 2002, [http://www.ietf.org/rfc/rfc3280.txt](https://go.microsoft.com/fwlink/?LinkId=90414)

[RFC804] Drafting Group on Draft Recommendation T.4, "CCITT Draft Recommendation T.4 - STANDARDIZATION OF GROUP 3 FACSIMILE APPARATUS FOR DOCUMENT TRANSMISSION", RFC 804, [http://www.faqs.org/rfcs/rfc804.html](https://go.microsoft.com/fwlink/?LinkId=110405)

[RFC822] Crocker, D.H., "Standard for ARPA Internet Text Messages", STD 11, RFC 822, August 1982, [http://www.ietf.org/rfc/rfc0822.txt](https://go.microsoft.com/fwlink/?LinkId=90497)

[X121] ITU-T, "Public data networks - Network aspects - International numbering plan for public data networks", Recommendation X.121, October 2000, [http://www.itu.int/rec/T-REC-X.121/en](https://go.microsoft.com/fwlink/?LinkId=107134)

[X400] ITU-T, "Message handling systems - Message handling system and service overview", Recommendation F.400/X.400, June 1999, [http://www.itu.int/rec/T-REC-X.400/en](https://go.microsoft.com/fwlink/?LinkId=107135)

[X420] ITU-T, "X.420 - Information technology - Message Handling Systems (MHS): Interpersonal Messaging System", Recommendation X.420 June 1999, [http://www.itu.int/rec/T-REC-X.420-199906-I/en](https://go.microsoft.com/fwlink/?LinkId=110403)

[X500] ITU-T, "Information Technology - Open Systems Interconnection - The Directory: Overview of Concepts, Models and Services", Recommendation X.500, August 2005, [http://www.itu.int/rec/T-REC-X.500-200508-S/en](https://go.microsoft.com/fwlink/?LinkId=90589)

**Note** There is a charge to download the specification.

[X509] ITU-T, "Information Technology - Open Systems Interconnection - The Directory: Public-Key and Attribute Certificate Frameworks", Recommendation X.509, August 2005, [http://www.itu.int/rec/T-REC-X.509/en](https://go.microsoft.com/fwlink/?LinkId=90590)

<a id="Section_2"></a>
# 2 Attributes

The following sections specify attributes in the Active Directory schema whose names start with the letters N through Z.

These sections normatively specify the schema definition of each attribute and version-specific behavior of those schema definitions (such as when the attribute was added to the schema). Additionally, as an aid to the reader some of the sections include informative notes about how the attribute can be used.

**Note**: Lines of text in the attribute definitions that are excessively long have been "folded" in accordance with [[RFC2849]](https://go.microsoft.com/fwlink/?LinkId=90389) Note 2.

<a id="Section_2.1"></a>
## 2.1 Attribute name

This attribute specifies the relative distinguished name of an object. The relative distinguished name is the part of the object name that is an attribute of the object itself. Also known as the naming attribute. See the glossary entry for distinguished name in [MS-ADTS](../MS-ADTS/MS-ADTS.md) section 1.1.

cn: RDN

ldapDisplayName: name

attributeId: 1.2.840.113556.1.4.1

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: bf967a0e-0de6-11d0-a285-00aa003049e2

systemOnly: TRUE

searchFlags: fPRESERVEONDELETE| fANR | fATTINDEX

rangeLower: 1

rangeUpper: 255

attributeSecurityGuid: e48d0154-bcf8-11d1-8702-00c04fb96050

mapiID: 33282

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT |

FLAG_ATTR_REQ_PARTIAL_SET_MEMBER

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server operating system.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008 operating system.

<a id="Section_2.2"></a>
## 2.2 Attribute nameServiceFlags

This attribute specifies the configuration flags for remote procedure call (RPC) name service.

cn: Name-Service-Flags

ldapDisplayName: nameServiceFlags

attributeId: 1.2.840.113556.1.4.753

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: 80212840-4bdc-11d1-a9c4-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.3"></a>
## 2.3 Attribute nCName

This attribute specifies the distinguished name of the naming context (NC) for the object. See [MS-ADTS](../MS-ADTS/MS-ADTS.md) section 6.1 for more details on usage.

cn: NC-Name

ldapDisplayName: nCName

attributeId: 1.2.840.113556.1.2.16

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: TRUE

schemaIdGuid: bf9679d6-0de6-11d0-a285-00aa003049e2

systemOnly: TRUE

searchFlags: fPRESERVEONDELETE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.4"></a>
## 2.4 Attribute nETBIOSName

This attribute specifies the name of the object to be used over NetBIOS.

cn: NETBIOS-Name

ldapDisplayName: nETBIOSName

attributeId: 1.2.840.113556.1.4.87

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: bf9679d8-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: fATTINDEX

rangeLower: 1

rangeUpper: 16

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.5"></a>
## 2.5 Attribute netbootAllowNewClients

This attribute is reserved for internal use.

cn: netboot-Allow-New-Clients

ldapDisplayName: netbootAllowNewClients

attributeId: 1.2.840.113556.1.4.849

attributeSyntax: 2.5.5.8

omSyntax: 1

isSingleValued: TRUE

schemaIdGuid: 07383076-91df-11d1-aebc-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.6"></a>
## 2.6 Attribute netbootAnswerOnlyValidClients

This attribute specifies whether the server answers all computers or only pre-staged client computers.

cn: netboot-Answer-Only-Valid-Clients

ldapDisplayName: netbootAnswerOnlyValidClients

attributeId: 1.2.840.113556.1.4.854

attributeSyntax: 2.5.5.8

omSyntax: 1

isSingleValued: TRUE

schemaIdGuid: 0738307b-91df-11d1-aebc-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.7"></a>
## 2.7 Attribute netbootAnswerRequests

This attribute enables the RIS server to accept any RIS requests.

cn: netboot-Answer-Requests

ldapDisplayName: netbootAnswerRequests

attributeId: 1.2.840.113556.1.4.853

attributeSyntax: 2.5.5.8

omSyntax: 1

isSingleValued: TRUE

schemaIdGuid: 0738307a-91df-11d1-aebc-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.8"></a>
## 2.8 Attribute netbootCurrentClientCount

The netboot-Current-Client-Count attribute is reserved for internal use.

cn: netboot-Current-Client-Count

ldapDisplayName: netbootCurrentClientCount

attributeId: 1.2.840.113556.1.4.852

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: 07383079-91df-11d1-aebc-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.9"></a>
## 2.9 Attribute netbootDUID

This attribute is used to store a DHCPv6 DUID device ID.

cn: Netboot-DUID

ldapDisplayName: netbootDUID

attributeId: 1.2.840.113556.1.4.2234

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: 532570bd-3d77-424f-822f-0d636dc6daad

systemOnly: FALSE

searchFlags: fATTINDEX

rangeLower: 2

rangeUpper: 128

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows Server 2012 operating system.

<a id="Section_2.10"></a>
## 2.10 Attribute netbootGUID

This attribute specifies the diskless boot: Machine on-board GUID. Corresponds to the computer's network card MAC address.

cn: Netboot-GUID

ldapDisplayName: netbootGUID

attributeId: 1.2.840.113556.1.4.359

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: 3e978921-8c01-11d0-afda-00c04fd930c9

systemOnly: FALSE

searchFlags: fATTINDEX

rangeLower: 16

rangeUpper: 16

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.11"></a>
## 2.11 Attribute netbootInitialization

This attribute specifies the default boot path for diskless boot.

cn: Netboot-Initialization

ldapDisplayName: netbootInitialization

attributeId: 1.2.840.113556.1.4.358

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 3e978920-8c01-11d0-afda-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.12"></a>
## 2.12 Attribute netbootIntelliMirrorOSes

The netboot-IntelliMirror-OSes attribute is reserved for internal use.

cn: netboot-IntelliMirror-OSes

ldapDisplayName: netbootIntelliMirrorOSes

attributeId: 1.2.840.113556.1.4.857

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 0738307e-91df-11d1-aebc-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.13"></a>
## 2.13 Attribute netbootLimitClients

The netboot-Limit-Clients attribute is reserved for internal use.

cn: netboot-Limit-Clients

ldapDisplayName: netbootLimitClients

attributeId: 1.2.840.113556.1.4.850

attributeSyntax: 2.5.5.8

omSyntax: 1

isSingleValued: TRUE

schemaIdGuid: 07383077-91df-11d1-aebc-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.14"></a>
## 2.14 Attribute netbootLocallyInstalledOSes

The netboot-Locally-Installed-OSes attribute is reserved for internal use.

cn: netboot-Locally-Installed-OSes

ldapDisplayName: netbootLocallyInstalledOSes

attributeId: 1.2.840.113556.1.4.859

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 07383080-91df-11d1-aebc-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.15"></a>
## 2.15 Attribute netbootMachineFilePath

This attribute specifies the server that answers the client. In Windows Server 2003 operating system, it can indicate the startrom that the client gets.

cn: Netboot-Machine-File-Path

ldapDisplayName: netbootMachineFilePath

attributeId: 1.2.840.113556.1.4.361

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 3e978923-8c01-11d0-afda-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.16"></a>
## 2.16 Attribute netbootMaxClients

The netboot-Max-Clients attribute is reserved for internal use.

cn: netboot-Max-Clients

ldapDisplayName: netbootMaxClients

attributeId: 1.2.840.113556.1.4.851

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: 07383078-91df-11d1-aebc-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.17"></a>
## 2.17 Attribute netbootMirrorDataFile

The Netboot-Mirror-Data-File attribute is reserved for internal use.

cn: Netboot-Mirror-Data-File

ldapDisplayName: netbootMirrorDataFile

attributeId: 1.2.840.113556.1.4.1241

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 2df90d85-009f-11d2-aa4c-00c04fd7d83a

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.18"></a>
## 2.18 Attribute netbootNewMachineNamingPolicy

This attribute specifies the naming scheme that new client computer accounts will use.

cn: netboot-New-Machine-Naming-Policy

ldapDisplayName: netbootNewMachineNamingPolicy

attributeId: 1.2.840.113556.1.4.855

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 0738307c-91df-11d1-aebc-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.19"></a>
## 2.19 Attribute netbootNewMachineOU

This attribute specifies where the new client computer account will be created.

cn: netboot-New-Machine-OU

ldapDisplayName: netbootNewMachineOU

attributeId: 1.2.840.113556.1.4.856

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: TRUE

schemaIdGuid: 0738307d-91df-11d1-aebc-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.20"></a>
## 2.20 Attribute netbootSCPBL

This attribute is the back link attribute of netbootServer and contains a list of service connection points that reference this netboot server.

cn: netboot-SCP-BL

ldapDisplayName: netbootSCPBL

attributeId: 1.2.840.113556.1.4.864

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: FALSE

schemaIdGuid: 07383082-91df-11d1-aebc-0000f80367c1

systemOnly: TRUE

searchFlags: 0

linkID: 101

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_NOT_REPLICATED

Version-Specific Behavior: First implemented on Windows 2000 Server.

In Windows 2000 Server, the following attributes are defined differently:

isSingleValued: TRUE

<a id="Section_2.21"></a>
## 2.21 Attribute netbootServer

This attribute specifies the distinguished name of a netboot server.

cn: netboot-Server

ldapDisplayName: netbootServer

attributeId: 1.2.840.113556.1.4.860

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: TRUE

schemaIdGuid: 07383081-91df-11d1-aebc-0000f80367c1

systemOnly: FALSE

searchFlags: 0

linkID: 100

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.22"></a>
## 2.22 Attribute netbootSIFFile

The Netboot-SIF-File attribute is reserved for internal use.

cn: Netboot-SIF-File

ldapDisplayName: netbootSIFFile

attributeId: 1.2.840.113556.1.4.1240

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 2df90d84-009f-11d2-aa4c-00c04fd7d83a

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.23"></a>
## 2.23 Attribute netbootTools

The netboot-Tools attribute is reserved for internal use.

cn: netboot-Tools

ldapDisplayName: netbootTools

attributeId: 1.2.840.113556.1.4.858

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 0738307f-91df-11d1-aebc-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.24"></a>
## 2.24 Attribute networkAddress

This attribute specifies the TCP/IP address for a network segment, which is also called the subnet address.

cn: Network-Address

ldapDisplayName: networkAddress

attributeId: 1.2.840.113556.1.2.459

attributeSyntax: 2.5.5.4

omSyntax: 20

isSingleValued: FALSE

schemaIdGuid: bf9679d9-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

rangeLower: 0

rangeUpper: 256

mapiID: 33136

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.25"></a>
## 2.25 Attribute nextLevelStore

This attribute specifies the next class store to search.

cn: Next-Level-Store

ldapDisplayName: nextLevelStore

attributeId: 1.2.840.113556.1.4.214

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: TRUE

schemaIdGuid: bf9679da-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.26"></a>
## 2.26 Attribute nextRid

This attribute specifies the **Next Rid** field used by the mixed mode allocator. See [MS-SAMR](../MS-SAMR/MS-SAMR.md) and [MS-DRSR](../MS-DRSR/MS-DRSR.md) for more information on how RID pools are defined.

cn: Next-Rid

ldapDisplayName: nextRid

attributeId: 1.2.840.113556.1.4.88

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: bf9679db-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.27"></a>
## 2.27 Attribute nisMapEntry

This attribute specifies one map entry of a non-standard map.

cn: NisMapEntry

ldapDisplayName: nisMapEntry

attributeId: 1.3.6.1.1.1.1.27

attributeSyntax: 2.5.5.5

omSyntax: 22

isSingleValued: TRUE

schemaIdGuid: 4a95216e-fcc0-402e-b57f-5971626148a9

systemOnly: FALSE

searchFlags: 0

rangeUpper: 1024

Version-Specific Behavior: First implemented on Windows Server 2003 R2 operating system.

<a id="Section_2.28"></a>
## 2.28 Attribute nisMapName

The attribute contains the name of the map to which the object belongs.

cn: NisMapName

ldapDisplayName: nisMapName

attributeId: 1.3.6.1.1.1.1.26

attributeSyntax: 2.5.5.5

omSyntax: 22

isSingleValued: TRUE

schemaIdGuid: 969d3c79-0e9a-4d95-b0ac-bdde7ff8f3a1

systemOnly: FALSE

searchFlags: 0

rangeUpper: 1024

Version-Specific Behavior: First implemented on Windows Server 2003 R2.

<a id="Section_2.29"></a>
## 2.29 Attribute nisNetgroupTriple

This attribute specifies one entry from a netgroup map.

cn: NisNetgroupTriple

ldapDisplayName: nisNetgroupTriple

attributeId: 1.3.6.1.1.1.1.14

attributeSyntax: 2.5.5.5

omSyntax: 22

isSingleValued: FALSE

schemaIdGuid: a8032e74-30ef-4ff5-affc-0fc217783fec

systemOnly: FALSE

searchFlags: 0

rangeUpper: 153600

Version-Specific Behavior: First implemented on Windows Server 2003 R2.

<a id="Section_2.30"></a>
## 2.30 Attribute nonSecurityMember

This attribute specifies non-security members of a group. It is used for Microsoft Exchange Server distribution lists.

cn: Non-Security-Member

ldapDisplayName: nonSecurityMember

attributeId: 1.2.840.113556.1.4.530

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: FALSE

schemaIdGuid: 52458018-ca6a-11d0-afff-0000f80367c1

systemOnly: FALSE

searchFlags: 0

linkID: 50

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.31"></a>
## 2.31 Attribute nonSecurityMemberBL

This attribute is the back link attribute of nonSecurityMember and contains the list of nonsecurity members for an Exchange Server distribution list.

cn: Non-Security-Member-BL

ldapDisplayName: nonSecurityMemberBL

attributeId: 1.2.840.113556.1.4.531

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: FALSE

schemaIdGuid: 52458019-ca6a-11d0-afff-0000f80367c1

systemOnly: TRUE

searchFlags: 0

linkID: 51

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_NOT_REPLICATED

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.32"></a>
## 2.32 Attribute notes

This attribute specifies a free text field for general-purpose notes on an object.

cn: Additional-Information

ldapDisplayName: notes

attributeId: 1.2.840.113556.1.4.265

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 6d05fb41-246b-11d0-a9c8-00aa006c33ed

systemOnly: FALSE

searchFlags: 0

rangeUpper: 32768

attributeSecurityGuid: e48d0154-bcf8-11d1-8702-00c04fb96050

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

On Windows 2000 Server, rangeUpper is not defined.

<a id="Section_2.33"></a>
## 2.33 Attribute notificationList

This attribute is not necessary for Active Directory to function. The protocol does not define a format beyond that required by the schema.

cn: Notification-List

ldapDisplayName: notificationList

attributeId: 1.2.840.113556.1.4.303

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: TRUE

schemaIdGuid: 19195a56-6da0-11d0-afd3-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.34"></a>
## 2.34 Attribute nTGroupMembers

This attribute is not necessary for Active Directory to function. The protocol does not define a format beyond that required by the schema.

cn: NT-Group-Members

ldapDisplayName: nTGroupMembers

attributeId: 1.2.840.113556.1.4.89

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: FALSE

schemaIdGuid: bf9679df-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.35"></a>
## 2.35 Attribute nTMixedDomain

This attribute specifies whether the domain is in native mode or mixed mode. This attribute is found in the domainDNS (head) object for the domain. For more information on how AD uses this attribute, refer to [MS-ADTS](../MS-ADTS/MS-ADTS.md) section 6.1.4.1.

cn: NT-Mixed-Domain

ldapDisplayName: nTMixedDomain

attributeId: 1.2.840.113556.1.4.357

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: 3e97891f-8c01-11d0-afda-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.36"></a>
## 2.36 Attribute ntPwdHistory

This attribute specifies the password history of the user in Windows NT operating system one-way format (OWF). Windows 2000 operating system uses the Windows NT OWF.

For more information about usage, refer to [MS-SAMR](../MS-SAMR/MS-SAMR.md) sections 3.1.1.6 and 3.1.1.9.1.

cn: Nt-Pwd-History

ldapDisplayName: ntPwdHistory

attributeId: 1.2.840.113556.1.4.94

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: FALSE

schemaIdGuid: bf9679e2-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.37"></a>
## 2.37 Attribute nTSecurityDescriptor

This attribute specifies the Windows NT security descriptor for an object. For more information about how Active Directory uses this attribute, refer to [MS-ADTS](../MS-ADTS/MS-ADTS.md) section 5.1.

cn: NT-Security-Descriptor

ldapDisplayName: nTSecurityDescriptor

attributeId: 1.2.840.113556.1.2.281

attributeSyntax: 2.5.5.15

omSyntax: 66

isSingleValued: TRUE

schemaIdGuid: bf9679e3-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: fPRESERVEONDELETE

rangeLower: 0

rangeUpper: 132096

mapiID: 32787

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_IS_OPERATIONAL |

FLAG_ATTR_REQ_PARTIAL_SET_MEMBER

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

In Windows 2000 Server, the following attributes are defined differently:

systemFlags: FLAG_SCHEMA_BASE_OBJECT |

FLAG_ATTR_REQ_PARTIAL_SET_MEMBER

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.38"></a>
## 2.38 Attribute o

This attribute specifies the name of the company or organization.

cn: Organization-Name

ldapDisplayName: o

attributeId: 2.5.4.10

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: bf9679ef-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 64

attributeSecurityGuid: e48d0154-bcf8-11d1-8702-00c04fb96050

mapiID: 33025

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT |

FLAG_ATTR_REQ_PARTIAL_SET_MEMBER

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.39"></a>
## 2.39 Attribute objectCategory

This attribute specifies an object class name that is used to group objects of this or derived classes. Every object in Active Directory has this attribute. See [MS-ADTS](../MS-ADTS/MS-ADTS.md) section 3.1.1.3.1.3.5 for more information about how Active Directory uses this attribute in searches.

cn: Object-Category

ldapDisplayName: objectCategory

attributeId: 1.2.840.113556.1.4.782

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: TRUE

schemaIdGuid: 26d97369-6070-11d1-a9c6-0000f80367c1

systemOnly: FALSE

searchFlags: fATTINDEX

attributeSecurityGuid: e48d0154-bcf8-11d1-8702-00c04fb96050

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT |

FLAG_ATTR_REQ_PARTIAL_SET_MEMBER

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.40"></a>
## 2.40 Attribute objectClass

This attribute specifies the list of classes of which this object is an instance. See [MS-ADTS](../MS-ADTS/MS-ADTS.md) section 3.1.1.2.4.3 for information about how this attribute is used.

cn: Object-Class

ldapDisplayName: objectClass

attributeId: 2.5.4.0

attributeSyntax: 2.5.5.2

omSyntax: 6

isSingleValued: FALSE

schemaIdGuid: bf9679e5-0de6-11d0-a285-00aa003049e2

systemOnly: TRUE

searchFlags: fATTINDEX | fPRESERVEONDELETE

attributeSecurityGuid: e48d0154-bcf8-11d1-8702-00c04fb96050

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT |

FLAG_ATTR_REQ_PARTIAL_SET_MEMBER

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

**Note**: If the DC functional level of the DC that initially created the forest is greater than or equal to DS_BEHAVIOR_WIN2008, then the fATTINDEX bit is present by default in the [searchFlags](#Section_f0b64fa860134e3caad3ec881c11836d) attribute of the objectClass attribute; otherwise it is not present by default.

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.41"></a>
## 2.41 Attribute objectClassCategory

This attribute specifies the class type, such as abstract, auxiliary, or structured. See [MS-ADTS](../MS-ADTS/MS-ADTS.md) for how this attribute is used by the Active Directory service.

cn: Object-Class-Category

ldapDisplayName: objectClassCategory

attributeId: 1.2.840.113556.1.2.370

attributeSyntax: 2.5.5.9

omSyntax: 10

isSingleValued: TRUE

schemaIdGuid: bf9679e6-0de6-11d0-a285-00aa003049e2

systemOnly: TRUE

searchFlags: 0

rangeLower: 0

rangeUpper: 3

mapiID: 33014

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.42"></a>
## 2.42 Attribute objectClasses

This attribute specifies a multivalued property containing strings that represent each class in the schema. Each value contains the governsID, lDAPDisplayName, mustContain, mayContain, and so on. For more information, refer to [MS-ADTS](../MS-ADTS/MS-ADTS.md) section 3.1.1.3.1.1.1.

cn: Object-Classes

ldapDisplayName: objectClasses

attributeId: 2.5.21.6

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 9a7ad94b-ca53-11d1-bbd0-0080c76670c0

systemOnly: TRUE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_IS_CONSTRUCTED |

FLAG_DOMAIN_DISALLOW_RENAME

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.43"></a>
## 2.43 Attribute objectCount

This attribute is not necessary for Active Directory to function. The protocol does not define a format beyond that required by the schema.

cn: Object-Count

ldapDisplayName: objectCount

attributeId: 1.2.840.113556.1.4.506

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: 34aaa216-b699-11d0-afee-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.44"></a>
## 2.44 Attribute objectGUID

This attribute specifies the unique identifier for an object. The GUID data type is defined in [MS-DTYP](../MS-DTYP/MS-DTYP.md) section 2.3.4. GUID usage by the Active Directory service is defined in [MS-ADTS](../MS-ADTS/MS-ADTS.md), in particular in section 3.1.1.1.3.

cn: Object-Guid

ldapDisplayName: objectGUID

attributeId: 1.2.840.113556.1.4.2

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: bf9679e7-0de6-11d0-a285-00aa003049e2

systemOnly: TRUE

searchFlags: fPRESERVEONDELETE | fATTINDEX

rangeLower: 16

rangeUpper: 16

attributeSecurityGuid: e48d0154-bcf8-11d1-8702-00c04fb96050

mapiID: 35949

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT |

FLAG_ATTR_REQ_PARTIAL_SET_MEMBER | FLAG_ATTR_NOT_REPLICATED

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.45"></a>
## 2.45 Attribute objectSid

This attribute specifies a binary value that specifies the security identifier (SID) of a security principal object. The SID is a unique value used to identify security principal objects. For more information on the SID data type, refer to [MS-DTYP](../MS-DTYP/MS-DTYP.md) section 2.4.2. SID usage is also discussed in [MS-ADTS](../MS-ADTS/MS-ADTS.md), in particular in section 3.1.1.1.3.

Because this is an attribute of String(SID) syntax, an application writing to this attribute via the LDAP protocol can specify a value for this attribute as a valid SDDL SID string, as specified in [MS-ADTS] section 3.1.1.3.1.2.5. The directory service will convert that value to its binary value equivalent.

cn: Object-Sid

ldapDisplayName: objectSid

attributeId: 1.2.840.113556.1.4.146

attributeSyntax: 2.5.5.17

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: bf9679e8-0de6-11d0-a285-00aa003049e2

systemOnly: TRUE

searchFlags: fPRESERVEONDELETE | fATTINDEX

rangeLower: 0

rangeUpper: 28

attributeSecurityGuid: 59ba2f42-79a2-11d0-9020-00c04fc2d3cf

mapiID: 32807

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT |

FLAG_ATTR_REQ_PARTIAL_SET_MEMBER

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

In Windows 2000 Server, the following attributes are defined differently:

systemOnly: FALSE

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.46"></a>
## 2.46 Attribute objectVersion

This attribute specifies a generic store for a version number for the object. Active Directory uses this attribute for a few operations. Refer to [MS-ADTS](../MS-ADTS/MS-ADTS.md) section 3.1.1.2.1 for more information.

cn: Object-Version

ldapDisplayName: objectVersion

attributeId: 1.2.840.113556.1.2.76

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: 16775848-47f3-11d1-a9c3-0000f80367c1

systemOnly: FALSE

searchFlags: 0

mapiID: 33015

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.47"></a>
## 2.47 Attribute oEMInformation

This attribute specifies OEM information.

cn: OEM-Information

ldapDisplayName: oEMInformation

attributeId: 1.2.840.113556.1.4.151

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: bf9679ea-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

rangeLower: 0

rangeUpper: 32767

attributeSecurityGuid: b8119fd0-04f6-4762-ab7a-4986c76b3f9a

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

In Windows 2000 Server, attribute attributeSecurityGuid is not defined.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.48"></a>
## 2.48 Attribute oMObjectClass

This attribute specifies the unique object ID (OID) for the attribute or class. See [MS-ADTS](../MS-ADTS/MS-ADTS.md) section 3.1.1.2.2.2, "LDAP Representation", for information on how this object is used by the Active Directory service.

cn: OM-Object-Class

ldapDisplayName: oMObjectClass

attributeId: 1.2.840.113556.1.2.218

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: bf9679ec-0de6-11d0-a285-00aa003049e2

systemOnly: TRUE

searchFlags: 0

mapiID: 33021

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.49"></a>
## 2.49 Attribute oMSyntax

Used as part of specifying the syntax of an attribute. See [MS-ADTS](../MS-ADTS/MS-ADTS.md) section 3.1.1.2.2.2, LDAP Representation, for information on how this object is used by the Active Directory service.

cn: OM-Syntax

ldapDisplayName: oMSyntax

attributeId: 1.2.840.113556.1.2.231

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: bf9679ed-0de6-11d0-a285-00aa003049e2

systemOnly: TRUE

searchFlags: fPRESERVEONDELETE

mapiID: 33022

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.50"></a>
## 2.50 Attribute oMTGuid

This attribute specifies the unique identifier for a Link-Track-Object-Move table entry.

cn: OMT-Guid

ldapDisplayName: oMTGuid

attributeId: 1.2.840.113556.1.4.505

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: ddac0cf3-af8f-11d0-afeb-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

rangeLower: 0

rangeUpper: 16

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.51"></a>
## 2.51 Attribute oMTIndxGuid

This attribute specifies the index identifier for a Link-Track-Object-Move table entry.

cn: OMT-Indx-Guid

ldapDisplayName: oMTIndxGuid

attributeId: 1.2.840.113556.1.4.333

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: 1f0075fa-7e40-11d0-afd6-00c04fd930c9

systemOnly: FALSE

searchFlags: fATTINDEX

rangeLower: 0

rangeUpper: 16

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.52"></a>
## 2.52 Attribute oncRpcNumber

This attribute specifies a part of the RPC map and stores the RPC number for UNIX RPCs.

cn: OncRpcNumber

ldapDisplayName: oncRpcNumber

attributeId: 1.3.6.1.1.1.1.18

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: 966825f5-01d9-4a5c-a011-d15ae84efa55

systemOnly: FALSE

searchFlags: 0

Version-Specific Behavior: First implemented on Windows Server 2003 R2.

<a id="Section_2.53"></a>
## 2.53 Attribute operatingSystem

This attribute specifies the operating system name (for example, Windows NT).

cn: Operating-System

ldapDisplayName: operatingSystem

attributeId: 1.2.840.113556.1.4.363

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 3e978925-8c01-11d0-afda-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.54"></a>
## 2.54 Attribute operatingSystemHotfix

This attribute specifies the hotfix level of the operating system.

cn: Operating-System-Hotfix

ldapDisplayName: operatingSystemHotfix

attributeId: 1.2.840.113556.1.4.415

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: bd951b3c-9c96-11d0-afdd-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.55"></a>
## 2.55 Attribute operatingSystemServicePack

This attribute specifies the operating system service pack ID string (for example, SP3).

cn: Operating-System-Service-Pack

ldapDisplayName: operatingSystemServicePack

attributeId: 1.2.840.113556.1.4.365

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 3e978927-8c01-11d0-afda-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.56"></a>
## 2.56 Attribute operatingSystemVersion

This attribute specifies the operating system version string (for example, 4.0).

cn: Operating-System-Version

ldapDisplayName: operatingSystemVersion

attributeId: 1.2.840.113556.1.4.364

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 3e978926-8c01-11d0-afda-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.57"></a>
## 2.57 Attribute operatorCount

The Operator-Count attribute is part of the mandatory User\Group properties (see [MS-ADTS](../MS-ADTS/MS-ADTS.md) for more information).

cn: Operator-Count

ldapDisplayName: operatorCount

attributeId: 1.2.840.113556.1.4.144

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: bf9679ee-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.58"></a>
## 2.58 Attribute optionDescription

This attribute specifies a description of an option that is set on the DHCP server.

cn: Option-Description

ldapDisplayName: optionDescription

attributeId: 1.2.840.113556.1.4.712

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 963d274d-48be-11d1-a9c3-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.59"></a>
## 2.59 Attribute options

This attribute specifies a bit field, where the meaning of the bits varies from objectClass to objectClass. It can occur on Inter-Site-Transport, NTDS-Connection, NTDS-DSA, NTDS-Site-Settings, and Site-Link objects. See [MS-DRSR](../MS-DRSR/MS-DRSR.md) and [MS-ADTS](../MS-ADTS/MS-ADTS.md) more for information.

cn: Options

ldapDisplayName: options

attributeId: 1.2.840.113556.1.4.307

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: 19195a53-6da0-11d0-afd3-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.60"></a>
## 2.60 Attribute optionsLocation

This attribute specifies the options location for the DHCP server, and contains the distinguished name (DN) for alternate sites that contain the options information.

cn: Options-Location

ldapDisplayName: optionsLocation

attributeId: 1.2.840.113556.1.4.713

attributeSyntax: 2.5.5.5

omSyntax: 19

isSingleValued: FALSE

schemaIdGuid: 963d274e-48be-11d1-a9c3-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.61"></a>
## 2.61 Attribute organizationalStatus

The organizationalStatus attribute specifies a category by which a person is often referred to in an organization. This attribute is part of the X.500 schema, as described in [[RFC1274]](https://go.microsoft.com/fwlink/?LinkId=90271).

cn: organizationalStatus

ldapDisplayName: organizationalStatus

attributeId: 0.9.2342.19200300.100.1.45

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 28596019-7349-4d2f-adff-5a629961f942

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 256

Version-Specific Behavior: First implemented on Windows Server 2003.

<a id="Section_2.62"></a>
## 2.62 Attribute originalDisplayTable

This attribute specifies the MAPI (original) display table for an address entry.

cn: Original-Display-Table

ldapDisplayName: originalDisplayTable

attributeId: 1.2.840.113556.1.2.445

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: 5fd424ce-1262-11d0-a060-00aa006c33ed

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 32768

mapiID: 33027

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.63"></a>
## 2.63 Attribute originalDisplayTableMSDOS

This attribute specifies the MAPI (original) display table for an MS-DOS address entry.

cn: Original-Display-Table-MSDOS

ldapDisplayName: originalDisplayTableMSDOS

attributeId: 1.2.840.113556.1.2.214

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: 5fd424cf-1262-11d0-a060-00aa006c33ed

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 32768

mapiID: 33028

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.64"></a>
## 2.64 Attribute otherFacsimileTelephoneNumber

This attribute specifies a list of alternate facsimile numbers.

cn: Phone-Fax-Other

ldapDisplayName: otherFacsimileTelephoneNumber

attributeId: 1.2.840.113556.1.4.646

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 0296c11d-40da-11d1-a9c0-0000f80367c1

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 64

attributeSecurityGuid: 77b5b886-944a-11d1-aebd-0000f80367c1

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.65"></a>
## 2.65 Attribute otherHomePhone

This attribute specifies a list of alternate home phone numbers.

cn: Phone-Home-Other

ldapDisplayName: otherHomePhone

attributeId: 1.2.840.113556.1.2.277

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: f0f8ffa2-1191-11d0-a060-00aa006c33ed

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 64

attributeSecurityGuid: 77b5b886-944a-11d1-aebd-0000f80367c1

mapiID: 14895

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.66"></a>
## 2.66 Attribute otherIpPhone

This attribute specifies a list of alternate TCP/IP addresses for the phone. It is used by telephony.

cn: Phone-Ip-Other

ldapDisplayName: otherIpPhone

attributeId: 1.2.840.113556.1.4.722

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 4d146e4b-48d4-11d1-a9c3-0000f80367c1

systemOnly: FALSE

searchFlags: 0

attributeSecurityGuid: 77b5b886-944a-11d1-aebd-0000f80367c1

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.67"></a>
## 2.67 Attribute otherLoginWorkstations

This attribute specifies non-Windows NT or LAN Manager workstations from which a user can log on.

cn: Other-Login-Workstations

ldapDisplayName: otherLoginWorkstations

attributeId: 1.2.840.113556.1.4.91

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: bf9679f1-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: fCOPY

rangeLower: 0

rangeUpper: 1024

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.68"></a>
## 2.68 Attribute otherMailbox

This attribute specifies other additional mail addresses in a form such as CCMAIL: JeffSmith.

cn: Other-Mailbox

ldapDisplayName: otherMailbox

attributeId: 1.2.840.113556.1.4.651

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 0296c123-40da-11d1-a9c0-0000f80367c1

systemOnly: FALSE

searchFlags: 0

attributeSecurityGuid: e48d0154-bcf8-11d1-8702-00c04fb96050

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.69"></a>
## 2.69 Attribute otherMobile

This attribute specifies a list of alternate cell phone numbers.

cn: Phone-Mobile-Other

ldapDisplayName: otherMobile

attributeId: 1.2.840.113556.1.4.647

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 0296c11e-40da-11d1-a9c0-0000f80367c1

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 64

attributeSecurityGuid: 77b5b886-944a-11d1-aebd-0000f80367c1

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.70"></a>
## 2.70 Attribute otherPager

This attribute specifies a list of alternate pager numbers.

cn: Phone-Pager-Other

ldapDisplayName: otherPager

attributeId: 1.2.840.113556.1.2.118

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: f0f8ffa4-1191-11d0-a060-00aa006c33ed

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 64

attributeSecurityGuid: 77b5b886-944a-11d1-aebd-0000f80367c1

mapiID: 35950

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.71"></a>
## 2.71 Attribute otherTelephone

This attribute specifies a list of alternate office phone numbers.

cn: Phone-Office-Other

ldapDisplayName: otherTelephone

attributeId: 1.2.840.113556.1.2.18

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: f0f8ffa5-1191-11d0-a060-00aa006c33ed

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 64

attributeSecurityGuid: 77b5b886-944a-11d1-aebd-0000f80367c1

mapiID: 14875

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.72"></a>
## 2.72 Attribute otherWellKnownObjects

This attribute specifies a list of containers by GUID and distinguished name. This permits retrieving an object after it has been moved by using just the GUID and the domain name. Whenever the object is moved, the Active Directory system [MS-ADOD](../MS-ADOD/MS-ADOD.md) will automatically update the distinguished name. See [MS-ADTS](../MS-ADTS/MS-ADTS.md) section 6.1.

cn: Other-Well-Known-Objects

ldapDisplayName: otherWellKnownObjects

attributeId: 1.2.840.113556.1.4.1359

attributeSyntax: 2.5.5.7

omSyntax: 127

omObjectClass: 1.2.840.113556.1.1.1.11

isSingleValued: FALSE

schemaIdGuid: 1ea64e5d-ac0f-11d2-90df-00c04fd91ab1

systemOnly: FALSE

searchFlags: 0

rangeLower: 16

rangeUpper: 16

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

In Windows 2000 Server, attribute rangeLower and rangeUpper are not defined.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.73"></a>
## 2.73 Attribute ou

This attribute specifies the name of the organizational unit. When used as a component of a directory name, it identifies an organizational unit with which the named object is affiliated.

cn: Organizational-Unit-Name

ldapDisplayName: ou

attributeId: 2.5.4.11

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: bf9679f0-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: fATTINDEX

rangeLower: 1

rangeUpper: 64

attributeSecurityGuid: e48d0154-bcf8-11d1-8702-00c04fb96050

mapiID: 33026

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT |

FLAG_ATTR_REQ_PARTIAL_SET_MEMBER

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.74"></a>
## 2.74 Attribute owner

This attribute specifies the name of some object that has some responsibility for the associated object. An attribute value for owner is a distinguished name (which could represent a group of names) and can recur.

cn: Owner

ldapDisplayName: owner

attributeId: 2.5.4.32

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: TRUE

schemaIdGuid: bf9679f3-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

linkID: 44

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.75"></a>
## 2.75 Attribute ownerBL

This attribute specifies the back-link to the owner attribute. It contains a list of owners for an object.

cn: ms-Exch-Owner-BL

ldapDisplayName: ownerBL

attributeId: 1.2.840.113556.1.2.104

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: FALSE

schemaIdGuid: bf9679f4-0de6-11d0-a285-00aa003049e2

systemOnly: TRUE

searchFlags: 0

linkID: 45

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_NOT_REPLICATED

Version-Specific Behavior: First implemented on Windows Server 2003.

<a id="Section_2.76"></a>
## 2.76 Attribute packageFlags

This attribute specifies a bit field that contains the deployment state flags for an application. This attribute can be set to 0 or a combination of one or more of the values listed in [[MSDN-PACKAGE-FLAGS]](https://go.microsoft.com/fwlink/?LinkId=90058).

cn: Package-Flags

ldapDisplayName: packageFlags

attributeId: 1.2.840.113556.1.4.327

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: 7d6c0e99-7e20-11d0-afd6-00c04fd930c9

systemOnly: FALSE

searchFlags: fATTINDEX

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.77"></a>
## 2.77 Attribute packageName

This attribute specifies the deployment name for an application.

cn: Package-Name

ldapDisplayName: packageName

attributeId: 1.2.840.113556.1.4.326

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 7d6c0e98-7e20-11d0-afd6-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.78"></a>
## 2.78 Attribute packageType

This attribute specifies the type of installation required for an application package. For example, MSI, EXE, CAB.

cn: Package-Type

ldapDisplayName: packageType

attributeId: 1.2.840.113556.1.4.324

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: 7d6c0e96-7e20-11d0-afd6-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.79"></a>
## 2.79 Attribute pager

This attribute specifies the primary pager number.

cn: Phone-Pager-Primary

ldapDisplayName: pager

attributeId: 0.9.2342.19200300.100.1.42

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: f0f8ffa6-1191-11d0-a060-00aa006c33ed

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 64

attributeSecurityGuid: 77b5b886-944a-11d1-aebd-0000f80367c1

mapiID: 14881

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.80"></a>
## 2.80 Attribute parentCA

This attribute specifies the distinguished name of a CA object for a parent certificate authority.

cn: Parent-CA

ldapDisplayName: parentCA

attributeId: 1.2.840.113556.1.4.557

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: TRUE

schemaIdGuid: 5245801b-ca6a-11d0-afff-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.81"></a>
## 2.81 Attribute parentCACertificateChain

This attribute specifies the DER-encoded X509v3 certificate [[X509]](https://go.microsoft.com/fwlink/?LinkId=90590) for a parent certificate authority.

cn: Parent-CA-Certificate-Chain

ldapDisplayName: parentCACertificateChain

attributeId: 1.2.840.113556.1.4.685

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: 963d2733-48be-11d1-a9c3-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.82"></a>
## 2.82 Attribute parentGUID

This attribute specifies a constructed attribute, invented to support the DirSync control. It holds the objectGuid of an object's parent when replicating an object's creation, rename, or move.

cn: Parent-GUID

ldapDisplayName: parentGUID

attributeId: 1.2.840.113556.1.4.1224

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: 2df90d74-009f-11d2-aa4c-00c04fd7d83a

systemOnly: TRUE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_IS_CONSTRUCTED |

FLAG_DOMAIN_DISALLOW_RENAME

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.83"></a>
## 2.83 Attribute partialAttributeDeletionList

This attribute specifies the internal replication state of partial replicas (that is, on global catalogs (GCs)). It is an attribute of the partial replica NC object and is used when the GC is in the process of removing attributes from the objects in its partial replica NCs. See [MS-DRSR](../MS-DRSR/MS-DRSR.md) for more information on implementation usage.

cn: Partial-Attribute-Deletion-List

ldapDisplayName: partialAttributeDeletionList

attributeId: 1.2.840.113556.1.4.663

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: 28630ec0-41d5-11d1-a9c1-0000f80367c1

systemOnly: TRUE

searchFlags: 0

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT |

FLAG_ATTR_REQ_PARTIAL_SET_MEMBER | FLAG_ATTR_NOT_REPLICATED

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.84"></a>
## 2.84 Attribute partialAttributeSet

This attribute specifies the internal replication state of partial replicas (that is, on GCs). It is an attribute of the partial replica NC object, and defines the set of attributes present on a particular partial replica NC. See [MS-DRSR](../MS-DRSR/MS-DRSR.md) section 5.147 for more information on Active Directory service usage.

cn: Partial-Attribute-Set

ldapDisplayName: partialAttributeSet

attributeId: 1.2.840.113556.1.4.640

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: 19405b9e-3cfa-11d1-a9c0-0000f80367c1

systemOnly: TRUE

searchFlags: 0

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT |

FLAG_ATTR_REQ_PARTIAL_SET_MEMBER | FLAG_ATTR_NOT_REPLICATED

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.85"></a>
## 2.85 Attribute pekKeyChangeInterval

This attribute specifies the password encryption key change interval. For more information, refer to [MS-SAMR](../MS-SAMR/MS-SAMR.md).

cn: Pek-Key-Change-Interval

ldapDisplayName: pekKeyChangeInterval

attributeId: 1.2.840.113556.1.4.866

attributeSyntax: 2.5.5.16

omSyntax: 65

isSingleValued: TRUE

schemaIdGuid: 07383084-91df-11d1-aebc-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.86"></a>
## 2.86 Attribute pekList

This attribute specifies a list of password encryption keys. This attribute is for internal use only and it is not replicated. Its content is not accessible through any protocol, for more information see [MS-ADTS](../MS-ADTS/MS-ADTS.md).

cn: Pek-List

ldapDisplayName: pekList

attributeId: 1.2.840.113556.1.4.865

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: 07383083-91df-11d1-aebc-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_NOT_REPLICATED

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.87"></a>
## 2.87 Attribute pendingCACertificates

This attribute specifies the certificates that are about to become effective for this certificate authority.

cn: Pending-CA-Certificates

ldapDisplayName: pendingCACertificates

attributeId: 1.2.840.113556.1.4.693

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: 963d273c-48be-11d1-a9c3-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.88"></a>
## 2.88 Attribute pendingParentCA

This attribute specifies the reference to the certificate authorities that issued the pending certificates for this certificate authority.

cn: Pending-Parent-CA

ldapDisplayName: pendingParentCA

attributeId: 1.2.840.113556.1.4.695

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: FALSE

schemaIdGuid: 963d273e-48be-11d1-a9c3-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.89"></a>
## 2.89 Attribute perMsgDialogDisplayTable

This attribute specifies the per message options MAPI display table.

cn: Per-Msg-Dialog-Display-Table

ldapDisplayName: perMsgDialogDisplayTable

attributeId: 1.2.840.113556.1.2.325

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: 5fd424d3-1262-11d0-a060-00aa006c33ed

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 32768

mapiID: 33032

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.90"></a>
## 2.90 Attribute perRecipDialogDisplayTable

This attribute specifies the per recipient options MAPI display table.

cn: Per-Recip-Dialog-Display-Table

ldapDisplayName: perRecipDialogDisplayTable

attributeId: 1.2.840.113556.1.2.326

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: 5fd424d4-1262-11d0-a060-00aa006c33ed

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 32768

mapiID: 33033

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.91"></a>
## 2.91 Attribute personalTitle

This attribute specifies the user's title.

cn: Personal-Title

ldapDisplayName: personalTitle

attributeId: 1.2.840.113556.1.2.615

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 16775858-47f3-11d1-a9c3-0000f80367c1

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 64

attributeSecurityGuid: 77b5b886-944a-11d1-aebd-0000f80367c1

mapiID: 35947

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.92"></a>
## 2.92 Attribute photo

This attribute specifies an object encoded in G3 fax as explained in recommendation T.4 [[RFC804]](https://go.microsoft.com/fwlink/?LinkId=110405), with an ASN.1 wrapper to make it compatible with an X.400 BodyPart as defined in [[X420]](https://go.microsoft.com/fwlink/?LinkId=110403).

cn: photo

ldapDisplayName: photo

attributeId: 0.9.2342.19200300.100.1.7

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: FALSE

schemaIdGuid: 9c979768-ba1a-4c08-9632-c6a5c1ed649a

systemOnly: FALSE

searchFlags: 0

Version-Specific Behavior: First implemented on Windows Server 2003.

<a id="Section_2.93"></a>
## 2.93 Attribute physicalDeliveryOfficeName

This attribute specifies the office location in the user's place of business.

cn: Physical-Delivery-Office-Name

ldapDisplayName: physicalDeliveryOfficeName

attributeId: 2.5.4.19

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: bf9679f7-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: fANR | fATTINDEX

rangeLower: 1

rangeUpper: 128

attributeSecurityGuid: 77b5b886-944a-11d1-aebd-0000f80367c1

mapiID: 14873

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.94"></a>
## 2.94 Attribute physicalLocationObject

This attribute specifies a map from a device (for example, printer, computer, and so on) to a physical location.

cn: Physical-Location-Object

ldapDisplayName: physicalLocationObject

attributeId: 1.2.840.113556.1.4.514

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: TRUE

schemaIdGuid: b7b13119-b82e-11d0-afee-0000f80367c1

systemOnly: FALSE

searchFlags: fATTINDEX

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.95"></a>
## 2.95 Attribute pKICriticalExtensions

This attribute specifies a list of critical extensions in the certificate template.

cn: PKI-Critical-Extensions

ldapDisplayName: pKICriticalExtensions

attributeId: 1.2.840.113556.1.4.1330

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: fc5a9106-3b9d-11d2-90cc-00c04fd91ab1

systemOnly: FALSE

searchFlags: 0

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.96"></a>
## 2.96 Attribute pKIDefaultCSPs

This attribute specifies a list of cryptographic service providers for the certificate template.

cn: PKI-Default-CSPs

ldapDisplayName: pKIDefaultCSPs

attributeId: 1.2.840.113556.1.4.1334

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 1ef6336e-3b9e-11d2-90cc-00c04fd91ab1

systemOnly: FALSE

searchFlags: 0

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.97"></a>
## 2.97 Attribute pKIDefaultKeySpec

This attribute specifies the private key specification for the certificate template.

cn: PKI-Default-Key-Spec

ldapDisplayName: pKIDefaultKeySpec

attributeId: 1.2.840.113556.1.4.1327

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: 426cae6e-3b9d-11d2-90cc-00c04fd91ab1

systemOnly: FALSE

searchFlags: 0

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.98"></a>
## 2.98 Attribute pKIEnrollmentAccess

The PKI-Enrollment-Access attribute is for internal use only.

cn: PKI-Enrollment-Access

ldapDisplayName: pKIEnrollmentAccess

attributeId: 1.2.840.113556.1.4.1335

attributeSyntax: 2.5.5.15

omSyntax: 66

isSingleValued: FALSE

schemaIdGuid: 926be278-56f9-11d2-90d0-00c04fd91ab1

systemOnly: FALSE

searchFlags: 0

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.99"></a>
## 2.99 Attribute pKIExpirationPeriod

This attribute specifies the validity period for the certificate template.

cn: PKI-Expiration-Period

ldapDisplayName: pKIExpirationPeriod

attributeId: 1.2.840.113556.1.4.1331

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: 041570d2-3b9e-11d2-90cc-00c04fd91ab1

systemOnly: FALSE

searchFlags: 0

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.100"></a>
## 2.100 Attribute pKIExtendedKeyUsage

This attribute specifies the enhanced key usage OIDs for the certificate template.

cn: PKI-Extended-Key-Usage

ldapDisplayName: pKIExtendedKeyUsage

attributeId: 1.2.840.113556.1.4.1333

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 18976af6-3b9e-11d2-90cc-00c04fd91ab1

systemOnly: FALSE

searchFlags: 0

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.101"></a>
## 2.101 Attribute pKIKeyUsage

This attribute specifies the key usage extension for the certificate template.

cn: PKI-Key-Usage

ldapDisplayName: pKIKeyUsage

attributeId: 1.2.840.113556.1.4.1328

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: e9b0a87e-3b9d-11d2-90cc-00c04fd91ab1

systemOnly: FALSE

searchFlags: 0

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.102"></a>
## 2.102 Attribute pKIMaxIssuingDepth

This attribute specifies the maximum length of the certificate chain issued by the certificate.

cn: PKI-Max-Issuing-Depth

ldapDisplayName: pKIMaxIssuingDepth

attributeId: 1.2.840.113556.1.4.1329

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: f0bfdefa-3b9d-11d2-90cc-00c04fd91ab1

systemOnly: FALSE

searchFlags: 0

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.103"></a>
## 2.103 Attribute pKIOverlapPeriod

This attribute specifies the period during which the certificate has to be renewed before it is expired.

cn: PKI-Overlap-Period

ldapDisplayName: pKIOverlapPeriod

attributeId: 1.2.840.113556.1.4.1332

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: 1219a3ec-3b9e-11d2-90cc-00c04fd91ab1

systemOnly: FALSE

searchFlags: 0

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.104"></a>
## 2.104 Attribute pKT

This attribute specifies the DFS Partition Knowledge Table. It describes the structure of a Distributed File System (DFS) hierarchy.

cn: PKT

ldapDisplayName: pKT

attributeId: 1.2.840.113556.1.4.206

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: 8447f9f1-1027-11d0-a05f-00aa006c33ed

systemOnly: FALSE

searchFlags: 0

rangeUpper: 10485760

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

In Windows 2000 Server, attribute rangeUpper is not defined.

<a id="Section_2.105"></a>
## 2.105 Attribute pKTGuid

This attribute specifies the unique ID of a given DFS Partition Knowledge Table.

cn: PKT-Guid

ldapDisplayName: pKTGuid

attributeId: 1.2.840.113556.1.4.205

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: 8447f9f0-1027-11d0-a05f-00aa006c33ed

systemOnly: FALSE

searchFlags: 0

rangeLower: 16

rangeUpper: 16

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.106"></a>
## 2.106 Attribute policyReplicationFlags

This attribute specifies which LSA properties are replicated to clients. This attribute is not necessary for Active Directory to function. The protocol does not define a format beyond that required by the schema.

cn: Policy-Replication-Flags

ldapDisplayName: policyReplicationFlags

attributeId: 1.2.840.113556.1.4.633

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: 19405b96-3cfa-11d1-a9c0-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.107"></a>
## 2.107 Attribute portName

This attribute specifies a list of port names, for example, for printer ports or COM ports.

cn: Port-Name

ldapDisplayName: portName

attributeId: 1.2.840.113556.1.4.228

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 281416c4-1968-11d0-a28f-00aa003049e2

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.108"></a>
## 2.108 Attribute possibleInferiors

This attribute specifies the list of classes, instances of which can be child objects of instances of the class on which the possInferiors attribute is present. See [MS-ADTS](../MS-ADTS/MS-ADTS.md) section 3.1.1.4.5.21 for more information on Active Directory usage.

cn: Possible-Inferiors

ldapDisplayName: possibleInferiors

attributeId: 1.2.840.113556.1.4.915

attributeSyntax: 2.5.5.2

omSyntax: 6

isSingleValued: FALSE

schemaIdGuid: 9a7ad94c-ca53-11d1-bbd0-0080c76670c0

systemOnly: TRUE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_IS_CONSTRUCTED |

FLAG_DOMAIN_DISALLOW_RENAME

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.109"></a>
## 2.109 Attribute possSuperiors

This attribute specifies a list of classes, instances of which can be parent objects of the instances of the class on which the possSuperiors attribute is present. See [MS-ADTS](../MS-ADTS/MS-ADTS.md) section 3.1.1.2.4.4 for more information on Active Directory usage.

cn: Poss-Superiors

ldapDisplayName: possSuperiors

attributeId: 1.2.840.113556.1.2.8

attributeSyntax: 2.5.5.2

omSyntax: 6

isSingleValued: FALSE

schemaIdGuid: bf9679fa-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.110"></a>
## 2.110 Attribute postalAddress

This attribute specifies the mailing address for the object.

cn: Postal-Address

ldapDisplayName: postalAddress

attributeId: 2.5.4.16

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: bf9679fc-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: fCOPY

rangeLower: 1

rangeUpper: 4096

attributeSecurityGuid: 77b5b886-944a-11d1-aebd-0000f80367c1

mapiID: 33036

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.111"></a>
## 2.111 Attribute postalCode

This attribute specifies the postal or ZIP code for mail delivery.

cn: Postal-Code

ldapDisplayName: postalCode

attributeId: 2.5.4.17

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: bf9679fd-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: fCOPY

rangeLower: 1

rangeUpper: 40

attributeSecurityGuid: 77b5b886-944a-11d1-aebd-0000f80367c1

mapiID: 14890

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.112"></a>
## 2.112 Attribute postOfficeBox

This attribute specifies the post office box number for this object.

cn: Post-Office-Box

ldapDisplayName: postOfficeBox

attributeId: 2.5.4.18

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: bf9679fb-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: fCOPY

rangeLower: 1

rangeUpper: 40

attributeSecurityGuid: 77b5b886-944a-11d1-aebd-0000f80367c1

mapiID: 14891

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.113"></a>
## 2.113 Attribute preferredDeliveryMethod

This attribute specifies the X.500-preferred way to deliver to the addressee, as specified in [[X500]](https://go.microsoft.com/fwlink/?LinkId=90589).

cn: Preferred-Delivery-Method

ldapDisplayName: preferredDeliveryMethod

attributeId: 2.5.4.28

attributeSyntax: 2.5.5.9

omSyntax: 10

isSingleValued: FALSE

schemaIdGuid: bf9679fe-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

attributeSecurityGuid: 77b5b886-944a-11d1-aebd-0000f80367c1

mapiID: 33037

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.114"></a>
## 2.114 Attribute preferredLanguage

This attribute specifies the preferred written or spoken language for a person.

cn: preferredLanguage

ldapDisplayName: preferredLanguage

attributeId: 2.16.840.1.113730.3.1.39

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 856be0d0-18e7-46e1-8f5f-7ee4d9020e0d

systemOnly: FALSE

searchFlags: 0

Version-Specific Behavior: First implemented on Windows Server 2003.

<a id="Section_2.115"></a>
## 2.115 Attribute preferredOU

This attribute specifies the organizational unit to show by default on the user's desktop.

cn: Preferred-OU

ldapDisplayName: preferredOU

attributeId: 1.2.840.113556.1.4.97

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: TRUE

schemaIdGuid: bf9679ff-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: fCOPY

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.116"></a>
## 2.116 Attribute prefixMap

The prefixMap attribute is for internal use only.

cn: Prefix-Map

ldapDisplayName: prefixMap

attributeId: 1.2.840.113556.1.4.538

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: 52458022-ca6a-11d0-afff-0000f80367c1

systemOnly: TRUE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_NOT_REPLICATED

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.117"></a>
## 2.117 Attribute presentationAddress

This attribute specifies a presentation address associated with an object representing an OSI application entity.

cn: Presentation-Address

ldapDisplayName: presentationAddress

attributeId: 2.5.4.29

attributeSyntax: 2.5.5.13

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.732

isSingleValued: TRUE

schemaIdGuid: a8df744b-c5ea-11d1-bbcb-0080c76670c0

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.118"></a>
## 2.118 Attribute previousCACertificates

This attribute specifies the last expired certificate for this certificate authority.

cn: Previous-CA-Certificates

ldapDisplayName: previousCACertificates

attributeId: 1.2.840.113556.1.4.692

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: 963d2739-48be-11d1-a9c3-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.119"></a>
## 2.119 Attribute previousParentCA

This attribute specifies a reference to the certificate authorities that issued the last expired certificate for a certificate authority.

cn: Previous-Parent-CA

ldapDisplayName: previousParentCA

attributeId: 1.2.840.113556.1.4.694

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: FALSE

schemaIdGuid: 963d273d-48be-11d1-a9c3-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.120"></a>
## 2.120 Attribute primaryGroupID

This attribute specifies the relative identifier (RID) for the primary group of the user. By default, this is the RID for the Domain Users group. The user is a member of its primary group, although the group is not listed in the user's memberOf attribute. Likewise, a group object's member attribute will not list the user objects whose primaryGroupID is set to the group. For more information, refer to [MS-SAMR](../MS-SAMR/MS-SAMR.md) section 3.1.1.8.2, [MS-ADTS](../MS-ADTS/MS-ADTS.md), and [MS-ADA2](../MS-ADA2/MS-ADA2.md) sections 2.43 and 2.45.

cn: Primary-Group-ID

ldapDisplayName: primaryGroupID

attributeId: 1.2.840.113556.1.4.98

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: bf967a00-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: fCOPY| fATTINDEX

attributeSecurityGuid: 59ba2f42-79a2-11d0-9020-00c04fc2d3cf

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT |

FLAG_ATTR_REQ_PARTIAL_SET_MEMBER

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.121"></a>
## 2.121 Attribute primaryGroupToken

This attribute specifies a computed attribute that is the relative identifier (RID) of a group's SID. For more information refer to [MS-ADTS](../MS-ADTS/MS-ADTS.md) section 3.1.1.4.5.11 and [MS-SAMR](../MS-SAMR/MS-SAMR.md).

cn: Primary-Group-Token

ldapDisplayName: primaryGroupToken

attributeId: 1.2.840.113556.1.4.1412

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: c0ed8738-7efd-4481-84d9-66d2db8be369

systemOnly: TRUE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_IS_CONSTRUCTED

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.122"></a>
## 2.122 Attribute primaryInternationalISDNNumber

This attribute specifies the primary ISDN number.

cn: Phone-ISDN-Primary

ldapDisplayName: primaryInternationalISDNNumber

attributeId: 1.2.840.113556.1.4.649

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 0296c11f-40da-11d1-a9c0-0000f80367c1

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 64

attributeSecurityGuid: 77b5b886-944a-11d1-aebd-0000f80367c1

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.123"></a>
## 2.123 Attribute primaryTelexNumber

This attribute specifies the primary telex number.

cn: Telex-Primary

ldapDisplayName: primaryTelexNumber

attributeId: 1.2.840.113556.1.4.648

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 0296c121-40da-11d1-a9c0-0000f80367c1

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 64

attributeSecurityGuid: 77b5b886-944a-11d1-aebd-0000f80367c1

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.124"></a>
## 2.124 Attribute printAttributes

This attribute specifies a bitmask of printer attributes.

cn: Print-Attributes

ldapDisplayName: printAttributes

attributeId: 1.2.840.113556.1.4.247

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: 281416d7-1968-11d0-a28f-00aa003049e2

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.125"></a>
## 2.125 Attribute printBinNames

This attribute specifies a list of printer bin names.

cn: Print-Bin-Names

ldapDisplayName: printBinNames

attributeId: 1.2.840.113556.1.4.237

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 281416cd-1968-11d0-a28f-00aa003049e2

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.126"></a>
## 2.126 Attribute printCollate

This attribute specifies whether a printer has collating bins.

cn: Print-Collate

ldapDisplayName: printCollate

attributeId: 1.2.840.113556.1.4.242

attributeSyntax: 2.5.5.8

omSyntax: 1

isSingleValued: TRUE

schemaIdGuid: 281416d2-1968-11d0-a28f-00aa003049e2

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.127"></a>
## 2.127 Attribute printColor

This attribute specifies whether a printer can print in color.

cn: Print-Color

ldapDisplayName: printColor

attributeId: 1.2.840.113556.1.4.243

attributeSyntax: 2.5.5.8

omSyntax: 1

isSingleValued: TRUE

schemaIdGuid: 281416d3-1968-11d0-a28f-00aa003049e2

systemOnly: FALSE

searchFlags: 0

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.128"></a>
## 2.128 Attribute printDuplexSupported

This attribute specifies the type of duplex support a printer has.

cn: Print-Duplex-Supported

ldapDisplayName: printDuplexSupported

attributeId: 1.2.840.113556.1.4.1311

attributeSyntax: 2.5.5.8

omSyntax: 1

isSingleValued: TRUE

schemaIdGuid: 281416cc-1968-11d0-a28f-00aa003049e2

systemOnly: FALSE

searchFlags: 0

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.129"></a>
## 2.129 Attribute printEndTime

This attribute specifies the time a print queue stops servicing jobs.

cn: Print-End-Time

ldapDisplayName: printEndTime

attributeId: 1.2.840.113556.1.4.234

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: 281416ca-1968-11d0-a28f-00aa003049e2

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.130"></a>
## 2.130 Attribute printerName

This attribute specifies the display name of an attached printer.

cn: Printer-Name

ldapDisplayName: printerName

attributeId: 1.2.840.113556.1.4.300

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 244b296e-5abd-11d0-afd2-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.131"></a>
## 2.131 Attribute printFormName

This attribute specifies the name of the currently loaded form.

cn: Print-Form-Name

ldapDisplayName: printFormName

attributeId: 1.2.840.113556.1.4.235

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 281416cb-1968-11d0-a28f-00aa003049e2

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.132"></a>
## 2.132 Attribute printKeepPrintedJobs

This attribute specifies whether printed jobs are kept.

cn: Print-Keep-Printed-Jobs

ldapDisplayName: printKeepPrintedJobs

attributeId: 1.2.840.113556.1.4.275

attributeSyntax: 2.5.5.8

omSyntax: 1

isSingleValued: TRUE

schemaIdGuid: ba305f6d-47e3-11d0-a1a6-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.133"></a>
## 2.133 Attribute printLanguage

This attribute specifies the supported page description language (for example, PostScript, PCL).

cn: Print-Language

ldapDisplayName: printLanguage

attributeId: 1.2.840.113556.1.4.246

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 281416d6-1968-11d0-a28f-00aa003049e2

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 256

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.134"></a>
## 2.134 Attribute printMACAddress

This attribute specifies the user-supplied MAC address.

cn: Print-MAC-Address

ldapDisplayName: printMACAddress

attributeId: 1.2.840.113556.1.4.288

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: ba305f7a-47e3-11d0-a1a6-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.135"></a>
## 2.135 Attribute printMaxCopies

This attribute specifies the maximum number of copies a device can print.

cn: Print-Max-Copies

ldapDisplayName: printMaxCopies

attributeId: 1.2.840.113556.1.4.241

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: 281416d1-1968-11d0-a28f-00aa003049e2

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.136"></a>
## 2.136 Attribute printMaxResolutionSupported

This attribute specifies the maximum printer resolution.

cn: Print-Max-Resolution-Supported

ldapDisplayName: printMaxResolutionSupported

attributeId: 1.2.840.113556.1.4.238

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: 281416cf-1968-11d0-a28f-00aa003049e2

systemOnly: FALSE

searchFlags: 0

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.137"></a>
## 2.137 Attribute printMaxXExtent

This attribute specifies the maximum horizontal print region.

cn: Print-Max-X-Extent

ldapDisplayName: printMaxXExtent

attributeId: 1.2.840.113556.1.4.277

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: ba305f6f-47e3-11d0-a1a6-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.138"></a>
## 2.138 Attribute printMaxYExtent

This attribute specifies the maximum vertical print region.

cn: Print-Max-Y-Extent

ldapDisplayName: printMaxYExtent

attributeId: 1.2.840.113556.1.4.278

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: ba305f70-47e3-11d0-a1a6-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.139"></a>
## 2.139 Attribute printMediaReady

This attribute specifies a list of available media for a printer.

cn: Print-Media-Ready

ldapDisplayName: printMediaReady

attributeId: 1.2.840.113556.1.4.289

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 3bcbfcf5-4d3d-11d0-a1a6-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

In Windows 2000 Server, attribute isMemberOfPartialAttributeSet is not defined.

<a id="Section_2.140"></a>
## 2.140 Attribute printMediaSupported

This attribute specifies a list of media supported by a printer.

cn: Print-Media-Supported

ldapDisplayName: printMediaSupported

attributeId: 1.2.840.113556.1.4.299

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 244b296f-5abd-11d0-afd2-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.141"></a>
## 2.141 Attribute printMemory

This attribute specifies the amount of memory installed in a printer.

cn: Print-Memory

ldapDisplayName: printMemory

attributeId: 1.2.840.113556.1.4.282

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: ba305f74-47e3-11d0-a1a6-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.142"></a>
## 2.142 Attribute printMinXExtent

This attribute specifies the minimum horizontal print region.

cn: Print-Min-X-Extent

ldapDisplayName: printMinXExtent

attributeId: 1.2.840.113556.1.4.279

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: ba305f71-47e3-11d0-a1a6-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.143"></a>
## 2.143 Attribute printMinYExtent

This attribute specifies the minimum vertical print region.

cn: Print-Min-Y-Extent

ldapDisplayName: printMinYExtent

attributeId: 1.2.840.113556.1.4.280

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: ba305f72-47e3-11d0-a1a6-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.144"></a>
## 2.144 Attribute printNetworkAddress

This attribute specifies the user-supplied network address.

cn: Print-Network-Address

ldapDisplayName: printNetworkAddress

attributeId: 1.2.840.113556.1.4.287

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: ba305f79-47e3-11d0-a1a6-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.145"></a>
## 2.145 Attribute printNotify

This attribute specifies a user-supplied string specifying the notification contact.

cn: Print-Notify

ldapDisplayName: printNotify

attributeId: 1.2.840.113556.1.4.272

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: ba305f6a-47e3-11d0-a1a6-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.146"></a>
## 2.146 Attribute printNumberUp

This attribute specifies the number of page images per sheet.

cn: Print-Number-Up

ldapDisplayName: printNumberUp

attributeId: 1.2.840.113556.1.4.290

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: 3bcbfcf4-4d3d-11d0-a1a6-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.147"></a>
## 2.147 Attribute printOrientationsSupported

This attribute specifies the page rotation for landscape printing.

cn: Print-Orientations-Supported

ldapDisplayName: printOrientationsSupported

attributeId: 1.2.840.113556.1.4.240

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 281416d0-1968-11d0-a28f-00aa003049e2

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 256

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.148"></a>
## 2.148 Attribute printOwner

This attribute specifies a user-supplied owner string.

cn: Print-Owner

ldapDisplayName: printOwner

attributeId: 1.2.840.113556.1.4.271

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: ba305f69-47e3-11d0-a1a6-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.149"></a>
## 2.149 Attribute printPagesPerMinute

This attribute specifies the driver-supplied print rate in pages per minute.

cn: Print-Pages-Per-Minute

ldapDisplayName: printPagesPerMinute

attributeId: 1.2.840.113556.1.4.631

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: 19405b97-3cfa-11d1-a9c0-0000f80367c1

systemOnly: FALSE

searchFlags: 0

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.150"></a>
## 2.150 Attribute printRate

This attribute specifies the driver-supplied print rate.

cn: Print-Rate

ldapDisplayName: printRate

attributeId: 1.2.840.113556.1.4.285

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: ba305f77-47e3-11d0-a1a6-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.151"></a>
## 2.151 Attribute printRateUnit

This attribute specifies the driver-supplied print rate unit.

cn: Print-Rate-Unit

ldapDisplayName: printRateUnit

attributeId: 1.2.840.113556.1.4.286

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: ba305f78-47e3-11d0-a1a6-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

In Windows 2000 Server, attribute isMemberOfPartialAttributeSet is not defined.

<a id="Section_2.152"></a>
## 2.152 Attribute printSeparatorFile

This attribute specifies the file path of the printer separator page.

cn: Print-Separator-File

ldapDisplayName: printSeparatorFile

attributeId: 1.2.840.113556.1.4.230

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 281416c6-1968-11d0-a28f-00aa003049e2

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.153"></a>
## 2.153 Attribute printShareName

This attribute specifies the printer's share name.

cn: Print-Share-Name

ldapDisplayName: printShareName

attributeId: 1.2.840.113556.1.4.270

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: ba305f68-47e3-11d0-a1a6-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.154"></a>
## 2.154 Attribute printSpooling

This attribute specifies a string representing the type of printer spooling.

cn: Print-Spooling

ldapDisplayName: printSpooling

attributeId: 1.2.840.113556.1.4.274

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: ba305f6c-47e3-11d0-a1a6-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.155"></a>
## 2.155 Attribute printStaplingSupported

This attribute specifies if the printer supports stapling. It is supplied by the driver.

cn: Print-Stapling-Supported

ldapDisplayName: printStaplingSupported

attributeId: 1.2.840.113556.1.4.281

attributeSyntax: 2.5.5.8

omSyntax: 1

isSingleValued: TRUE

schemaIdGuid: ba305f73-47e3-11d0-a1a6-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.156"></a>
## 2.156 Attribute printStartTime

This attribute specifies the time a print queue begins servicing jobs.

cn: Print-Start-Time

ldapDisplayName: printStartTime

attributeId: 1.2.840.113556.1.4.233

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: 281416c9-1968-11d0-a28f-00aa003049e2

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.157"></a>
## 2.157 Attribute printStatus

This attribute specifies the status from the print spooler.

cn: Print-Status

ldapDisplayName: printStatus

attributeId: 1.2.840.113556.1.4.273

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: ba305f6b-47e3-11d0-a1a6-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.158"></a>
## 2.158 Attribute priority

This attribute specifies the current priority (of a process, print job, and so on).

cn: Priority

ldapDisplayName: priority

attributeId: 1.2.840.113556.1.4.231

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: 281416c7-1968-11d0-a28f-00aa003049e2

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.159"></a>
## 2.159 Attribute priorSetTime

This attribute specifies the previous time set for a secret.

cn: Prior-Set-Time

ldapDisplayName: priorSetTime

attributeId: 1.2.840.113556.1.4.99

attributeSyntax: 2.5.5.16

omSyntax: 65

isSingleValued: TRUE

schemaIdGuid: bf967a01-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.160"></a>
## 2.160 Attribute priorValue

This attribute specifies the previous value for a secret.

cn: Prior-Value

ldapDisplayName: priorValue

attributeId: 1.2.840.113556.1.4.100

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: bf967a02-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.161"></a>
## 2.161 Attribute privateKey

This attribute specifies an encrypted private key.

cn: Private-Key

ldapDisplayName: privateKey

attributeId: 1.2.840.113556.1.4.101

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: bf967a03-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.162"></a>
## 2.162 Attribute privilegeAttributes

This attribute specifies a bitmask of privilege attributes.

cn: Privilege-Attributes

ldapDisplayName: privilegeAttributes

attributeId: 1.2.840.113556.1.4.636

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: 19405b9a-3cfa-11d1-a9c0-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.163"></a>
## 2.163 Attribute privilegeDisplayName

This attribute specifies a display name for a Windows NT privilege.

cn: Privilege-Display-Name

ldapDisplayName: privilegeDisplayName

attributeId: 1.2.840.113556.1.4.634

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 19405b98-3cfa-11d1-a9c0-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.164"></a>
## 2.164 Attribute privilegeHolder

This attribute specifies a list of distinguished names of principals that are granted this privilege.

cn: Privilege-Holder

ldapDisplayName: privilegeHolder

attributeId: 1.2.840.113556.1.4.637

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: FALSE

schemaIdGuid: 19405b9b-3cfa-11d1-a9c0-0000f80367c1

systemOnly: FALSE

searchFlags: 0

linkID: 70

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.165"></a>
## 2.165 Attribute privilegeValue

This attribute specifies a value representing a Windows NT privilege.

cn: Privilege-Value

ldapDisplayName: privilegeValue

attributeId: 1.2.840.113556.1.4.635

attributeSyntax: 2.5.5.16

omSyntax: 65

isSingleValued: TRUE

schemaIdGuid: 19405b99-3cfa-11d1-a9c0-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.166"></a>
## 2.166 Attribute productCode

This attribute specifies a unique identifier for an application for a particular product release, represented as a string GUID, for example, "{12345678-1234-1234-1234-123456789012}". Letters used in this GUID are uppercase. This ID varies for different versions and languages.

cn: Product-Code

ldapDisplayName: productCode

attributeId: 1.2.840.113556.1.4.818

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: d9e18317-8939-11d1-aebc-0000f80367c1

systemOnly: FALSE

searchFlags: 0

rangeLower: 0

rangeUpper: 16

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.167"></a>
## 2.167 Attribute profilePath

This attribute specifies a path to the user's profile. This value can be a null string, a local absolute path, or a UNC path.

cn: Profile-Path

ldapDisplayName: profilePath

attributeId: 1.2.840.113556.1.4.139

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: bf967a05-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: fCOPY

attributeSecurityGuid: 5f202010-79a5-11d0-9020-00c04fc2d4cf

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.168"></a>
## 2.168 Attribute proxiedObjectName

This attribute specifies an internal tracking object used by Active Directory to help track interdomain moves.

cn: Proxied-Object-Name

ldapDisplayName: proxiedObjectName

attributeId: 1.2.840.113556.1.4.1249

attributeSyntax: 2.5.5.7

omSyntax: 127

omObjectClass: 1.2.840.113556.1.1.1.11

isSingleValued: TRUE

schemaIdGuid: e1aea402-cd5b-11d0-afff-0000f80367c1

systemOnly: TRUE

searchFlags: 0

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT |

FLAG_ATTR_REQ_PARTIAL_SET_MEMBER

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.169"></a>
## 2.169 Attribute proxyAddresses

A proxy address is the address by which an Exchange Server recipient object is recognized in a foreign mail system. Proxy addresses are required for all recipient objects, such as custom recipients and distribution lists.

cn: Proxy-Addresses

ldapDisplayName: proxyAddresses

attributeId: 1.2.840.113556.1.2.210

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: bf967a06-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: fANR | fATTINDEX

rangeLower: 1

rangeUpper: 1123

attributeSecurityGuid: e48d0154-bcf8-11d1-8702-00c04fb96050

mapiID: 32783

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.170"></a>
## 2.170 Attribute proxyGenerationEnabled

This attribute specifies whether proxy generation is enabled.

cn: Proxy-Generation-Enabled

ldapDisplayName: proxyGenerationEnabled

attributeId: 1.2.840.113556.1.2.523

attributeSyntax: 2.5.5.8

omSyntax: 1

isSingleValued: TRUE

schemaIdGuid: 5fd424d6-1262-11d0-a060-00aa006c33ed

systemOnly: FALSE

searchFlags: 0

mapiID: 33201

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.171"></a>
## 2.171 Attribute proxyLifetime

This attribute specifies the lifetime for a proxy object.

cn: Proxy-Lifetime

ldapDisplayName: proxyLifetime

attributeId: 1.2.840.113556.1.4.103

attributeSyntax: 2.5.5.16

omSyntax: 65

isSingleValued: TRUE

schemaIdGuid: bf967a07-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.172"></a>
## 2.172 Attribute publicKeyPolicy

This attribute specifies a reference to the public key policy for this domain.

cn: Public-Key-Policy

ldapDisplayName: publicKeyPolicy

attributeId: 1.2.840.113556.1.4.420

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: 80a67e28-9f22-11d0-afdd-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

attributeSecurityGuid: a29b89fd-c7e8-11d0-9bae-00c04fd92ef5

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.173"></a>
## 2.173 Attribute purportedSearch

This attribute specifies the search argument for an address book view.

cn: Purported-Search

ldapDisplayName: purportedSearch

attributeId: 1.2.840.113556.1.4.886

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: b4b54e50-943a-11d1-aebd-0000f80367c1

systemOnly: FALSE

searchFlags: 0

rangeLower: 0

rangeUpper: 2048

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.174"></a>
## 2.174 Attribute pwdHistoryLength

This attribute specifies the number of old passwords to save. See [MS-SAMR](../MS-SAMR/MS-SAMR.md) and [MS-ADTS](../MS-ADTS/MS-ADTS.md) references for more information on how Active Directory uses this attribute.

cn: Pwd-History-Length

ldapDisplayName: pwdHistoryLength

attributeId: 1.2.840.113556.1.4.95

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: bf967a09-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

rangeLower: 0

rangeUpper: 65535

attributeSecurityGuid: c7407360-20bf-11d0-a768-00aa006e0529

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.175"></a>
## 2.175 Attribute pwdLastSet

This attribute specifies the date and time that the password for this account was last changed. This value is stored as a large integer that represents the number of 100 nanosecond intervals since January 1, 1601 (UTC). If this value is set to 0 and the [User-Account-Control](../MS-SAMR/MS-SAMR.md) attribute does not contain the ADS_UF_DONT_EXPIRE_PASSWD flag, the user sets the password at the next logon. See [MS-SAMR](../MS-SAMR/MS-SAMR.md) section 3.1.1.8.8 and [MS-ADTS](../MS-ADTS/MS-ADTS.md) for more information on how Active Directory uses this attribute.

cn: Pwd-Last-Set

ldapDisplayName: pwdLastSet

attributeId: 1.2.840.113556.1.4.96

attributeSyntax: 2.5.5.16

omSyntax: 65

isSingleValued: TRUE

schemaIdGuid: bf967a0a-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

attributeSecurityGuid: 4c164200-20c0-11d0-a768-00aa006e0529

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.176"></a>
## 2.176 Attribute pwdProperties

This attribute specifies an unsigned long numeric that, bit by bit, is home to several true/false policies, most of which can be configured under the default domain policy Group Policy Object's (GPO's) Computer Configuration\Windows Settings\Security Settings\Account Policies\Password Policy folder. For example, the DOMAIN_PASSWORD_COMPLEX setting, which can be configured through a GPO's "Passwords must meet complexity requirements" policy, occupies pwdProperties' first bit. See [MS-SAMR](../MS-SAMR/MS-SAMR.md) for more information on bit descriptions.

cn: Pwd-Properties

ldapDisplayName: pwdProperties

attributeId: 1.2.840.113556.1.4.93

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: bf967a0b-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

attributeSecurityGuid: c7407360-20bf-11d0-a768-00aa006e0529

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.177"></a>
## 2.177 Attribute qualityOfService

This attribute specifies the local/domain quality of service bits on policy objects.

cn: Quality-Of-Service

ldapDisplayName: qualityOfService

attributeId: 1.2.840.113556.1.4.458

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: 80a67e4e-9f22-11d0-afdd-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

attributeSecurityGuid: a29b8a01-c7e8-11d0-9bae-00c04fd92ef5

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.178"></a>
## 2.178 Attribute queryFilter

This attribute specifies a Query-Filter. It is used by Active Directory administrative tools to store saved queries on display specifiers.

cn: Query-Filter

ldapDisplayName: queryFilter

attributeId: 1.2.840.113556.1.4.1355

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: cbf70a26-7e78-11d2-9921-0000f87a57d4

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.179"></a>
## 2.179 Attribute queryPoint

This attribute specifies the URL or UNC of a query page or other front end for accessing a catalog.

cn: QueryPoint

ldapDisplayName: queryPoint

attributeId: 1.2.840.113556.1.4.680

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 7bfdcb86-4807-11d1-a9c3-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.180"></a>
## 2.180 Attribute queryPolicyBL

This attribute is the back link attribute of queryPolicy and contains a list of all objects holding references to a given Query-Policy.

cn: Query-Policy-BL

ldapDisplayName: queryPolicyBL

attributeId: 1.2.840.113556.1.4.608

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: FALSE

schemaIdGuid: e1aea404-cd5b-11d0-afff-0000f80367c1

systemOnly: TRUE

searchFlags: 0

linkID: 69

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_NOT_REPLICATED

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.181"></a>
## 2.181 Attribute queryPolicyObject

This attribute specifies the reference to the default Query-Policy in force for this server.

cn: Query-Policy-Object

ldapDisplayName: queryPolicyObject

attributeId: 1.2.840.113556.1.4.607

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: TRUE

schemaIdGuid: e1aea403-cd5b-11d0-afff-0000f80367c1

systemOnly: FALSE

searchFlags: 0

linkID: 68

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.182"></a>
## 2.182 Attribute rangeLower

This attribute specifies a lower range of values that are allowed for an attribute, and is optional.

For syntax Integer, LargeInteger, Enumeration, String(UTC-time), and String(Generalized-time), rangeLower equals the minimum allowed value. For syntax Object(DN-binary) and Object(DN-String), rangeLower equals the minimum length of the binary_value or string_value portion of the given value. For String(Unicode), rangeLower is the minimum length, in Unicode characters. rangeLower is not used on syntax Boolean and Object(DS-DN). For all other syntaxes, rangeLower equals the minimum length in bytes. Note that rangeLower is a 32-bit integer and cannot express the full range of LargeInteger, String(UTC-time), and String(Generalized-time).

cn: Range-Lower

ldapDisplayName: rangeLower

attributeId: 1.2.840.113556.1.2.34

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: bf967a0c-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

mapiID: 33043

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.183"></a>
## 2.183 Attribute rangeUpper

This attribute specifies an upper range of values that are allowed for an attribute, and is optional.

For syntax Integer, LargeInteger, Enumeration, String(UTC-time), and String(Generalized-time), rangeUpper equals the maximum allowed value. For syntax Object(DN-binary) and Object(DN-String), rangeUpper equals the maximum length of the binary_value or string_value portion of the given value. For String(Unicode), rangeUpper is the maximum length, in Unicode characters. rangeUpper is not used on syntax Boolean and Object(DS-DN). For all other syntaxes, rangeUpper equals the maximum length in bytes. Note that rangeUpper is a 32-bit integer and cannot express the full range of LargeInteger, String(UTC-time), and String(Generalized-time).

cn: Range-Upper

ldapDisplayName: rangeUpper

attributeId: 1.2.840.113556.1.2.35

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: bf967a0d-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

mapiID: 33044

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.184"></a>
## 2.184 Attribute rDNAttID

This attribute specifies the attributeId of the **RDN** attribute. If the value is not defined, it will be inherited from the superclass of the class in which this attribute appears. See [MS-ADTS](../MS-ADTS/MS-ADTS.md) sections 3.1.1.2.4.8 and 3.1.1.3.1.2.1 for more information.

cn: RDN-Att-ID

ldapDisplayName: rDNAttID

attributeId: 1.2.840.113556.1.2.26

attributeSyntax: 2.5.5.2

omSyntax: 6

isSingleValued: TRUE

schemaIdGuid: bf967a0f-0de6-11d0-a285-00aa003049e2

systemOnly: TRUE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.185"></a>
## 2.185 Attribute registeredAddress

This attribute specifies a mnemonic for an address associated with an object at a particular city location. The mnemonic is registered in the country/region in which the city is located and is used in the provision of the Public Telegram Service.

cn: Registered-Address

ldapDisplayName: registeredAddress

attributeId: 2.5.4.26

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: FALSE

schemaIdGuid: bf967a10-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 4096

attributeSecurityGuid: 77b5b886-944a-11d1-aebd-0000f80367c1

mapiID: 33049

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.186"></a>
## 2.186 Attribute remoteServerName

This attribute specifies where one or more machine names are stored.

cn: Remote-Server-Name

ldapDisplayName: remoteServerName

attributeId: 1.2.840.113556.1.4.105

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: bf967a12-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.187"></a>
## 2.187 Attribute remoteSource

This attribute specifies a back pointer to foreign objects.

cn: Remote-Source

ldapDisplayName: remoteSource

attributeId: 1.2.840.113556.1.4.107

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: bf967a14-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 1024

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.188"></a>
## 2.188 Attribute remoteSourceType

This attribute specifies a type of pointer to a foreign object.

cn: Remote-Source-Type

ldapDisplayName: remoteSourceType

attributeId: 1.2.840.113556.1.4.108

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: bf967a15-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.189"></a>
## 2.189 Attribute remoteStorageGUID

This attribute specifies the GUID for a remote storage object.

cn: Remote-Storage-GUID

ldapDisplayName: remoteStorageGUID

attributeId: 1.2.840.113556.1.4.809

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 2a39c5b0-8960-11d1-aebc-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.190"></a>
## 2.190 Attribute replicaSource

This attribute specifies the GUID of a replication source. For more information, refer to [MS-DRSR](../MS-DRSR/MS-DRSR.md).

cn: Replica-Source

ldapDisplayName: replicaSource

attributeId: 1.2.840.113556.1.4.109

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: bf967a18-0de6-11d0-a285-00aa003049e2

systemOnly: TRUE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.191"></a>
## 2.191 Attribute replInterval

This attribute specifies the attribute of Site-Link objects that defines the interval, in minutes, between replication cycles among the sites in the Site-List. It is a multiple of 15 minutes (the granularity of cross-site DS replication), a minimum of 15 minutes, and a maximum of 10,080 minutes (one week). For more information, refer to [MS-DRSR](../MS-DRSR/MS-DRSR.md).

cn: Repl-Interval

ldapDisplayName: replInterval

attributeId: 1.2.840.113556.1.4.1336

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: 45ba9d1a-56fa-11d2-90d0-00c04fd91ab1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.192"></a>
## 2.192 Attribute replPropertyMetaData

This attribute specifies the internal replication state information for directory service (DS) objects. Information here can be extracted in public form through the public API DsReplicaGetInfo(). Present on all DS objects. For more information, refer to [MS-DRSR](../MS-DRSR/MS-DRSR.md).

cn: Repl-Property-Meta-Data

ldapDisplayName: replPropertyMetaData

attributeId: 1.2.840.113556.1.4.3

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: 281416c0-1968-11d0-a28f-00aa003049e2

systemOnly: TRUE

searchFlags: fPRESERVEONDELETE

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_IS_OPERATIONAL |

FLAG_ATTR_REQ_PARTIAL_SET_MEMBER | FLAG_ATTR_NOT_REPLICATED

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

In Windows 2000 Server, the following attributes are defined differently.

systemFlags: FLAG_SCHEMA_BASE_OBJECT |

FLAG_ATTR_REQ_PARTIAL_SET_MEMBER | FLAG_ATTR_NOT_REPLICATED

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.193"></a>
## 2.193 Attribute replTopologyStayOfExecution

This attribute specifies the delay between deleting a server object and it being permanently removed from the replication topology. For more information, refer to [MS-DRSR](../MS-DRSR/MS-DRSR.md).

cn: Repl-Topology-Stay-Of-Execution

ldapDisplayName: replTopologyStayOfExecution

attributeId: 1.2.840.113556.1.4.677

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: 7bfdcb83-4807-11d1-a9c3-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.194"></a>
## 2.194 Attribute replUpToDateVector

This attribute specifies the internal replication state information for an entire NC. Information here can be extracted in public form through the API DsReplicaGetInfo(). Present on all NC root objects. For more information, refer to [MS-DRSR](../MS-DRSR/MS-DRSR.md) section 5.166.

cn: Repl-UpToDate-Vector

ldapDisplayName: replUpToDateVector

attributeId: 1.2.840.113556.1.4.4

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: bf967a16-0de6-11d0-a285-00aa003049e2

systemOnly: TRUE

searchFlags: 0

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT |

FLAG_ATTR_REQ_PARTIAL_SET_MEMBER | FLAG_ATTR_NOT_REPLICATED

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.195"></a>
## 2.195 Attribute repsFrom

This attribute specifies a list for the servers from which the directory will accept changes for the defined naming context. For more information, refer to [MS-DRSR](../MS-DRSR/MS-DRSR.md) section 5.172.

cn: Reps-From

ldapDisplayName: repsFrom

attributeId: 1.2.840.113556.1.2.91

attributeSyntax: 2.5.5.10

omSyntax: 127

omObjectClass: 1.2.840.113556.1.1.1.6

isSingleValued: FALSE

schemaIdGuid: bf967a1d-0de6-11d0-a285-00aa003049e2

systemOnly: TRUE

searchFlags: 0

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT |

FLAG_ATTR_REQ_PARTIAL_SET_MEMBER | FLAG_ATTR_NOT_REPLICATED

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.196"></a>
## 2.196 Attribute repsTo

This attribute specifies the list of servers that the directory will notify of changes and servers to which the directory will send changes on request for the defined naming context. For more information, refer to [MS-DRSR](../MS-DRSR/MS-DRSR.md) section 5.173.

cn: Reps-To

ldapDisplayName: repsTo

attributeId: 1.2.840.113556.1.2.83

attributeSyntax: 2.5.5.10

omSyntax: 127

omObjectClass: 1.2.840.113556.1.1.1.6

isSingleValued: FALSE

schemaIdGuid: bf967a1e-0de6-11d0-a285-00aa003049e2

systemOnly: TRUE

searchFlags: 0

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT |

FLAG_ATTR_REQ_PARTIAL_SET_MEMBER | FLAG_ATTR_NOT_REPLICATED

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.197"></a>
## 2.197 Attribute requiredCategories

This attribute specifies a list of component category IDs that an object (such as an application) requires to run.

cn: Required-Categories

ldapDisplayName: requiredCategories

attributeId: 1.2.840.113556.1.4.321

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: FALSE

schemaIdGuid: 7d6c0e93-7e20-11d0-afd6-00c04fd930c9

systemOnly: FALSE

searchFlags: fATTINDEX

rangeLower: 16

rangeUpper: 16

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.198"></a>
## 2.198 Attribute retiredReplDSASignatures

This attribute specifies the past DS replication identities of a given DC. For more information, refer to [MS-DRSR](../MS-DRSR/MS-DRSR.md).

cn: Retired-Repl-DSA-Signatures

ldapDisplayName: retiredReplDSASignatures

attributeId: 1.2.840.113556.1.4.673

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: 7bfdcb7f-4807-11d1-a9c3-0000f80367c1

systemOnly: TRUE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.199"></a>
## 2.199 Attribute revision

This attribute specifies the revision level for a security descriptor or other change. Only used in the sam-server and ds-ui-settings objects. For more information, refer to [MS-SAMR](../MS-SAMR/MS-SAMR.md).

cn: Revision

ldapDisplayName: revision

attributeId: 1.2.840.113556.1.4.145

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: bf967a21-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.200"></a>
## 2.200 Attribute rid

This attribute specifies the relative identifier (RID) of an object.

cn: Rid

ldapDisplayName: rid

attributeId: 1.2.840.113556.1.4.153

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: bf967a22-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.201"></a>
## 2.201 Attribute rIDAllocationPool

This attribute specifies a pool that was prefetched for use by the RID manager when the [RID-Previous-Allocation-Pool](#Section_2c71eb49d58c46398f65540a354319b2) has been used up.

cn: RID-Allocation-Pool

ldapDisplayName: rIDAllocationPool

attributeId: 1.2.840.113556.1.4.371

attributeSyntax: 2.5.5.16

omSyntax: 65

isSingleValued: TRUE

schemaIdGuid: 66171889-8f3c-11d0-afda-00c04fd930c9

systemOnly: TRUE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.202"></a>
## 2.202 Attribute rIDAvailablePool

This attribute specifies the space from which RID pools are allocated.

cn: RID-Available-Pool

ldapDisplayName: rIDAvailablePool

attributeId: 1.2.840.113556.1.4.370

attributeSyntax: 2.5.5.16

omSyntax: 65

isSingleValued: TRUE

schemaIdGuid: 66171888-8f3c-11d0-afda-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.203"></a>
## 2.203 Attribute rIDManagerReference

This attribute specifies the distinguished name for the RID manager of an object.

cn: RID-Manager-Reference

ldapDisplayName: rIDManagerReference

attributeId: 1.2.840.113556.1.4.368

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: TRUE

schemaIdGuid: 66171886-8f3c-11d0-afda-00c04fd930c9

systemOnly: TRUE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.204"></a>
## 2.204 Attribute rIDNextRID

This attribute specifies the next free relative identifier in the current pool.

cn: RID-Next-RID

ldapDisplayName: rIDNextRID

attributeId: 1.2.840.113556.1.4.374

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: 6617188c-8f3c-11d0-afda-00c04fd930c9

systemOnly: TRUE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_NOT_REPLICATED

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.205"></a>
## 2.205 Attribute rIDPreviousAllocationPool

The RID-Previous-Allocation-Pool attribute contains the pool of RIDs that a domain controller allocates from. This attribute is an 8-byte value that contains a pair of 4-byte integers that represent the start and end values of the RID pool. The start value is in the lower 4 bytes, and the end value is in the upper 4 bytes.

cn: RID-Previous-Allocation-Pool

ldapDisplayName: rIDPreviousAllocationPool

attributeId: 1.2.840.113556.1.4.372

attributeSyntax: 2.5.5.16

omSyntax: 65

isSingleValued: TRUE

schemaIdGuid: 6617188a-8f3c-11d0-afda-00c04fd930c9

systemOnly: TRUE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_NOT_REPLICATED

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.206"></a>
## 2.206 Attribute rIDSetReferences

This attribute specifies the list of references to RID-Set objects managing RID allocation.

cn: RID-Set-References

ldapDisplayName: rIDSetReferences

attributeId: 1.2.840.113556.1.4.669

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: FALSE

schemaIdGuid: 7bfdcb7b-4807-11d1-a9c3-0000f80367c1

systemOnly: TRUE

searchFlags: fPRESERVEONDELETE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.207"></a>
## 2.207 Attribute rIDUsedPool

This attribute specifies the RID pools that have been used by a DC. It is set to zero and never changed. This attribute is not necessary for Active Directory to function. The protocol does not define a format beyond that required by the schema.

cn: RID-Used-Pool

ldapDisplayName: rIDUsedPool

attributeId: 1.2.840.113556.1.4.373

attributeSyntax: 2.5.5.16

omSyntax: 65

isSingleValued: TRUE

schemaIdGuid: 6617188b-8f3c-11d0-afda-00c04fd930c9

systemOnly: TRUE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.208"></a>
## 2.208 Attribute rightsGuid

This attribute specifies the GUID used to represent an extended right within an access control entry (ACE).

cn: Rights-Guid

ldapDisplayName: rightsGuid

attributeId: 1.2.840.113556.1.4.340

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 8297931c-86d3-11d0-afda-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

rangeLower: 36

rangeUpper: 36

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.209"></a>
## 2.209 Attribute roleOccupant

The distinguished name of an object that fulfills an organizational role.

cn: Role-Occupant

ldapDisplayName: roleOccupant

attributeId: 2.5.4.33

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: FALSE

schemaIdGuid: a8df7465-c5ea-11d1-bbcb-0080c76670c0

systemOnly: FALSE

searchFlags: 0

mapiID: 33061

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.210"></a>
## 2.210 Attribute roomNumber

This attribute specifies the room number of an object.

cn: roomNumber

ldapDisplayName: roomNumber

attributeId: 0.9.2342.19200300.100.1.6

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 81d7f8c2-e327-4a0d-91c6-b42d4009115f

systemOnly: FALSE

searchFlags: 0

Version-Specific Behavior: First implemented on Windows Server 2003.

<a id="Section_2.211"></a>
## 2.211 Attribute rootTrust

This attribute specifies the distinguished name of another Cross-Ref.

cn: Root-Trust

ldapDisplayName: rootTrust

attributeId: 1.2.840.113556.1.4.674

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: FALSE

schemaIdGuid: 7bfdcb80-4807-11d1-a9c3-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.212"></a>
## 2.212 Attribute rpcNsAnnotation

This attribute specifies a string describing a given RPC profile element.

cn: rpc-Ns-Annotation

ldapDisplayName: rpcNsAnnotation

attributeId: 1.2.840.113556.1.4.366

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 88611bde-8cf4-11d0-afda-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.213"></a>
## 2.213 Attribute rpcNsBindings

This attribute specifies the list of RPC bindings for the current interface.

cn: rpc-Ns-Bindings

ldapDisplayName: rpcNsBindings

attributeId: 1.2.840.113556.1.4.113

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: bf967a23-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.214"></a>
## 2.214 Attribute rpcNsCodeset

This attribute specifies the list of character sets supported by a server.

cn: rpc-Ns-Codeset

ldapDisplayName: rpcNsCodeset

attributeId: 1.2.840.113556.1.4.367

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 7a0ba0e0-8e98-11d0-afda-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.215"></a>
## 2.215 Attribute rpcNsEntryFlags

This attribute specifies a flag to indicate that the RPC NS entry was explicitly created.

cn: rpc-Ns-Entry-Flags

ldapDisplayName: rpcNsEntryFlags

attributeId: 1.2.840.113556.1.4.754

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: 80212841-4bdc-11d1-a9c4-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.216"></a>
## 2.216 Attribute rpcNsGroup

This attribute specifies a reference to an RPC server entry or another RPC group.

cn: rpc-Ns-Group

ldapDisplayName: rpcNsGroup

attributeId: 1.2.840.113556.1.4.114

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: bf967a24-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.217"></a>
## 2.217 Attribute rpcNsInterfaceID

This attribute specifies an interface ID that is supported by a given server.

cn: rpc-Ns-Interface-ID

ldapDisplayName: rpcNsInterfaceID

attributeId: 1.2.840.113556.1.4.115

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: bf967a25-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: fATTINDEX

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.218"></a>
## 2.218 Attribute rpcNsObjectID

This attribute specifies the object IDs exported by a given server.

cn: rpc-Ns-Object-ID

ldapDisplayName: rpcNsObjectID

attributeId: 1.2.840.113556.1.4.312

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 29401c48-7a27-11d0-afd6-00c04fd930c9

systemOnly: FALSE

searchFlags: fATTINDEX

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.219"></a>
## 2.219 Attribute rpcNsPriority

This attribute specifies the priority of a given RPC profile entry.

cn: rpc-Ns-Priority

ldapDisplayName: rpcNsPriority

attributeId: 1.2.840.113556.1.4.117

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: FALSE

schemaIdGuid: bf967a27-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.220"></a>
## 2.220 Attribute rpcNsProfileEntry

This attribute specifies the list of entries for the current priority.

cn: rpc-Ns-Profile-Entry

ldapDisplayName: rpcNsProfileEntry

attributeId: 1.2.840.113556.1.4.118

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: bf967a28-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.221"></a>
## 2.221 Attribute rpcNsTransferSyntax

This attribute specifies the UUID of the transfer syntax supported by the current entry.

cn: rpc-Ns-Transfer-Syntax

ldapDisplayName: rpcNsTransferSyntax

attributeId: 1.2.840.113556.1.4.314

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 29401c4a-7a27-11d0-afd6-00c04fd930c9

systemOnly: FALSE

searchFlags: fATTINDEX

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.222"></a>
## 2.222 Attribute sAMAccountName

This attribute specifies the logon name used to support clients and servers running LAN manager and older versions of the operating system, such as Windows NT 4.0 operating system, Windows 95 operating system, and Windows 98 operating system. This attribute has to be less than 20 characters to support older clients.

cn: SAM-Account-Name

ldapDisplayName: sAMAccountName

attributeId: 1.2.840.113556.1.4.221

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 3e0abfd0-126a-11d0-a060-00aa006c33ed

systemOnly: FALSE

searchFlags: fPRESERVEONDELETE| fANR | fATTINDEX

rangeLower: 0

rangeUpper: 256

attributeSecurityGuid: 59ba2f42-79a2-11d0-9020-00c04fc2d3cf

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT |

FLAG_ATTR_REQ_PARTIAL_SET_MEMBER

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.223"></a>
## 2.223 Attribute sAMAccountType

This attribute specifies the account type of the security principal objects in Active Directory.

The possible values for this attribute are defined in the following table.

| Name | Value |
| --- | --- |
| SAM_DOMAIN_OBJECT | 0x0 |
| SAM_GROUP_OBJECT | 0x10000000 |
| SAM_NON_SECURITY_GROUP_OBJECT | 0x10000001 |
| SAM_ALIAS_OBJECT | 0x20000000 |
| SAM_NON_SECURITY_ALIAS_OBJECT | 0x20000001 |
| SAM_USER_OBJECT | 0x30000000 |
| SAM_MACHINE_ACCOUNT | 0x30000001 |
| SAM_TRUST_ACCOUNT | 0x30000002 |
| SAM_APP_BASIC_GROUP | 0x40000000 |
| SAM_APP_QUERY_GROUP | 0x40000001 |
| SAM_ACCOUNT_TYPE_MAX | 0x7fffffff |

cn: SAM-Account-Type

ldapDisplayName: sAMAccountType

attributeId: 1.2.840.113556.1.4.302

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: 6e7b626c-64f2-11d0-afd2-00c04fd930c9

systemOnly: FALSE

searchFlags: fATTINDEX

attributeSecurityGuid: 59ba2f42-79a2-11d0-9020-00c04fc2d3cf

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT |

FLAG_ATTR_REQ_PARTIAL_SET_MEMBER

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.224"></a>
## 2.224 Attribute samDomainUpdates

Contains a bitmask of performed SAM operations on Active Directory.

cn: SAM-Domain-Updates

ldapDisplayName: samDomainUpdates

attributeId: 1.2.840.113556.1.4.1969

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: 04d2d114-f799-4e9b-bcdc-90e8f5ba7ebe

systemOnly: FALSE

searchFlags: 0

rangeUpper: 1024

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows Server 2008.

<a id="Section_2.225"></a>
## 2.225 Attribute schedule

This attribute specifies a schedule binary large object (BLOB) as defined by the NT Job Service. It is used by replication. Refer to [MS-DRSR](../MS-DRSR/MS-DRSR.md) for more information about this structure.

cn: Schedule

ldapDisplayName: schedule

attributeId: 1.2.840.113556.1.4.211

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: dd712224-10e4-11d0-a05f-00aa006c33ed

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.226"></a>
## 2.226 Attribute schemaFlagsEx

This attribute specifies an integer value that contains flags that define additional properties of the attribute, as shown below. See [MS-ADTS](../MS-ADTS/MS-ADTS.md) for more information. This is an optional attribute.

The schemaFlagsEx attribute contains bitwise flags. The following value is relevant to schema objects:

- FLAG_ATTR_IS_CRITICAL: Specifies that the attribute is not a member of the filtered attribute set even if the fRODCFilteredAttribute ([MS-ADTS] section 3.1.1.2.3.5) is set.
This attribute is defined as follows:

cn: Schema-Flags-Ex

ldapDisplayName: schemaFlagsEx

attributeId: 1.2.840.113556.1.4.120

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: bf967a2b-0de6-11d0-a285-00aa003049e2

systemOnly: TRUE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

The FLAG_ATTR_IS_CRITICAL value was implemented in Windows Server 2008.

<a id="Section_2.227"></a>
## 2.227 Attribute schemaIDGUID

This attribute specifies a unique GUID that identifies this attribute, and is used in security descriptors. It is required on an attributeSchema object. If omitted during Add, the server will auto-generate a random GUID. See [MS-ADTS](../MS-ADTS/MS-ADTS.md) section 3.1.1.2.3 for more information.

cn: Schema-ID-GUID

ldapDisplayName: schemaIDGUID

attributeId: 1.2.840.113556.1.4.148

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: bf967923-0de6-11d0-a285-00aa003049e2

systemOnly: TRUE

searchFlags: 0

rangeLower: 16

rangeUpper: 16

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.228"></a>
## 2.228 Attribute schemaInfo

This attribute specifies an internal binary value used to detect schema changes between DCs, and force a schema NC replication cycle before replicating any other NC. It is used to resolve ties when the schema FSMO is seized and a change is made on more than one DC.

cn: Schema-Info

ldapDisplayName: schemaInfo

attributeId: 1.2.840.113556.1.4.1358

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: FALSE

schemaIdGuid: f9fb64ae-93b4-11d2-9945-0000f87a57d4

systemOnly: TRUE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.229"></a>
## 2.229 Attribute schemaUpdate

This attribute is not necessary for Active Directory to function. The protocol does not define a format beyond that required by the schema.

cn: Schema-Update

ldapDisplayName: schemaUpdate

attributeId: 1.2.840.113556.1.4.481

attributeSyntax: 2.5.5.11

omSyntax: 24

isSingleValued: TRUE

schemaIdGuid: 1e2d06b4-ac8f-11d0-afe3-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_NOT_REPLICATED

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.230"></a>
## 2.230 Attribute schemaVersion

This attribute specifies the version number for the schema.

cn: Schema-Version

ldapDisplayName: schemaVersion

attributeId: 1.2.840.113556.1.2.471

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: FALSE

schemaIdGuid: bf967a2c-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

mapiID: 33148

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.231"></a>
## 2.231 Attribute scopeFlags

cn: Scope-Flags

ldapDisplayName: scopeFlags

attributeId: 1.2.840.113556.1.4.1354

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: 16f3a4c2-7e79-11d2-9921-0000f87a57d4

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.232"></a>
## 2.232 Attribute scriptPath

This attribute specifies the path for the user's logon script. The string can be null.

cn: Script-Path

ldapDisplayName: scriptPath

attributeId: 1.2.840.113556.1.4.62

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: bf9679a8-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: fCOPY

attributeSecurityGuid: 5f202010-79a5-11d0-9020-00c04fc2d4cf

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

In Windows 2000 Server, attribute attributeSecurityGuid is not defined.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.233"></a>
## 2.233 Attribute sDRightsEffective

This attribute specifies a constructed attribute that returns a single DWORD value that can have up to three bits set: OWNER_SECURITY_INFORMATION, DACL_SECURITY_INFORMATION, and SACL_SECURITY_INFORMATION. If a bit is set, then the user has write access to the corresponding part of the security descriptor. Owner means both owner and group.

cn: SD-Rights-Effective

ldapDisplayName: sDRightsEffective

attributeId: 1.2.840.113556.1.4.1304

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: c3dbafa6-33df-11d2-98b2-0000f87a57d4

systemOnly: FALSE

searchFlags: 0

attributeSecurityGuid: 59ba2f42-79a2-11d0-9020-00c04fc2d3cf

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_IS_CONSTRUCTED |

FLAG_DOMAIN_DISALLOW_RENAME

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.234"></a>
## 2.234 Attribute searchFlags

This attribute specifies whether an attribute is indexed, among other things. It is optional and contains the following bitwise flags (further defined in [MS-ADTS](../MS-ADTS/MS-ADTS.md) section 2.2.9):

- fATTINDEX: *
- fPDNTATTINDEX: *
- fANR: Add this attribute to the ambiguous name resolution (ANR) set. If set, then fATTINDEX has to be set. See [MS-ADTS] for ANR search.
- fPRESERVEONDELETE: Preserve this attribute on logical deletion. This flag is ignored on link attributes.
- fCOPY: Interpreted by LDAP clients, not by the server. If set, the attribute is copied on object copy.
- fTUPLEINDEX: *
- fSUBTREEATTINDEX: *
- fCONFIDENTIAL: This attribute is confidential; special access check is needed. For more information, see [MS-ADTS] section 3.1.1.4.3.
- fNEVERVALUEAUDIT: *
- fRODCFilteredAttribute: If set, this attribute is in the RODC filtered attribute set.
The searchFlags marked * have an implementation-dependent interpretation defined by Windows. They can be ignored by other implementations, but cannot be used in a conflicting way that would affect the performance of Windows DCs.

cn: Search-Flags

ldapDisplayName: searchFlags

attributeId: 1.2.840.113556.1.2.334

attributeSyntax: 2.5.5.9

omSyntax: 10

isSingleValued: TRUE

schemaIdGuid: bf967a2d-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

rangeLower: 0

mapiID: 33069

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.235"></a>
## 2.235 Attribute searchGuide

This attribute specifies information about suggested search criteria that can be included in some entries that are expected to be a convenient base-object for the search operation; for example, country/region or organization.

cn: Search-Guide

ldapDisplayName: searchGuide

attributeId: 2.5.4.14

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: FALSE

schemaIdGuid: bf967a2e-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

mapiID: 33070

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.236"></a>
## 2.236 Attribute secretary

This attribute specifies the distinguished name of the secretary for an account.

cn: secretary

ldapDisplayName: secretary

attributeId: 0.9.2342.19200300.100.1.21

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: FALSE

schemaIdGuid: 01072d9a-98ad-4a53-9744-e83e287278fb

systemOnly: FALSE

searchFlags: 0

Version-Specific Behavior: First implemented on Windows Server 2003.

<a id="Section_2.237"></a>
## 2.237 Attribute securityIdentifier

This attribute specifies a unique value of variable length used to identify a user account, group account, or logon session to which an ACE applies.

cn: Security-Identifier

ldapDisplayName: securityIdentifier

attributeId: 1.2.840.113556.1.4.121

attributeSyntax: 2.5.5.17

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: bf967a2f-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

In Windows 2000 Server, attribute isMemberOfPartialAttributeSet is not defined.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.238"></a>
## 2.238 Attribute seeAlso

This attribute specifies a list of distinguished names that are related to an object.

cn: See-Also

ldapDisplayName: seeAlso

attributeId: 2.5.4.34

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: FALSE

schemaIdGuid: bf967a31-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

mapiID: 33071

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.239"></a>
## 2.239 Attribute seqNotification

This attribute specifies a counter that is incremented daily. This counter value is given to the link tracking service that adds the value to its volumes and link source files when they are refreshed. The domain controller maintains this value.

cn: Seq-Notification

ldapDisplayName: seqNotification

attributeId: 1.2.840.113556.1.4.504

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: ddac0cf2-af8f-11d0-afeb-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.240"></a>
## 2.240 Attribute serialNumber

This attribute specifies a part of the X.500 specification [[X500]](https://go.microsoft.com/fwlink/?LinkId=90589).

cn: Serial-Number

ldapDisplayName: serialNumber

attributeId: 2.5.4.5

attributeSyntax: 2.5.5.5

omSyntax: 19

isSingleValued: FALSE

schemaIdGuid: bf967a32-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 64

mapiID: 33072

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.241"></a>
## 2.241 Attribute serverName

This attribute specifies the name of a server.

cn: Server-Name

ldapDisplayName: serverName

attributeId: 1.2.840.113556.1.4.223

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 09dcb7a0-165f-11d0-a064-00aa006c33ed

systemOnly: FALSE

searchFlags: 0

rangeLower: 0

rangeUpper: 1024

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.242"></a>
## 2.242 Attribute serverReference

This attribute specifies a site computer object. It contains the distinguished name of the domain controller in the domain naming context. Refer to [MS-DRSR](../MS-DRSR/MS-DRSR.md) and [MS-ADTS](../MS-ADTS/MS-ADTS.md) for more information on how Active Directory uses this attribute.

cn: Server-Reference

ldapDisplayName: serverReference

attributeId: 1.2.840.113556.1.4.515

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: TRUE

schemaIdGuid: 26d9736d-6070-11d1-a9c6-0000f80367c1

systemOnly: FALSE

searchFlags: 0

linkID: 94

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.243"></a>
## 2.243 Attribute serverReferenceBL

This attribute is the back link attribute of serverReference and contains an object found in the domain naming context. The distinguished name of a computer under the sites folder. Refer to [MS-DRSR](../MS-DRSR/MS-DRSR.md) and [MS-ADTS](../MS-ADTS/MS-ADTS.md) for more information on how Active Directory uses this attribute.

cn: Server-Reference-BL

ldapDisplayName: serverReferenceBL

attributeId: 1.2.840.113556.1.4.516

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: FALSE

schemaIdGuid: 26d9736e-6070-11d1-a9c6-0000f80367c1

systemOnly: TRUE

searchFlags: 0

linkID: 95

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_NOT_REPLICATED

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

In Windows 2000 Server, the following attributes are defined differently.

isSingleValued: TRUE

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.244"></a>
## 2.244 Attribute serverRole

This attribute specifies compatibility with servers that preceded Windows 2000 servers. A computer running Windows NT Server operating system can be a stand-alone server, a primary domain controller (PDC), or a backup domain controller (BDC).

cn: Server-Role

ldapDisplayName: serverRole

attributeId: 1.2.840.113556.1.4.157

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: bf967a33-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

attributeSecurityGuid: b8119fd0-04f6-4762-ab7a-4986c76b3f9a

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

In Windows 2000 Server, attribute attributeSecurityGuid is not defined.

<a id="Section_2.245"></a>
## 2.245 Attribute serverState

This attribute specifies whether the server is enabled or disabled. A value of 1 indicates that the server is enabled. A value of 2 indicates that the server is disabled. All other values are invalid.

cn: Server-State

ldapDisplayName: serverState

attributeId: 1.2.840.113556.1.4.154

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: bf967a34-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

attributeSecurityGuid: b8119fd0-04f6-4762-ab7a-4986c76b3f9a

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_NOT_REPLICATED

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

In Windows 2000 Server, attribute attributeSecurityGuid is not defined.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.246"></a>
## 2.246 Attribute serviceBindingInformation

This attribute specifies service-specific binding information in string format.

cn: Service-Binding-Information

ldapDisplayName: serviceBindingInformation

attributeId: 1.2.840.113556.1.4.510

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: b7b1311c-b82e-11d0-afee-0000f80367c1

systemOnly: FALSE

searchFlags: 0

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.247"></a>
## 2.247 Attribute serviceClassID

This attribute specifies the GUID for the Service Class.

cn: Service-Class-ID

ldapDisplayName: serviceClassID

attributeId: 1.2.840.113556.1.4.122

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: bf967a35-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.248"></a>
## 2.248 Attribute serviceClassInfo

This attribute specifies general Service Class information.

cn: Service-Class-Info

ldapDisplayName: serviceClassInfo

attributeId: 1.2.840.113556.1.4.123

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: FALSE

schemaIdGuid: bf967a36-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.249"></a>
## 2.249 Attribute serviceClassName

This attribute specifies the string name of the service that an administration point represents.

cn: Service-Class-Name

ldapDisplayName: serviceClassName

attributeId: 1.2.840.113556.1.4.509

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: b7b1311d-b82e-11d0-afee-0000f80367c1

systemOnly: FALSE

searchFlags: fATTINDEX

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.250"></a>
## 2.250 Attribute serviceDNSName

This attribute specifies the fully qualified domain name (FQDN) (1) ([MS-ADTS](../MS-ADTS/MS-ADTS.md) section 1.1) to look up to find a server running this service.

cn: Service-DNS-Name

ldapDisplayName: serviceDNSName

attributeId: 1.2.840.113556.1.4.657

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 28630eb8-41d5-11d1-a9c1-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.251"></a>
## 2.251 Attribute serviceDNSNameType

This attribute specifies the type of DNS record to look up for this service. For example, A or SRV.

cn: Service-DNS-Name-Type

ldapDisplayName: serviceDNSNameType

attributeId: 1.2.840.113556.1.4.659

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 28630eba-41d5-11d1-a9c1-0000f80367c1

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 256

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.252"></a>
## 2.252 Attribute serviceInstanceVersion

This attribute specifies the version of a Winsock service.

cn: Service-Instance-Version

ldapDisplayName: serviceInstanceVersion

attributeId: 1.2.840.113556.1.4.199

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: bf967a37-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

rangeLower: 0

rangeUpper: 8

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.253"></a>
## 2.253 Attribute servicePrincipalName

This attribute specifies the principal names used for mutual authentication with an instance of a service on this machine. For more information, refer to [MS-DRSR](../MS-DRSR/MS-DRSR.md) section 2.2.2.

cn: Service-Principal-Name

ldapDisplayName: servicePrincipalName

attributeId: 1.2.840.113556.1.4.771

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: f3a64788-5306-11d1-a9c5-0000f80367c1

systemOnly: FALSE

searchFlags: fATTINDEX

attributeSecurityGuid: e48d0154-bcf8-11d1-8702-00c04fb96050

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT |

FLAG_ATTR_REQ_PARTIAL_SET_MEMBER

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.254"></a>
## 2.254 Attribute setupCommand

This attribute specifies whether or not a setup command is required to set up this application.

cn: Setup-Command

ldapDisplayName: setupCommand

attributeId: 1.2.840.113556.1.4.325

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 7d6c0e97-7e20-11d0-afd6-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.255"></a>
## 2.255 Attribute shadowExpire

This attribute specifies an absolute date to expire an account.

cn: ShadowExpire

ldapDisplayName: shadowExpire

attributeId: 1.3.6.1.1.1.1.10

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: 75159a00-1fff-4cf4-8bff-4ef2695cf643

systemOnly: FALSE

searchFlags: 0

Version-Specific Behavior: First implemented on Windows Server 2003 R2.

<a id="Section_2.256"></a>
## 2.256 Attribute shadowFlag

This attribute specifies a part of the shadow map used to store the flag value.

cn: ShadowFlag

ldapDisplayName: shadowFlag

attributeId: 1.3.6.1.1.1.1.11

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: 8dfeb70d-c5db-46b6-b15e-a4389e6cee9b

systemOnly: FALSE

searchFlags: 0

Version-Specific Behavior: First implemented on Windows Server 2003 R2.

<a id="Section_2.257"></a>
## 2.257 Attribute shadowInactive

This attribute specifies the number of days before password expiry to warn the user.

cn: ShadowInactive

ldapDisplayName: shadowInactive

attributeId: 1.3.6.1.1.1.1.9

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: 86871d1f-3310-4312-8efd-af49dcfb2671

systemOnly: FALSE

searchFlags: 0

Version-Specific Behavior: First implemented on Windows Server 2003 R2.

<a id="Section_2.258"></a>
## 2.258 Attribute shadowLastChange

This attribute specifies the last change of shadow information.

cn: ShadowLastChange

ldapDisplayName: shadowLastChange

attributeId: 1.3.6.1.1.1.1.5

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: f8f2689c-29e8-4843-8177-e8b98e15eeac

systemOnly: FALSE

searchFlags: 0

Version-Specific Behavior: First implemented on Windows Server 2003 R2.

<a id="Section_2.259"></a>
## 2.259 Attribute shadowMax

This attribute specifies the maximum number of days that a password is valid.

cn: ShadowMax

ldapDisplayName: shadowMax

attributeId: 1.3.6.1.1.1.1.7

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: f285c952-50dd-449e-9160-3b880d99988d

systemOnly: FALSE

searchFlags: 0

Version-Specific Behavior: First implemented on Windows Server 2003 R2.

<a id="Section_2.260"></a>
## 2.260 Attribute shadowMin

This attribute specifies the minimum number of days between shadow changes.

cn: ShadowMin

ldapDisplayName: shadowMin

attributeId: 1.3.6.1.1.1.1.6

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: a76b8737-e5a1-4568-b057-dc12e04be4b2

systemOnly: FALSE

searchFlags: 0

Version-Specific Behavior: First implemented on Windows Server 2003 R2.

<a id="Section_2.261"></a>
## 2.261 Attribute shadowWarning

This attribute specifies the number of days before password expiry to warn the user.

cn: ShadowWarning

ldapDisplayName: shadowWarning

attributeId: 1.3.6.1.1.1.1.8

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: 7ae89c9c-2976-4a46-bb8a-340f88560117

systemOnly: FALSE

searchFlags: 0

Version-Specific Behavior: First implemented on Windows Server 2003 R2.

<a id="Section_2.262"></a>
## 2.262 Attribute shellContextMenu

This attribute specifies the order number and GUID of the context menu for this object.

cn: Shell-Context-Menu

ldapDisplayName: shellContextMenu

attributeId: 1.2.840.113556.1.4.615

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 553fd039-f32e-11d0-b0bc-00c04fd8dca6

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.263"></a>
## 2.263 Attribute shellPropertyPages

This attribute specifies the order number and GUID of property pages for managing Active Directory objects. These property pages can be accessed from the Windows shell. For more information, see the document "Extending the User Interface for Directory Objects" [[MSDN-ExtUserIntDirObj]](https://go.microsoft.com/fwlink/?LinkId=107095).

cn: Shell-Property-Pages

ldapDisplayName: shellPropertyPages

attributeId: 1.2.840.113556.1.4.563

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 52458039-ca6a-11d0-afff-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.264"></a>
## 2.264 Attribute shortServerName

This attribute specifies a compatible server name for print servers that preceded Windows 2000.

cn: Short-Server-Name

ldapDisplayName: shortServerName

attributeId: 1.2.840.113556.1.4.1209

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 45b01501-c419-11d1-bbc9-0080c76670c0

systemOnly: FALSE

searchFlags: 0

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.265"></a>
## 2.265 Attribute showInAddressBook

This attribute specifies in which MAPI address books an object will appear. It is usually maintained by the Exchange Recipient Update Service.

cn: Show-In-Address-Book

ldapDisplayName: showInAddressBook

attributeId: 1.2.840.113556.1.4.644

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: FALSE

schemaIdGuid: 3e74f60e-3e73-11d1-a9c0-0000f80367c1

systemOnly: FALSE

searchFlags: fCOPY

attributeSecurityGuid: e48d0154-bcf8-11d1-8702-00c04fb96050

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.266"></a>
## 2.266 Attribute showInAdvancedViewOnly

This attribute specifies whether the attribute is to be visible in the Advanced mode of user interfaces (UIs). Active Directory snap-ins read this attribute.

cn: Show-In-Advanced-View-Only

ldapDisplayName: showInAdvancedViewOnly

attributeId: 1.2.840.113556.1.2.169

attributeSyntax: 2.5.5.8

omSyntax: 1

isSingleValued: TRUE

schemaIdGuid: bf967984-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: fCOPY| fATTINDEX

attributeSecurityGuid: 59ba2f42-79a2-11d0-9020-00c04fc2d3cf

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.267"></a>
## 2.267 Attribute sIDHistory

This attribute specifies previous SIDs used for the object if the object was moved from another domain. Whenever an object is moved from one domain to another, a new SID is created and that new SID becomes the objectSID. The previous SID is added to the sIDHistory property. For more information, refer to [MS-DRSR](../MS-DRSR/MS-DRSR.md) section 4.1.2.

cn: SID-History

ldapDisplayName: sIDHistory

attributeId: 1.2.840.113556.1.4.609

attributeSyntax: 2.5.5.17

omSyntax: 4

isSingleValued: FALSE

schemaIdGuid: 17eb4278-d167-11d0-b002-0000f80367c1

systemOnly: FALSE

searchFlags: fATTINDEX

attributeSecurityGuid: 59ba2f42-79a2-11d0-9020-00c04fc2d3cf

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT |

FLAG_ATTR_REQ_PARTIAL_SET_MEMBER

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

In Windows 2000 Server, the following attributes are defined differently.

systemOnly: TRUE

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.268"></a>
## 2.268 Attribute signatureAlgorithms

This attribute specifies the type of algorithm that is used to decode a digital signature during the authentication process.

cn: Signature-Algorithms

ldapDisplayName: signatureAlgorithms

attributeId: 1.2.840.113556.1.4.824

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 2a39c5b2-8960-11d1-aebc-0000f80367c1

systemOnly: FALSE

searchFlags: 0

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.269"></a>
## 2.269 Attribute siteGUID

This attribute specifies the unique identifier for a site.

cn: Site-GUID

ldapDisplayName: siteGUID

attributeId: 1.2.840.113556.1.4.362

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: 3e978924-8c01-11d0-afda-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

rangeLower: 16

rangeUpper: 16

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.270"></a>
## 2.270 Attribute siteLinkList

This attribute specifies the list of site links that are associated with this bridge.

cn: Site-Link-List

ldapDisplayName: siteLinkList

attributeId: 1.2.840.113556.1.4.822

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: FALSE

schemaIdGuid: d50c2cdd-8951-11d1-aebc-0000f80367c1

systemOnly: FALSE

searchFlags: 0

linkID: 142

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.271"></a>
## 2.271 Attribute siteList

This attribute specifies the list of sites connected to this link object.

cn: Site-List

ldapDisplayName: siteList

attributeId: 1.2.840.113556.1.4.821

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: FALSE

schemaIdGuid: d50c2cdc-8951-11d1-aebc-0000f80367c1

systemOnly: FALSE

searchFlags: 0

linkID: 144

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.272"></a>
## 2.272 Attribute siteObject

This attribute specifies the distinguished name for the site to which this subnet belongs.

cn: Site-Object

ldapDisplayName: siteObject

attributeId: 1.2.840.113556.1.4.512

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: TRUE

schemaIdGuid: 3e10944c-c354-11d0-aff8-0000f80367c1

systemOnly: FALSE

searchFlags: 0

linkID: 46

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.273"></a>
## 2.273 Attribute siteObjectBL

This attribute is the back link attribute of siteObject and contains the list of subnet objects that belong to a site.

cn: Site-Object-BL

ldapDisplayName: siteObjectBL

attributeId: 1.2.840.113556.1.4.513

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: FALSE

schemaIdGuid: 3e10944d-c354-11d0-aff8-0000f80367c1

systemOnly: TRUE

searchFlags: 0

linkID: 47

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_NOT_REPLICATED

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.274"></a>
## 2.274 Attribute siteServer

This attribute specifies the licensing master server for a given site.

cn: Site-Server

ldapDisplayName: siteServer

attributeId: 1.2.840.113556.1.4.494

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: FALSE

schemaIdGuid: 1be8f17c-a9ff-11d0-afe2-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.275"></a>
## 2.275 Attribute sn

This attribute specifies the family or last name for a user.

cn: Surname

ldapDisplayName: sn

attributeId: 2.5.4.4

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: bf967a41-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: fANR | fATTINDEX

rangeLower: 1

rangeUpper: 64

attributeSecurityGuid: e48d0154-bcf8-11d1-8702-00c04fb96050

mapiID: 14865

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.276"></a>
## 2.276 Attribute sPNMappings

This multivalued attribute contains a list of service principal names (SPNs) to show the equivalence of SPN types. The SPN is the name a client uses to uniquely identify an instance of a service. If an implementer installs multiple instances of a service on computers throughout a forest, each instance has to have its own SPN. A given service instance can have multiple SPNs if there are multiple names that clients might use for authentication. For example, "ldap/..." SPNs could be mapped so that they are equivalent to "host/..." SPNs. For more information on Active Directory usage, refer to [MS-DRSR](../MS-DRSR/MS-DRSR.md) section 4.1.4.2.19.

cn: SPN-Mappings

ldapDisplayName: sPNMappings

attributeId: 1.2.840.113556.1.4.1347

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 2ab0e76c-7041-11d2-9905-0000f87a57d4

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.277"></a>
## 2.277 Attribute st

This attribute specifies the name of a user's state or province.

cn: State-Or-Province-Name

ldapDisplayName: st

attributeId: 2.5.4.8

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: bf967a39-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: fCOPY

rangeLower: 1

rangeUpper: 128

attributeSecurityGuid: 77b5b886-944a-11d1-aebd-0000f80367c1

mapiID: 14888

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT |

FLAG_ATTR_REQ_PARTIAL_SET_MEMBER

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.278"></a>
## 2.278 Attribute street

This attribute specifies the street address.

cn: Street-Address

ldapDisplayName: street

attributeId: 2.5.4.9

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: bf967a3a-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: fCOPY

rangeLower: 1

rangeUpper: 1024

attributeSecurityGuid: 77b5b886-944a-11d1-aebd-0000f80367c1

mapiID: 33082

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT |

FLAG_ATTR_REQ_PARTIAL_SET_MEMBER

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.279"></a>
## 2.279 Attribute streetAddress

This attribute specifies the user's address.

cn: Address

ldapDisplayName: streetAddress

attributeId: 1.2.840.113556.1.2.256

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: f0f8ff84-1191-11d0-a060-00aa006c33ed

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 1024

attributeSecurityGuid: 77b5b886-944a-11d1-aebd-0000f80367c1

mapiID: 14889

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.280"></a>
## 2.280 Attribute structuralObjectClass

This attribute specifies a constructed attribute that stores a list of classes contained in a class hierarchy, including abstract classes. This list does contain dynamically linked auxiliary classes.

cn: Structural-Object-Class

ldapDisplayName: structuralObjectClass

attributeId: 2.5.21.9

attributeSyntax: 2.5.5.2

omSyntax: 6

isSingleValued: FALSE

schemaIdGuid: 3860949f-f6a8-4b38-9950-81ecb6bc2982

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_IS_CONSTRUCTED

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows Server 2003.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.281"></a>
## 2.281 Attribute subClassOf

This attribute specifies the parent class of a class.

cn: Sub-Class-Of

ldapDisplayName: subClassOf

attributeId: 1.2.840.113556.1.2.21

attributeSyntax: 2.5.5.2

omSyntax: 6

isSingleValued: TRUE

schemaIdGuid: bf967a3b-0de6-11d0-a285-00aa003049e2

systemOnly: TRUE

searchFlags: fPRESERVEONDELETE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.282"></a>
## 2.282 Attribute subRefs

This attribute specifies a list of subordinate references of a naming context. For more information on subRefs, refer to [MS-ADTS](../MS-ADTS/MS-ADTS.md).

cn: Sub-Refs

ldapDisplayName: subRefs

attributeId: 1.2.840.113556.1.2.7

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: FALSE

schemaIdGuid: bf967a3c-0de6-11d0-a285-00aa003049e2

systemOnly: TRUE

searchFlags: 0

mapiID: 33083

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT |

FLAG_ATTR_REQ_PARTIAL_SET_MEMBER | FLAG_ATTR_NOT_REPLICATED

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.283"></a>
## 2.283 Attribute subSchemaSubEntry

This attribute specifies the distinguished name for the location of the subschema object where a class or attribute is defined.

cn: SubSchemaSubEntry

ldapDisplayName: subSchemaSubEntry

attributeId: 2.5.18.10

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: FALSE

schemaIdGuid: 9a7ad94d-ca53-11d1-bbd0-0080c76670c0

systemOnly: TRUE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_IS_CONSTRUCTED |

FLAG_DOMAIN_DISALLOW_RENAME

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.284"></a>
## 2.284 Attribute superiorDNSRoot

This attribute specifies a system attribute that is used for referrals generation.

cn: Superior-DNS-Root

ldapDisplayName: superiorDNSRoot

attributeId: 1.2.840.113556.1.4.532

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 5245801d-ca6a-11d0-afff-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.285"></a>
## 2.285 Attribute superScopeDescription

This attribute specifies a description for a superscope.

cn: Super-Scope-Description

ldapDisplayName: superScopeDescription

attributeId: 1.2.840.113556.1.4.711

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 963d274c-48be-11d1-a9c3-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.286"></a>
## 2.286 Attribute superScopes

This attribute groups together all the different scopes used in the DHCP class into a single entity.

cn: Super-Scopes

ldapDisplayName: superScopes

attributeId: 1.2.840.113556.1.4.710

attributeSyntax: 2.5.5.5

omSyntax: 19

isSingleValued: FALSE

schemaIdGuid: 963d274b-48be-11d1-a9c3-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.287"></a>
## 2.287 Attribute supplementalCredentials

This attribute specifies stored credentials for use in authenticating; the encrypted version of the user's password. This attribute is neither readable nor writable.

For more information about usage, refer to [MS-SAMR](../MS-SAMR/MS-SAMR.md) section 2.2.10.

cn: Supplemental-Credentials

ldapDisplayName: supplementalCredentials

attributeId: 1.2.840.113556.1.4.125

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: FALSE

schemaIdGuid: bf967a3f-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.288"></a>
## 2.288 Attribute supportedApplicationContext

This attribute specifies the object identifier(s) of application context(s) that an OSI application supports.

cn: Supported-Application-Context

ldapDisplayName: supportedApplicationContext

attributeId: 2.5.4.30

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: FALSE

schemaIdGuid: 1677588f-47f3-11d1-a9c3-0000f80367c1

systemOnly: FALSE

searchFlags: 0

mapiID: 33085

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.289"></a>
## 2.289 Attribute syncAttributes

This attribute specifies information on the sync objects.

cn: Sync-Attributes

ldapDisplayName: syncAttributes

attributeId: 1.2.840.113556.1.4.666

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: 037651e4-441d-11d1-a9c3-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.290"></a>
## 2.290 Attribute syncMembership

This attribute specifies a list of members contained in a SAM built-in group for synchronization.

cn: Sync-Membership

ldapDisplayName: syncMembership

attributeId: 1.2.840.113556.1.4.665

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: FALSE

schemaIdGuid: 037651e3-441d-11d1-a9c3-0000f80367c1

systemOnly: FALSE

searchFlags: 0

linkID: 78

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.291"></a>
## 2.291 Attribute syncWithObject

This attribute specifies the distinguished name of the object being synchronized for the SAM built-in group/local policy synchronization.

cn: Sync-With-Object

ldapDisplayName: syncWithObject

attributeId: 1.2.840.113556.1.4.664

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: TRUE

schemaIdGuid: 037651e2-441d-11d1-a9c3-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.292"></a>
## 2.292 Attribute syncWithSID

This attribute specifies the SAM built-in group object/local policy synchronization; this is the local group to which an object corresponds.

cn: Sync-With-SID

ldapDisplayName: syncWithSID

attributeId: 1.2.840.113556.1.4.667

attributeSyntax: 2.5.5.17

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: 037651e5-441d-11d1-a9c3-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.293"></a>
## 2.293 Attribute systemAuxiliaryClass

This attribute specifies the governsIds of some of the Auxiliary classes that are linked to this class. These classes contain attributes that are required for system operation. This attribute is optional. It can be modified only by the Active Directory system [MS-ADOD](../MS-ADOD/MS-ADOD.md). See [MS-ADTS](../MS-ADTS/MS-ADTS.md) section 3.1.1.3.1.1.5 for more information.

cn: System-Auxiliary-Class

ldapDisplayName: systemAuxiliaryClass

attributeId: 1.2.840.113556.1.4.198

attributeSyntax: 2.5.5.2

omSyntax: 6

isSingleValued: FALSE

schemaIdGuid: bf967a43-0de6-11d0-a285-00aa003049e2

systemOnly: TRUE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.294"></a>
## 2.294 Attribute systemFlags

This attribute specifies an integer value that contains flags that define additional properties of the class. See [MS-ADTS](../MS-ADTS/MS-ADTS.md) for more information. This attribute is optional.

The systemFlags attribute contains bitwise flags. The values relevant to the schema objects are the following (further defined in [MS-ADTS] section 2.2.10):

- FLAG_ATTR_NOT_REPLICATED: This attribute is non-replicated.
- FLAG_ATTR_REQ_PARTIAL_SET_MEMBER: If set, this attribute is a member of partial attribute set (PAS) regardless of the value of attribute isMemberofPartialAttributeSet.
- FLAG_ATTR_IS_CONSTRUCTED: This attribute is a constructed attribute.
- FLAG_ATTR_IS_OPERATIONAL: This attribute is an operational attribute, as defined in [[RFC2251]](https://go.microsoft.com/fwlink/?LinkId=90325) section 3.2.1.
- FLAG_SCHEMA_BASE_OBJECT: This attribute is a Category 1 schema attribute.
- FLAG_ATTR_IS_RDN: This attribute can be used as an RDN attribute of a class.
This attribute is defined as follows:

cn: System-Flags

ldapDisplayName: systemFlags

attributeId: 1.2.840.113556.1.4.375

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: e0fa1e62-9b45-11d0-afdd-00c04fd930c9

systemOnly: TRUE

searchFlags: fPRESERVEONDELETE

attributeSecurityGuid: e48d0154-bcf8-11d1-8702-00c04fb96050

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.295"></a>
## 2.295 Attribute systemMayContain

This attribute specifies the list of optional attributes for a class. The list of attributes can only be modified by the Active Directory system [MS-ADOD](../MS-ADOD/MS-ADOD.md).

cn: System-May-Contain

ldapDisplayName: systemMayContain

attributeId: 1.2.840.113556.1.4.196

attributeSyntax: 2.5.5.2

omSyntax: 6

isSingleValued: FALSE

schemaIdGuid: bf967a44-0de6-11d0-a285-00aa003049e2

systemOnly: TRUE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.296"></a>
## 2.296 Attribute systemMustContain

This attribute specifies the attributeIds of some of the mandatory attributes of this class. It contains attributes required for system operation. This attribute is optional and can be modified only by the Active Directory system [MS-ADOD](../MS-ADOD/MS-ADOD.md).

cn: System-Must-Contain

ldapDisplayName: systemMustContain

attributeId: 1.2.840.113556.1.4.197

attributeSyntax: 2.5.5.2

omSyntax: 6

isSingleValued: FALSE

schemaIdGuid: bf967a45-0de6-11d0-a285-00aa003049e2

systemOnly: TRUE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.297"></a>
## 2.297 Attribute systemOnly

This attribute specifies a Boolean value that specifies whether only Active Directory can modify the class. System-Only classes can be created or deleted only by the directory system agent.

cn: System-Only

ldapDisplayName: systemOnly

attributeId: 1.2.840.113556.1.4.170

attributeSyntax: 2.5.5.8

omSyntax: 1

isSingleValued: TRUE

schemaIdGuid: bf967a46-0de6-11d0-a285-00aa003049e2

systemOnly: TRUE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.298"></a>
## 2.298 Attribute systemPossSuperiors

This attribute specifies the governsIds of some of the classes that can be parents of this class within an NC tree. It describes relationships that are required for system operation. This attribute is optional and can be modified only by the Active Directory system [MS-ADOD](../MS-ADOD/MS-ADOD.md). See [MS-ADTS](../MS-ADTS/MS-ADTS.md) for more information.

cn: System-Poss-Superiors

ldapDisplayName: systemPossSuperiors

attributeId: 1.2.840.113556.1.4.195

attributeSyntax: 2.5.5.2

omSyntax: 6

isSingleValued: FALSE

schemaIdGuid: bf967a47-0de6-11d0-a285-00aa003049e2

systemOnly: TRUE

searchFlags: 0

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT |

FLAG_ATTR_REQ_PARTIAL_SET_MEMBER

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

In Windows 2000 Server, attribute isMemberOfPartialAttributeSet is not defined.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.299"></a>
## 2.299 Attribute telephoneNumber

This attribute specifies the primary telephone number.

cn: Telephone-Number

ldapDisplayName: telephoneNumber

attributeId: 2.5.4.20

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: bf967a49-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 64

attributeSecurityGuid: 77b5b886-944a-11d1-aebd-0000f80367c1

mapiID: 14856

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.300"></a>
## 2.300 Attribute teletexTerminalIdentifier

This attribute specifies the Teletex terminal identifier (and optionally, parameters) for a teletex terminal associated with an object.

cn: Teletex-Terminal-Identifier

ldapDisplayName: teletexTerminalIdentifier

attributeId: 2.5.4.22

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: FALSE

schemaIdGuid: bf967a4a-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

attributeSecurityGuid: 77b5b886-944a-11d1-aebd-0000f80367c1

mapiID: 33091

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.301"></a>
## 2.301 Attribute telexNumber

This attribute specifies a list of alternate telex numbers.

cn: Telex-Number

ldapDisplayName: telexNumber

attributeId: 2.5.4.21

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: FALSE

schemaIdGuid: bf967a4b-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 32

attributeSecurityGuid: 77b5b886-944a-11d1-aebd-0000f80367c1

mapiID: 14892

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.302"></a>
## 2.302 Attribute templateRoots

This attribute specifies an attribute used on the Exchange Server configuration container to indicate where the template containers are stored. This information is used by the Active Directory MAPI provider.

cn: Template-Roots

ldapDisplayName: templateRoots

attributeId: 1.2.840.113556.1.4.1346

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: FALSE

schemaIdGuid: ed9de9a0-7041-11d2-9905-0000f87a57d4

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.303"></a>
## 2.303 Attribute templateRoots2

This attribute specifies an attribute used on the Exchange Server configuration container to indicate where the template containers are stored. This information is used by the Active Directory MAPI provider. Similar to [templateRoots](#Section_56d3f55d41d2452cb7d43d2bfa452955), it differs by being a linked attribute.

cn: Template-Roots2

ldapDisplayName: templateRoots2

attributeId: 1.2.840.113556.1.4.2048

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: FALSE

linkId: 2126

schemaIdGuid: b1cba91a-0682-4362-a659-153e201ef069

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows Server 2008.

<a id="Section_2.304"></a>
## 2.304 Attribute terminalServer

This attribute specifies opaque data used by Windows NT Terminal Server.

cn: Terminal-Server

ldapDisplayName: terminalServer

attributeId: 1.2.840.113556.1.4.885

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: 6db69a1c-9422-11d1-aebd-0000f80367c1

systemOnly: FALSE

searchFlags: fATTINDEX

rangeUpper: 20480

attributeSecurityGuid: 5805bc62-bdc9-4428-a5e2-856a0f4c185e

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

In Windows 2000 Server, attribute rangeUpper is not defined.

<a id="Section_2.305"></a>
## 2.305 Attribute textEncodedORAddress

This attribute is used to support X.400 [[X400]](https://go.microsoft.com/fwlink/?LinkId=107135) addresses in a text format.

cn: Text-Encoded-OR-Address

ldapDisplayName: textEncodedORAddress

attributeId: 0.9.2342.19200300.100.1.2

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: a8df7489-c5ea-11d1-bbcb-0080c76670c0

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 1024

mapiID: 35969

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.306"></a>
## 2.306 Attribute thumbnailLogo

This attribute specifies a BLOB containing a logo for this object.

cn: Logo

ldapDisplayName: thumbnailLogo

attributeId: 2.16.840.1.113730.3.1.36

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: bf9679a9-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 32767

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.307"></a>
## 2.307 Attribute thumbnailPhoto

This attribute specifies a picture.

cn: Picture

ldapDisplayName: thumbnailPhoto

attributeId: 2.16.840.1.113730.3.1.35

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: 8d3bca50-1d7e-11d0-a081-00aa006c33ed

systemOnly: FALSE

searchFlags: 0

rangeLower: 0

rangeUpper: 102400

mapiId: 35998

attributeSecurityGuid: 77b5b886-944a-11d1-aebd-0000f80367c1

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.308"></a>
## 2.308 Attribute timeRefresh

This attribute specifies the interval during which a resource record that is contained in an Active Directory integrated zone has to be refreshed for the DNS server. The default interval is seven days.

cn: Time-Refresh

ldapDisplayName: timeRefresh

attributeId: 1.2.840.113556.1.4.503

attributeSyntax: 2.5.5.16

omSyntax: 65

isSingleValued: TRUE

schemaIdGuid: ddac0cf1-af8f-11d0-afeb-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.309"></a>
## 2.309 Attribute timeVolChange

This attribute specifies the last time that a file in the remote storage volume was changed.

cn: Time-Vol-Change

ldapDisplayName: timeVolChange

attributeId: 1.2.840.113556.1.4.502

attributeSyntax: 2.5.5.16

omSyntax: 65

isSingleValued: TRUE

schemaIdGuid: ddac0cf0-af8f-11d0-afeb-00c04fd930c9

systemOnly: FALSE

searchFlags: fATTINDEX

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.310"></a>
## 2.310 Attribute title

This attribute specifies the user's job title. This property is commonly used to indicate the formal job title, such as Senior Programmer, rather than occupational class, such as programmer. It is not typically used for suffix titles such as Esq. or DDS.

cn: Title

ldapDisplayName: title

attributeId: 2.5.4.12

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: bf967a55-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 128

attributeSecurityGuid: e48d0154-bcf8-11d1-8702-00c04fb96050

mapiID: 14871

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.311"></a>
## 2.311 Attribute tokenGroups

This attribute specifies a computed attribute that contains the list of SIDs due to a transitive group membership expansion operation on a given user or computer. Token groups cannot be retrieved if no global catalog is present to retrieve the transitive reverse memberships.

cn: Token-Groups

ldapDisplayName: tokenGroups

attributeId: 1.2.840.113556.1.4.1301

attributeSyntax: 2.5.5.17

omSyntax: 4

isSingleValued: FALSE

schemaIdGuid: b7c69e6d-2cc7-11d2-854e-00a0c983f608

systemOnly: FALSE

searchFlags: 0

attributeSecurityGuid: 037088f8-0ae1-11d2-b422-00a0c968f939

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_IS_CONSTRUCTED |

FLAG_DOMAIN_DISALLOW_RENAME

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.312"></a>
## 2.312 Attribute tokenGroupsGlobalAndUniversal

This attribute specifies the token groups for Exchange Server.

cn: Token-Groups-Global-And-Universal

ldapDisplayName: tokenGroupsGlobalAndUniversal

attributeId: 1.2.840.113556.1.4.1418

attributeSyntax: 2.5.5.17

omSyntax: 4

isSingleValued: FALSE

schemaIdGuid: 46a9b11d-60ae-405a-b7e8-ff8a58d456d2

systemOnly: FALSE

searchFlags: 0

attributeSecurityGuid: 037088f8-0ae1-11d2-b422-00a0c968f939

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_IS_CONSTRUCTED |

FLAG_DOMAIN_DISALLOW_RENAME

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.313"></a>
## 2.313 Attribute tokenGroupsNoGCAcceptable

This attribute specifies the list of SIDs due to a transitive group membership expansion operation on a given user or computer. Token groups cannot be retrieved if a global catalog is not present to retrieve the transitive reverse memberships.

cn: Token-Groups-No-GC-Acceptable

ldapDisplayName: tokenGroupsNoGCAcceptable

attributeId: 1.2.840.113556.1.4.1303

attributeSyntax: 2.5.5.17

omSyntax: 4

isSingleValued: FALSE

schemaIdGuid: 040fc392-33df-11d2-98b2-0000f87a57d4

systemOnly: FALSE

searchFlags: 0

attributeSecurityGuid: 037088f8-0ae1-11d2-b422-00a0c968f939

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_IS_CONSTRUCTED |

FLAG_DOMAIN_DISALLOW_RENAME

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.314"></a>
## 2.314 Attribute tombstoneLifetime

If the Recycle Bin optional feature is not enabled, this attribute specifies the number of days before a deleted object is removed from the directory services. If the Recycle Bin optional feature is enabled, this attribute specifies the number of days before a recycled object is removed from the directory services. For more information, refer to [MS-ADTS](../MS-ADTS/MS-ADTS.md) section 3.1.1.1.15 and [MS-DRSR](../MS-DRSR/MS-DRSR.md).

cn: Tombstone-Lifetime

ldapDisplayName: tombstoneLifetime

attributeId: 1.2.840.113556.1.2.54

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: 16c3a860-1273-11d0-a060-00aa006c33ed

systemOnly: FALSE

searchFlags: 0

mapiID: 33093

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.315"></a>
## 2.315 Attribute transportAddressAttribute

This attribute specifies the name of the address type for the transport.

cn: Transport-Address-Attribute

ldapDisplayName: transportAddressAttribute

attributeId: 1.2.840.113556.1.4.895

attributeSyntax: 2.5.5.2

omSyntax: 6

isSingleValued: TRUE

schemaIdGuid: c1dc867c-a261-11d1-b606-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.316"></a>
## 2.316 Attribute transportDLLName

This attribute specifies the name of the DLL that will manage a transport.

cn: Transport-DLL-Name

ldapDisplayName: transportDLLName

attributeId: 1.2.840.113556.1.4.789

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 26d97372-6070-11d1-a9c6-0000f80367c1

systemOnly: FALSE

searchFlags: 0

rangeLower: 0

rangeUpper: 1024

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.317"></a>
## 2.317 Attribute transportType

This attribute specifies the distinguished name for a type of transport being used to connect sites together. This value can point to an IP or Simple Mail Transfer Protocol (SMTP) transport.

cn: Transport-Type

ldapDisplayName: transportType

attributeId: 1.2.840.113556.1.4.791

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: TRUE

schemaIdGuid: 26d97374-6070-11d1-a9c6-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.318"></a>
## 2.318 Attribute treatAsLeaf

This attribute defines a flag for display specifiers (see the displaySpecifier class in [MS-ADSC](../MS-ADSC/MS-ADSC.md)). Display specifiers that have this attribute set to True force the related class to be displayed as a leaf class even if it has children.

cn: Treat-As-Leaf

ldapDisplayName: treatAsLeaf

attributeId: 1.2.840.113556.1.4.806

attributeSyntax: 2.5.5.8

omSyntax: 1

isSingleValued: TRUE

schemaIdGuid: 8fd044e3-771f-11d1-aeae-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.319"></a>
## 2.319 Attribute treeName

This attribute specifies the fully qualified domain name (FQDN) (2) ([MS-ADTS](../MS-ADTS/MS-ADTS.md) section 1.1) of the domain at the root of a tree.

cn: Tree-Name

ldapDisplayName: treeName

attributeId: 1.2.840.113556.1.4.660

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 28630ebd-41d5-11d1-a9c1-0000f80367c1

systemOnly: TRUE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.320"></a>
## 2.320 Attribute trustAttributes

This attribute specifies the trust attributes for a trusted domain. Possible attribute values are as follows: TRUST_ATTRIBUTE_NON_TRANSITIVE Disable transitivity. TRUST_ATTRIBUTE_TREE_PARENT Trust is set to the organization tree parent. TRUST_ATTRIBUTE_TREE_ROOT Trust set to another tree root in the forest. TRUST_ATTRIBUTE_UPLEVEL_ONLY Trusted link valid only for up-level client. For more information, refer to [MS-ADTS](../MS-ADTS/MS-ADTS.md) section 6.1.6.7.9.

cn: Trust-Attributes

ldapDisplayName: trustAttributes

attributeId: 1.2.840.113556.1.4.470

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: 80a67e5a-9f22-11d0-afdd-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

In Windows 2000 Server, attribute isMemberOfPartialAttributeSet is not defined.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.321"></a>
## 2.321 Attribute trustAuthIncoming

This attribute specifies authentication information for the incoming portion of a trust. For more information, refer to [MS-ADTS](../MS-ADTS/MS-ADTS.md) sections 6.1.6.7.10 and 6.1.6.9.1.

cn: Trust-Auth-Incoming

ldapDisplayName: trustAuthIncoming

attributeId: 1.2.840.113556.1.4.129

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: bf967a59-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

rangeLower: 0

rangeUpper: 32767

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.322"></a>
## 2.322 Attribute trustAuthOutgoing

This attribute specifies authentication information for the outgoing portion of a trust. For more information, refer to [MS-ADTS](../MS-ADTS/MS-ADTS.md) sections 6.1.6.7.11 and 6.1.6.9.1.

cn: Trust-Auth-Outgoing

ldapDisplayName: trustAuthOutgoing

attributeId: 1.2.840.113556.1.4.135

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: bf967a5f-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

rangeLower: 0

rangeUpper: 32767

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.323"></a>
## 2.323 Attribute trustDirection

This attribute specifies the direction of a trust. For more information refer to [MS-ADTS](../MS-ADTS/MS-ADTS.md) section 6.1.6.7.12.

cn: Trust-Direction

ldapDisplayName: trustDirection

attributeId: 1.2.840.113556.1.4.132

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: bf967a5c-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

In Windows 2000 Server, attribute isMemberOfPartialAttributeSet is not defined.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.324"></a>
## 2.324 Attribute trustParent

This attribute specifies the distinguished name of a related Cross-Ref. See [MS-ADTS](../MS-ADTS/MS-ADTS.md) section 6.1.1.2.1.1.4.

cn: Trust-Parent

ldapDisplayName: trustParent

attributeId: 1.2.840.113556.1.4.471

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: TRUE

schemaIdGuid: b000ea7a-a086-11d0-afdd-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.325"></a>
## 2.325 Attribute trustPartner

This attribute specifies the name of the domain with which a trust exists. For more information refer to [MS-ADTS](../MS-ADTS/MS-ADTS.md) section 6.1.6.7.13.

cn: Trust-Partner

ldapDisplayName: trustPartner

attributeId: 1.2.840.113556.1.4.133

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: bf967a5d-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: fATTINDEX

rangeLower: 1

rangeUpper: 1024

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

In Windows 2000 Server, attribute isMemberOfPartialAttributeSet is not defined.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.326"></a>
## 2.326 Attribute trustPosixOffset

This attribute specifies the Portable Operating System Interface (POSIX) offset for the trusted domain.

cn: Trust-Posix-Offset

ldapDisplayName: trustPosixOffset

attributeId: 1.2.840.113556.1.4.134

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: bf967a5e-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.327"></a>
## 2.327 Attribute trustType

This attribute specifies the type of trust, for example, NT or MIT.

cn: Trust-Type

ldapDisplayName: trustType

attributeId: 1.2.840.113556.1.4.136

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: bf967a60-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

In Windows 2000 Server, attribute isMemberOfPartialAttributeSet is not defined.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.328"></a>
## 2.328 Attribute uASCompat

This attribute specifies whether the security account manager will enforce data sizes to make Active Directory compatible with the LAN Manager User Account System (UAS). If this value is 0, no limits are enforced. If this value is 1, the following limits are enforced.

| Bit Range | Field | Description |
| --- | --- | --- |
| Variable | Password | 0 to 14 characters |
| Variable | Account Name | 0 to 20 characters |
| Variable | Domain Name | 0 to 15 characters |
| Variable | Computer Name | 0 to 15 characters |
| Variable | Comments | 0 to 48 characters |
| Variable | Home Directory | 0 to 256 characters |
| Variable | Script Path | 0 to 256 characters |
| Variable | Time Units Per Week | 168 bits (21 bytes) |

cn: UAS-Compat

ldapDisplayName: uASCompat

attributeId: 1.2.840.113556.1.4.155

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: bf967a61-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

attributeSecurityGuid: b8119fd0-04f6-4762-ab7a-4986c76b3f9a

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

In Windows 2000 Server, attribute attributeSecurityGuid is not defined.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.329"></a>
## 2.329 Attribute uid

This attribute specifies a user ID.

cn: uid

ldapDisplayName: uid

attributeId: 0.9.2342.19200300.100.1.1

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 0bb0fca0-1e89-429f-901a-1413894d9f59

systemOnly: FALSE

searchFlags: fPRESERVEONDELETE

attributeSecurityGuid: 59ba2f42-79a2-11d0-9020-00c04fc2d3cf

Version-Specific Behavior: First implemented on Windows Server 2003.

<a id="Section_2.330"></a>
## 2.330 Attribute uidNumber

This attribute specifies an integer that uniquely identifies a user in an administrative domain, as specified in [[RFC2307]](https://go.microsoft.com/fwlink/?LinkId=90333).

cn: UidNumber

ldapDisplayName: uidNumber

attributeId: 1.3.6.1.1.1.1.0

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: 850fcc8f-9c6b-47e1-b671-7c654be4d5b3

systemOnly: FALSE

searchFlags: fATTINDEX

Version-Specific Behavior: First implemented on Windows Server 2003 R2.

<a id="Section_2.331"></a>
## 2.331 Attribute uNCName

This attribute specifies the universal naming convention name for shared volumes and printers.

cn: UNC-Name

ldapDisplayName: uNCName

attributeId: 1.2.840.113556.1.4.137

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: bf967a64-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: fATTINDEX

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.332"></a>
## 2.332 Attribute unicodePwd

This attribute specifies the password of the user in Windows NT one-way format (OWF). Windows 2000 uses the Windows NT OWF. This property is used only by the operating system. Note that the clear password cannot be derived back from the OWF form of the password. For more information, refer to [MS-ADTS](../MS-ADTS/MS-ADTS.md) section 3.1.1.3.1.5.1 and [MS-SAMR](../MS-SAMR/MS-SAMR.md) section 3.1.1.8.7.

cn: Unicode-Pwd

ldapDisplayName: unicodePwd

attributeId: 1.2.840.113556.1.4.90

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: bf9679e1-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.333"></a>
## 2.333 Attribute uniqueIdentifier

This attribute specifies a "unique identifier" for an object represented in the directory. For more information refer to [MS-ADTS](../MS-ADTS/MS-ADTS.md).

cn: uniqueIdentifier

ldapDisplayName: uniqueIdentifier

attributeId: 0.9.2342.19200300.100.1.44

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: ba0184c7-38c5-4bed-a526-75421470580c

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 256

Version-Specific Behavior: First implemented on Windows Server 2003.

<a id="Section_2.334"></a>
## 2.334 Attribute uniqueMember

This attribute specifies the distinguished name for the member of a group (see the groupOfUniqueNames class [MS-ADSC](../MS-ADSC/MS-ADSC.md)).

cn: uniqueMember

ldapDisplayName: uniqueMember

attributeId: 2.5.4.50

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: FALSE

schemaIdGuid: 8f888726-f80a-44d7-b1ee-cb9df21392c8

systemOnly: FALSE

searchFlags: 0

Version-Specific Behavior: First implemented on Windows Server 2003.

<a id="Section_2.335"></a>
## 2.335 Attribute unixHomeDirectory

This attribute specifies the absolute path to the home directory [[RFC2307]](https://go.microsoft.com/fwlink/?LinkId=90333).

cn: UnixHomeDirectory

ldapDisplayName: unixHomeDirectory

attributeId: 1.3.6.1.1.1.1.3

attributeSyntax: 2.5.5.5

omSyntax: 22

isSingleValued: TRUE

schemaIdGuid: bc2dba12-000f-464d-bf1d-0808465d8843

systemOnly: FALSE

searchFlags: 0

rangeUpper: 2048

Version-Specific Behavior: First implemented on Windows Server 2003 R2.

<a id="Section_2.336"></a>
## 2.336 Attribute unixUserPassword

This attribute specifies a userPassword compatible with UNIX systems.

cn: UnixUserPassword

ldapDisplayName: unixUserPassword

attributeId: 1.2.840.113556.1.4.1910

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: FALSE

schemaIdGuid: 612cb747-c0e8-4f92-9221-fdd5f15b550d

systemOnly: FALSE

searchFlags: fCONFIDENTIAL

rangeLower: 1

rangeUpper: 128

Version-Specific Behavior: First implemented on Windows Server 2003 R2.

<a id="Section_2.337"></a>
## 2.337 Attribute unstructuredAddress

This attribute specifies the IP address of the router. For example, 100.11.22.33. PKCS #9.

cn: unstructuredAddress

ldapDisplayName: unstructuredAddress

attributeId: 1.2.840.113549.1.9.8

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 50950839-cc4c-4491-863a-fcf942d684b7

systemOnly: FALSE

searchFlags: 0

rangeUpper: 256

Version-Specific Behavior: First implemented on Windows Server 2003.

<a id="Section_2.338"></a>
## 2.338 Attribute unstructuredName

This attribute specifies the fully qualified domain name (FQDN) (1) ([MS-ADTS](../MS-ADTS/MS-ADTS.md) section 1.1) of the router, for example, router1.microsoft.com. PKCS #9.

cn: unstructuredName

ldapDisplayName: unstructuredName

attributeId: 1.2.840.113549.1.9.2

attributeSyntax: 2.5.5.5

omSyntax: 22

isSingleValued: FALSE

schemaIdGuid: 9c8ef177-41cf-45c9-9673-7716c0c8901b

systemOnly: FALSE

searchFlags: 0

rangeUpper: 256

Version-Specific Behavior: First implemented on Windows Server 2003.

<a id="Section_2.339"></a>
## 2.339 Attribute upgradeProductCode

This attribute contains the product code of other packages, such as applications, that can be upgraded by this package, or that can upgrade this package.

cn: Upgrade-Product-Code

ldapDisplayName: upgradeProductCode

attributeId: 1.2.840.113556.1.4.813

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: FALSE

schemaIdGuid: d9e18312-8939-11d1-aebc-0000f80367c1

systemOnly: FALSE

searchFlags: 0

rangeLower: 0

rangeUpper: 16

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.340"></a>
## 2.340 Attribute uPNSuffixes

This attribute specifies the list of User-Principal-Name suffixes for a forest.

cn: UPN-Suffixes

ldapDisplayName: uPNSuffixes

attributeId: 1.2.840.113556.1.4.890

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 032160bf-9824-11d1-aec0-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.341"></a>
## 2.341 Attribute url

This attribute specifies a list of alternate webpages.

cn: WWW-Page-Other

ldapDisplayName: url

attributeId: 1.2.840.113556.1.4.749

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 9a9a0221-4a5b-11d1-a9c3-0000f80367c1

systemOnly: FALSE

searchFlags: 0

attributeSecurityGuid: e45795b3-9455-11d1-aebd-0000f80367c1

mapiID: 33141

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.342"></a>
## 2.342 Attribute userAccountControl

This attribute specifies flags that control the behavior of the user account.

cn: User-Account-Control

ldapDisplayName: userAccountControl

attributeId: 1.2.840.113556.1.4.8

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: bf967a68-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: fCOPY| fPRESERVEONDELETE | fATTINDEX

attributeSecurityGuid: 4c164200-20c0-11d0-a768-00aa006e0529

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT |

FLAG_ATTR_REQ_PARTIAL_SET_MEMBER

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.343"></a>
## 2.343 Attribute userCert

This attribute specifies Nortel v1 or DMS certificates.

cn: User-Cert

ldapDisplayName: userCert

attributeId: 1.2.840.113556.1.4.645

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: bf967a69-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

rangeLower: 0

rangeUpper: 32767

attributeSecurityGuid: 77b5b886-944a-11d1-aebd-0000f80367c1

mapiID: 14882

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.344"></a>
## 2.344 Attribute userCertificate

This attribute specifies the DER-encoded X509v3 certificates issued to the user ([[RFC3280]](https://go.microsoft.com/fwlink/?LinkId=90414)). Note that this property contains the public key certificates issued to this user by Microsoft Certificate Service.

cn: X509-Cert

ldapDisplayName: userCertificate

attributeId: 2.5.4.36

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: FALSE

schemaIdGuid: bf967a7f-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

rangeUpper: 32768

attributeSecurityGuid: 77b5b886-944a-11d1-aebd-0000f80367c1

mapiID: 35946

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

In Windows 2000 Server, attribute rangeUpper is not defined.

<a id="Section_2.345"></a>
## 2.345 Attribute userClass

This attribute specifies a category of computer user.

cn: userClass

ldapDisplayName: userClass

attributeId: 0.9.2342.19200300.100.1.8

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 11732a8a-e14d-4cc5-b92f-d93f51c6d8e4

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 256

Version-Specific Behavior: First implemented on Windows Server 2003.

<a id="Section_2.346"></a>
## 2.346 Attribute userParameters

This attribute specifies parameters of the user and is set aside for use by applications. Terminal servers use this attribute to store session configuration data for the user. For more information, see [MS-TSTS](../MS-TSTS/MS-TSTS.md). Microsoft Callback Control Protocol [MS-CBCP](../MS-CBCP/MS-CBCP.md) also uses this attribute to retrieve the callback configuration options for the user.

cn: User-Parameters

ldapDisplayName: userParameters

attributeId: 1.2.840.113556.1.4.138

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: bf967a6d-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

rangeLower: 0

rangeUpper: 32767

attributeSecurityGuid: 4c164200-20c0-11d0-a768-00aa006e0529

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.347"></a>
## 2.347 Attribute userPassword

This attribute specifies the user's password in UTF-8 format. This is a write-only attribute.

cn: User-Password

ldapDisplayName: userPassword

attributeId: 2.5.4.35

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: FALSE

schemaIdGuid: bf967a6e-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 128

mapiID: 33107

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.348"></a>
## 2.348 Attribute userPKCS12

This attribute specifies the PKCS #12 PFX Protocol Data Unit (PDU) for exchange of personal identity information.

cn: userPKCS12

ldapDisplayName: userPKCS12

attributeId: 2.16.840.1.113730.3.1.216

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: FALSE

schemaIdGuid: 23998ab5-70f8-4007-a4c1-a84a38311f9a

systemOnly: FALSE

searchFlags: 0

Version-Specific Behavior: First implemented on Windows Server 2003.

<a id="Section_2.349"></a>
## 2.349 Attribute userPrincipalName

This attribute specifies the user principal name (UPN) that is an Internet-style logon name for a user, as specified in the Internet standard [[RFC822]](https://go.microsoft.com/fwlink/?LinkId=90497). The UPN is shorter than the distinguished name and easier to remember. By convention, the UPN maps to the user email name. For more information about this attribute, see [MS-ADTS](../MS-ADTS/MS-ADTS.md).

cn: User-Principal-Name

ldapDisplayName: userPrincipalName

attributeId: 1.2.840.113556.1.4.656

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 28630ebb-41d5-11d1-a9c1-0000f80367c1

systemOnly: FALSE

searchFlags: fATTINDEX

rangeUpper: 1024

attributeSecurityGuid: e48d0154-bcf8-11d1-8702-00c04fb96050

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT |

FLAG_ATTR_REQ_PARTIAL_SET_MEMBER

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

In Windows 2000 Server, attribute rangeUpper is not defined.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.350"></a>
## 2.350 Attribute userSharedFolder

This attribute specifies a UNC path to the user's shared documents folder. The path is a network UNC path of the form \\server\share\directory. This value can be a null string.

cn: User-Shared-Folder

ldapDisplayName: userSharedFolder

attributeId: 1.2.840.113556.1.4.751

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 9a9a021f-4a5b-11d1-a9c3-0000f80367c1

systemOnly: FALSE

searchFlags: 0

attributeSecurityGuid: 77b5b886-944a-11d1-aebd-0000f80367c1

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.351"></a>
## 2.351 Attribute userSharedFolderOther

This attribute specifies a UNC path to the user's additional shared documents folder. The path is a network UNC path of the form \\server\share\directory. This value can be a null string.

cn: User-Shared-Folder-Other

ldapDisplayName: userSharedFolderOther

attributeId: 1.2.840.113556.1.4.752

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 9a9a0220-4a5b-11d1-a9c3-0000f80367c1

systemOnly: FALSE

searchFlags: 0

attributeSecurityGuid: 77b5b886-944a-11d1-aebd-0000f80367c1

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.352"></a>
## 2.352 Attribute userSMIMECertificate

This attribute specifies a certificate distribution object or tagged certificates.

cn: User-SMIME-Certificate

ldapDisplayName: userSMIMECertificate

attributeId: 2.16.840.1.113730.3.140

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: FALSE

schemaIdGuid: e16a9db2-403c-11d1-a9c0-0000f80367c1

systemOnly: FALSE

searchFlags: 0

rangeUpper: 32768

attributeSecurityGuid: 77b5b886-944a-11d1-aebd-0000f80367c1

mapiID: 14960

isMemberOfPartialAttributeSet: TRUE

Version-Specific Behavior: First implemented on Windows 2000 Server.

In Windows 2000 Server, attribute rangeUpper is not defined, and the following attributes are defined differently.

systemFlags: FLAG_SCHEMA_BASE_OBJECT

<a id="Section_2.353"></a>
## 2.353 Attribute userWorkstations

This attribute specifies the NetBIOS or fully qualified domain names (FQDNs) (1) ([MS-ADTS](../MS-ADTS/MS-ADTS.md) section 1.1) of the computers running Windows NT Workstation operating system or Windows 2000 Professional operating system from which the user can log on. Each NetBIOS name is separated by a comma. The NetBIOS name of a computer is the saMAccountName property of a computer object. Multiple names are separated by commas.

cn: User-Workstations

ldapDisplayName: userWorkstations

attributeId: 1.2.840.113556.1.4.86

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: bf9679d7-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: fCOPY

rangeLower: 0

rangeUpper: 1024

attributeSecurityGuid: 5f202010-79a5-11d0-9020-00c04fc2d4cf

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

In Windows 2000 Server, attribute attributeSecurityGuid is not defined.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.354"></a>
## 2.354 Attribute uSNChanged

This attribute specifies the Update Sequence Number (USN) value assigned by the local directory for the latest change, including creation. For more information, refer to [MS-DRSR](../MS-DRSR/MS-DRSR.md).

cn: USN-Changed

ldapDisplayName: uSNChanged

attributeId: 1.2.840.113556.1.2.120

attributeSyntax: 2.5.5.16

omSyntax: 65

isSingleValued: TRUE

schemaIdGuid: bf967a6f-0de6-11d0-a285-00aa003049e2

systemOnly: TRUE

searchFlags: fPRESERVEONDELETE | fATTINDEX

mapiID: 32809

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT |

FLAG_ATTR_REQ_PARTIAL_SET_MEMBER | FLAG_ATTR_NOT_REPLICATED

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.355"></a>
## 2.355 Attribute uSNCreated

This attribute specifies the USN-Changed value assigned at object creation. For more information, refer to [MS-DRSR](../MS-DRSR/MS-DRSR.md).

cn: USN-Created

ldapDisplayName: uSNCreated

attributeId: 1.2.840.113556.1.2.19

attributeSyntax: 2.5.5.16

omSyntax: 65

isSingleValued: TRUE

schemaIdGuid: bf967a70-0de6-11d0-a285-00aa003049e2

systemOnly: TRUE

searchFlags: fPRESERVEONDELETE | fATTINDEX

mapiID: 33108

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT |

FLAG_ATTR_REQ_PARTIAL_SET_MEMBER | FLAG_ATTR_NOT_REPLICATED

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.356"></a>
## 2.356 Attribute uSNDSALastObjRemoved

This attribute specifies the USN for the last system object that was removed from a server. For more information, refer to [MS-DRSR](../MS-DRSR/MS-DRSR.md).

cn: USN-DSA-Last-Obj-Removed

ldapDisplayName: uSNDSALastObjRemoved

attributeId: 1.2.840.113556.1.2.267

attributeSyntax: 2.5.5.16

omSyntax: 65

isSingleValued: TRUE

schemaIdGuid: bf967a71-0de6-11d0-a285-00aa003049e2

systemOnly: TRUE

searchFlags: 0

mapiID: 33109

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.357"></a>
## 2.357 Attribute USNIntersite

This attribute specifies the USN for inter-site replication. For more information, refer to [MS-DRSR](../MS-DRSR/MS-DRSR.md).

cn: USN-Intersite

ldapDisplayName: USNIntersite

attributeId: 1.2.840.113556.1.2.469

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: a8df7498-c5ea-11d1-bbcb-0080c76670c0

systemOnly: FALSE

searchFlags: fATTINDEX

mapiID: 33146

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.358"></a>
## 2.358 Attribute uSNLastObjRem

This attribute specifies the USN for the last non–system object that was removed from a server. For more information, refer to [MS-DRSR](../MS-DRSR/MS-DRSR.md).

cn: USN-Last-Obj-Rem

ldapDisplayName: uSNLastObjRem

attributeId: 1.2.840.113556.1.2.121

attributeSyntax: 2.5.5.16

omSyntax: 65

isSingleValued: TRUE

schemaIdGuid: bf967a73-0de6-11d0-a285-00aa003049e2

systemOnly: TRUE

searchFlags: 0

mapiID: 33110

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT |

FLAG_ATTR_REQ_PARTIAL_SET_MEMBER | FLAG_ATTR_NOT_REPLICATED

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.359"></a>
## 2.359 Attribute uSNSource

This attribute specifies the value of the [USN-Changed](../MS-DRSR/MS-DRSR.md) attribute of the object from the remote directory that replicated the change to the local server. For more information refer to [MS-DRSR](../MS-DRSR/MS-DRSR.md).

cn: USN-Source

ldapDisplayName: uSNSource

attributeId: 1.2.840.113556.1.4.896

attributeSyntax: 2.5.5.16

omSyntax: 65

isSingleValued: TRUE

schemaIdGuid: 167758ad-47f3-11d1-a9c3-0000f80367c1

systemOnly: FALSE

searchFlags: 0

mapiID: 33111

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.360"></a>
## 2.360 Attribute validAccesses

This attribute specifies the type of access that is permitted with an extended right.

cn: Valid-Accesses

ldapDisplayName: validAccesses

attributeId: 1.2.840.113556.1.4.1356

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: 4d2fa380-7f54-11d2-992a-0000f87a57d4

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.361"></a>
## 2.361 Attribute vendor

This attribute specifies the vendor for an application.

cn: Vendor

ldapDisplayName: vendor

attributeId: 1.2.840.113556.1.4.255

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 281416df-1968-11d0-a28f-00aa003049e2

systemOnly: FALSE

searchFlags: 0

rangeLower: 0

rangeUpper: 512

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.362"></a>
## 2.362 Attribute versionNumber

This attribute specifies a general purpose version number.

cn: Version-Number

ldapDisplayName: versionNumber

attributeId: 1.2.840.113556.1.4.141

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: bf967a76-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.363"></a>
## 2.363 Attribute versionNumberHi

This attribute specifies a general purpose major version number.

cn: Version-Number-Hi

ldapDisplayName: versionNumberHi

attributeId: 1.2.840.113556.1.4.328

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: 7d6c0e9a-7e20-11d0-afd6-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.364"></a>
## 2.364 Attribute versionNumberLo

This attribute specifies a general purpose minor version number.

cn: Version-Number-Lo

ldapDisplayName: versionNumberLo

attributeId: 1.2.840.113556.1.4.329

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: 7d6c0e9b-7e20-11d0-afd6-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.365"></a>
## 2.365 Attribute volTableGUID

This attribute specifies a unique identifier for a Link-Track-Volume table entry.

cn: Vol-Table-GUID

ldapDisplayName: volTableGUID

attributeId: 1.2.840.113556.1.4.336

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: 1f0075fd-7e40-11d0-afd6-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

rangeLower: 0

rangeUpper: 16

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.366"></a>
## 2.366 Attribute volTableIdxGUID

This attribute specifies the index identifier for a Link-Track-Volume table entry.

cn: Vol-Table-Idx-GUID

ldapDisplayName: volTableIdxGUID

attributeId: 1.2.840.113556.1.4.334

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: 1f0075fb-7e40-11d0-afd6-00c04fd930c9

systemOnly: FALSE

searchFlags: fATTINDEX

rangeLower: 0

rangeUpper: 16

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.367"></a>
## 2.367 Attribute volumeCount

This attribute specifies the tracked volume quota for a given computer.

cn: Volume-Count

ldapDisplayName: volumeCount

attributeId: 1.2.840.113556.1.4.507

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: 34aaa217-b699-11d0-afee-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.368"></a>
## 2.368 Attribute wbemPath

This attribute specifies references to objects in other Active Directory Service Interface (ADSI) namespaces.

cn: Wbem-Path

ldapDisplayName: wbemPath

attributeId: 1.2.840.113556.1.4.301

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 244b2970-5abd-11d0-afd2-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.369"></a>
## 2.369 Attribute wellKnownObjects

This attribute specifies a list of well-known object containers by GUID and distinguished name. The well-known objects are system containers. This information is used to retrieve an object after it has been moved by using just the GUID and the domain name. Whenever the object is moved, the Active Directory system [MS-ADOD](../MS-ADOD/MS-ADOD.md) will automatically update the distinguished name portion of the Well-Known-Objects values that referred to the object. For information on well-known objects, well-known GUIDs, and their symbolic names, see [MS-ADTS](../MS-ADTS/MS-ADTS.md) section 6.1.1.4.

cn: Well-Known-Objects

ldapDisplayName: wellKnownObjects

attributeId: 1.2.840.113556.1.4.618

attributeSyntax: 2.5.5.7

omSyntax: 127

omObjectClass: 1.2.840.113556.1.1.1.11

isSingleValued: FALSE

schemaIdGuid: 05308983-7688-11d1-aded-00c04fd8d5cd

systemOnly: TRUE

searchFlags: 0

rangeLower: 16

rangeUpper: 16

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT |

FLAG_ATTR_REQ_PARTIAL_SET_MEMBER

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

In Windows 2000 Server, attribute rangeLower and rangeUpper is not defined.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.370"></a>
## 2.370 Attribute whenChanged

This attribute specifies the date when this object was last changed. This value is not replicated and exists in the global catalog. For more information refer to [MS-ADTS](../MS-ADTS/MS-ADTS.md).

cn: When-Changed

ldapDisplayName: whenChanged

attributeId: 1.2.840.113556.1.2.3

attributeSyntax: 2.5.5.11

omSyntax: 24

isSingleValued: TRUE

schemaIdGuid: bf967a77-0de6-11d0-a285-00aa003049e2

systemOnly: TRUE

searchFlags: 0

mapiID: 12296

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT |

FLAG_ATTR_REQ_PARTIAL_SET_MEMBER | FLAG_ATTR_NOT_REPLICATED

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.371"></a>
## 2.371 Attribute whenCreated

This attribute specifies the date and time when this object was created. This value is replicated and is in the global catalog. For more information refer to [MS-ADTS](../MS-ADTS/MS-ADTS.md).

cn: When-Created

ldapDisplayName: whenCreated

attributeId: 1.2.840.113556.1.2.2

attributeSyntax: 2.5.5.11

omSyntax: 24

isSingleValued: TRUE

schemaIdGuid: bf967a78-0de6-11d0-a285-00aa003049e2

systemOnly: TRUE

searchFlags: 0

mapiID: 12295

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT |

FLAG_ATTR_REQ_PARTIAL_SET_MEMBER

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows 2000 Server.

In Windows 2000 Server, the following attributes are defined differently.

systemFlags: FLAG_SCHEMA_BASE_OBJECT

The [schemaFlagsEx](#Section_5ea3a8652cfa481d9892d00fd04514ea) attribute was added to this attribute definition in Windows Server 2008.

<a id="Section_2.372"></a>
## 2.372 Attribute winsockAddresses

This attribute specifies a Winsock service address.

cn: Winsock-Addresses

ldapDisplayName: winsockAddresses

attributeId: 1.2.840.113556.1.4.142

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: FALSE

schemaIdGuid: bf967a79-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.373"></a>
## 2.373 Attribute wWWHomePage

This attribute specifies the primary web page.

cn: WWW-Home-Page

ldapDisplayName: wWWHomePage

attributeId: 1.2.840.113556.1.2.464

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: bf967a7a-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 2048

attributeSecurityGuid: e45795b3-9455-11d1-aebd-0000f80367c1

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.374"></a>
## 2.374 Attribute x121Address

This attribute specifies the X.121 address for an object, as specified in [[X121]](https://go.microsoft.com/fwlink/?LinkId=107134).

cn: X121-Address

ldapDisplayName: x121Address

attributeId: 2.5.4.24

attributeSyntax: 2.5.5.6

omSyntax: 18

isSingleValued: FALSE

schemaIdGuid: bf967a7b-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 15

attributeSecurityGuid: 77b5b886-944a-11d1-aebd-0000f80367c1

mapiID: 33112

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.375"></a>
## 2.375 Attribute x500uniqueIdentifier

This attribute specifies when a distinguished name has been reused. This is a different attribute type from both the "uid" and "uniqueIdentifier" types.

cn: x500uniqueIdentifier

ldapDisplayName: x500uniqueIdentifier

attributeId: 2.5.4.45

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: FALSE

schemaIdGuid: d07da11f-8a3d-42b6-b0aa-76c962be719a

systemOnly: FALSE

searchFlags: 0

Version-Specific Behavior: First implemented on Windows Server 2003.

<a id="Section_3"></a>
# 3 Change Tracking

This section identifies changes that were made to this document since the last release. Changes are classified as Major, Minor, or None.

The revision class **Major** means that the technical content in the document was significantly revised. Major changes affect protocol interoperability or implementation. Examples of major changes are:

- A document revision that incorporates changes to interoperability requirements.
- A document revision that captures changes to protocol functionality.
The revision class **Minor** means that the meaning of the technical content was clarified. Minor changes do not affect protocol interoperability or implementation. Examples of minor changes are updates to clarify ambiguity at the sentence, paragraph, or table level.

The revision class **None** means that no new technical changes were introduced. Minor editorial and formatting changes may have been made, but the relevant technical content is identical to the last released version.

The changes made to this document are listed in the following table. For more information, please contact [dochelp@microsoft.com](mailto:dochelp@microsoft.com).

| Section | Description | Revision class |
| --- | --- | --- |
| [1](../MS-ADTS/MS-ADTS.md) Introduction | Added a reference to [MS-ADTS] for the list of applicable products. | Minor |


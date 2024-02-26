USE [RandomExamGenerator]
GO
DELETE FROM UserAccount;
GO
DBCC CHECKIDENT ('[dbo].[UserAccount]', RESEED, 0);
GO

/*
DECLARE @name NVARCHAR(100) = 'Zahra';
DECLARE @student NVARCHAR(20) = 'student';
DECLARE @instructor NVARCHAR(20) = 'instructor';

INSERT INTO [dbo].[UserAccount] 
(UserName, Type, PasswordHash)
VALUES
( @name, @student, dbo.FnS_SHA256NVARCHAR(@name) );
GO
*/

INSERT [dbo].[UserAccount] ([PasswordHash], [Type], [UserName]) VALUES (N'30A7FBE6F0388AF8C514AB8A5B08758C0A3EBEA84B55CEAE32C4E517F515C044', N'instructor', N'Hassan')
GO
INSERT [dbo].[UserAccount] ([PasswordHash], [Type], [UserName]) VALUES (N'4A6A53021591045C4729DEC8FA7CFF4518A1BE58CCCA97D0EAD8C66976AC6AF9', N'instructor', N'Peter')
GO
INSERT [dbo].[UserAccount] ([PasswordHash], [Type], [UserName]) VALUES (N'87B156431ACF8B478296504918CD83B557369273174B3BBCD25250EF74DA5ED3', N'instructor', N'Sondos')
GO
INSERT [dbo].[UserAccount] ([PasswordHash], [Type], [UserName]) VALUES (N'C78450AFB47BEA2174406C7FBABB204497D7F7065B22B67465EEC073513C3573', N'instructor', N'Mohanad')
GO
INSERT [dbo].[UserAccount] ([PasswordHash], [Type], [UserName]) VALUES (N'9DB298348727498A3257AF9E3820D00C63DA4625ABCE520FFC72CBD26CF82396', N'instructor', N'Yasmeen')
GO
INSERT [dbo].[UserAccount] ([PasswordHash], [Type], [UserName]) VALUES (N'0960B3DF22D9B7D42BE422A6E5BADF80A77B6E323ED1AD49A378F06AED17F4FE', N'student', N'Ahmad')
GO
INSERT [dbo].[UserAccount] ([PasswordHash], [Type], [UserName]) VALUES (N'3AEE174E33E82F6FC73AFC7E69A09FF9759A782AD401C77073B48F6EA58215DE', N'student', N'Amir')
GO
INSERT [dbo].[UserAccount] ([PasswordHash], [Type], [UserName]) VALUES (N'F53F7B331C8CFCDAFAEA06BD063B196BFF45973F2943F1F6BE07DF5A30EA1457', N'student', N'Amany')
GO
INSERT [dbo].[UserAccount] ([PasswordHash], [Type], [UserName]) VALUES (N'D3023E8CB2E87592CE028ECD451C8223EC63AC41907BBD1FAC3A3227D705B370', N'student', N'Amin')
GO
INSERT [dbo].[UserAccount] ([PasswordHash], [Type], [UserName]) VALUES (N'BF054AE5F4795E08A3FA5FD36AFE2E664649B989111DFA9AFF2BCD13DA019DE7', N'student', N'Basem')
GO
INSERT [dbo].[UserAccount] ([PasswordHash], [Type], [UserName]) VALUES (N'8A30BBA65A7561A017C5E5E5A742D8AAA9E185458E4E3EE130636609DD5557F8', N'student', N'Basma')
GO
INSERT [dbo].[UserAccount] ([PasswordHash], [Type], [UserName]) VALUES (N'2CB96532AFEAD484B5E845C62B03C7337C6991F30571A5370971112A8DDAECA5', N'student', N'Basant')
GO
INSERT [dbo].[UserAccount] ([PasswordHash], [Type], [UserName]) VALUES (N'98AD28B792B3D334C9DAF8605EC44ABD72B001D3980DD648F82BC17D3CE2FB80', N'student', N'Careem')
GO
INSERT [dbo].[UserAccount] ([PasswordHash], [Type], [UserName]) VALUES (N'7DBFFD55B61A76E98B07B487DCCD717F27311B08DA2B7F8574F7AA3748233B3E', N'student', N'Casandra')
GO
INSERT [dbo].[UserAccount] ([PasswordHash], [Type], [UserName]) VALUES (N'6BB231CACE94A5D59921F529333EEBFB66FB2E18D81A28EEA6403A8DC1846F3B', N'student', N'Dalia')
GO
INSERT [dbo].[UserAccount] ([PasswordHash], [Type], [UserName]) VALUES (N'E1F7CC8B270C0060263824935FAAC809471C6AF7A7BA78B09D3B593CFFC29EE6', N'student', N'Doaa')
GO
INSERT [dbo].[UserAccount] ([PasswordHash], [Type], [UserName]) VALUES (N'E751C503AFECDBD5158BB5B3C8B977EC48C36F06ADBCEFCAC8ABC3083F0CF7B1', N'instructor', N'Ebtsam')
GO
INSERT [dbo].[UserAccount] ([PasswordHash], [Type], [UserName]) VALUES (N'9E80E406B48A005620A56829B0AC8D3C3F75C7480F7F80CC202C0EE22547273F', N'student', N'Essam')
GO
INSERT [dbo].[UserAccount] ([PasswordHash], [Type], [UserName]) VALUES (N'E48D083E847AED81915ABDF48485BC895D0F0A924D85634AE6FA034B1B898265', N'student', N'Eslam')
GO
INSERT [dbo].[UserAccount] ([PasswordHash], [Type], [UserName]) VALUES (N'EB26E1DA85DC150A3623F3D6FBE1D65FA1D41D8D3CB54F684E1C5538470B6438', N'student', N'Fatma')
GO
INSERT [dbo].[UserAccount] ([PasswordHash], [Type], [UserName]) VALUES (N'808C27CE7D5F9404EF5E92FDF85D697E28B23A871D6803F4CDC553E1C39A614D', N'student', N'Fatin')
GO
INSERT [dbo].[UserAccount] ([PasswordHash], [Type], [UserName]) VALUES (N'5838A3C9C09239752CD8C3075B0AC9F7FA7506F3EFE5E42DA3A6BD0CCF5F4837', N'student', N'Fawzy')
GO
INSERT [dbo].[UserAccount] ([PasswordHash], [Type], [UserName]) VALUES (N'FD26F747EF8CE1DB32232BA8BBAE58892A187E9436CE8ADF4D38B49585B70E06', N'student', N'Foaad')
GO
INSERT [dbo].[UserAccount] ([PasswordHash], [Type], [UserName]) VALUES (N'4467ECDDBA43D3FE0DBE8714BC0AF0252EDD9451FAD1D3D2C07C2A7DEF4035AC', N'student', N'Gamal')
GO
INSERT [dbo].[UserAccount] ([PasswordHash], [Type], [UserName]) VALUES (N'D51CFAFC85C1003C9FD62C902D76482F6FFF10AC1C1C126E4AEC273DC036C089', N'instructor', N'Gylan')
GO
INSERT [dbo].[UserAccount] ([PasswordHash], [Type], [UserName]) VALUES (N'DBCDD41F9CE92E1A33D4334E5365C62D635D7D9AA6097372FCAEEBE5824FA493', N'student', N'Gom3a')
GO
INSERT [dbo].[UserAccount] ([PasswordHash], [Type], [UserName]) VALUES (N'F6BCA4AA23A3895DACFBA41BFCE7FFC4A9CA4B059BFBC203492AA41CB0F4E4A2', N'student', N'Hosam')
GO
INSERT [dbo].[UserAccount] ([PasswordHash], [Type], [UserName]) VALUES (N'FEB50492BEFA0B989B00F217692F945A58B87D5A857104BD31CEB7CFE21ACC09', N'instructor', N'Hany')
GO
INSERT [dbo].[UserAccount] ([PasswordHash], [Type], [UserName]) VALUES (N'96F5E232C932A55AD87492C7608D073B2E658D05BE926B22CDD2091F981BCF2A', N'student', N'Heba')
GO
INSERT [dbo].[UserAccount] ([PasswordHash], [Type], [UserName]) VALUES (N'2864D076D05583033C3AE46AD4AA03D0DB60ADB8C8524899048D3D0F0A0302E8', N'student', N'Hadeel')
GO
INSERT [dbo].[UserAccount] ([PasswordHash], [Type], [UserName]) VALUES (N'5D686EA448E43F6F2DC0D24C88C58172D4FF58F42FEF310315421F6B6BB8C1B3', N'student', N'Hazem')
GO
INSERT [dbo].[UserAccount] ([PasswordHash], [Type], [UserName]) VALUES (N'36CD5DDD8F420433F21F9F152C05B24DB4E4087FE34F1938AB677FA3A5915AEF', N'instructor', N'Kamel')
GO
INSERT [dbo].[UserAccount] ([PasswordHash], [Type], [UserName]) VALUES (N'047D01345BA4B77B7772C0E9AEB9CF415B42C2671FFCCCF19B27E1841CAB73F0', N'student', N'Karima')
GO
INSERT [dbo].[UserAccount] ([PasswordHash], [Type], [UserName]) VALUES (N'55A0818B5B5516B20D132B255A6BE07E504B46FA72D7868F253F5CBA43FEDCCD', N'student', N'Karma')
GO
INSERT [dbo].[UserAccount] ([PasswordHash], [Type], [UserName]) VALUES (N'B1EB1C8CB40362CB39A74CFFF84DC7688460CD9D0A453488B517B542F79748D0', N'student', N'Lisa')
GO
INSERT [dbo].[UserAccount] ([PasswordHash], [Type], [UserName]) VALUES (N'523A5951CFD9B135C74E67C41BB506B32DC188BE3F2A3225B4F498091DCD9481', N'student', N'Laila')
GO
INSERT [dbo].[UserAccount] ([PasswordHash], [Type], [UserName]) VALUES (N'B89D65B8B10E8EAE3AB16A58D98F82861F823F527EBBC7053F3F271D991039E0', N'instructor', N'Mohamad')
GO
INSERT [dbo].[UserAccount] ([PasswordHash], [Type], [UserName]) VALUES (N'9EE4669956B752FBEE05024A52E52B48D08BF9AAEED1CB81BA558C60E5ED7098', N'student', N'Mostafa')
GO
INSERT [dbo].[UserAccount] ([PasswordHash], [Type], [UserName]) VALUES (N'B8D6ECE6E89D7708BA1D2DC837B2BC63DF20933BC92D2280BD0F6F66FE463748', N'student', N'Mo3taz')
GO
INSERT [dbo].[UserAccount] ([PasswordHash], [Type], [UserName]) VALUES (N'1326D507F5C5191675EAB3B7E35A0164E42710298C67F43FEFF1B4E50D9E46BE', N'instructor', N'Marian')
GO
INSERT [dbo].[UserAccount] ([PasswordHash], [Type], [UserName]) VALUES (N'C2937B797A2B43BF20800516BBDF97476F7BF16415D72C996F70435D64FB0321', N'instructor', N'Nagwa')
GO
INSERT [dbo].[UserAccount] ([PasswordHash], [Type], [UserName]) VALUES (N'FABFBA51EDFE85FA9B1286BC2503E300C6BFD38D3DA681206930213C310ED03A', N'student', N'Nader')
GO
INSERT [dbo].[UserAccount] ([PasswordHash], [Type], [UserName]) VALUES (N'47F4E0114336DD0516070750B32ABEB91E84A601B0297C121036BE6161D7B47F', N'student', N'Osman')
GO
INSERT [dbo].[UserAccount] ([PasswordHash], [Type], [UserName]) VALUES (N'37BD07248580459F38BE41FAACA1D715C2A9E08D22420BB2FE8DE966CDA22E62', N'instructor', N'Olievia')
GO
INSERT [dbo].[UserAccount] ([PasswordHash], [Type], [UserName]) VALUES (N'766EFCF4A5F2CC63B3605256DF551883BE81A016D16777519453E3870D180E30', N'student', N'Qamar')
GO
INSERT [dbo].[UserAccount] ([PasswordHash], [Type], [UserName]) VALUES (N'5EE36C4474334126D28F870C62801C2C8B72F10A277C51EB46B2740DC9A2B7FA', N'student', N'Sandy')
GO
INSERT [dbo].[UserAccount] ([PasswordHash], [Type], [UserName]) VALUES (N'876CE4F66233832D239468F55469055D273C162885BFC05E2A655682406AC89D', N'student', N'Samir')
GO
INSERT [dbo].[UserAccount] ([PasswordHash], [Type], [UserName]) VALUES (N'A81DE8D52F05CE26AF5A0ADD01F502440DD296A97982114AE57A7466FA7BF00F', N'student', N'Sha3ban')
GO
INSERT [dbo].[UserAccount] ([PasswordHash], [Type], [UserName]) VALUES (N'CC4394EAAE2505C8368770E7DC597946158123578A59EDA222DC7DEE205754A9', N'student', N'Tamer')
GO
INSERT [dbo].[UserAccount] ([PasswordHash], [Type], [UserName]) VALUES (N'1571D3F63D34202AB34C3F4BE5D3C288EA506630B898943CEEFFE8A8651C2358', N'student', N'Tamara')
GO
INSERT [dbo].[UserAccount] ([PasswordHash], [Type], [UserName]) VALUES (N'B17D61157E4223FD7D711A5F75ECE5E021AD57D0ABE457C6C7A711FD651930DC', N'student', N'Vector')
GO
INSERT [dbo].[UserAccount] ([PasswordHash], [Type], [UserName]) VALUES (N'79EA07538D9921FE5A23BAF6CCA8865E66D21F338625593B5C2F0FDB3F56A22A', N'student', N'Wael')
GO
INSERT [dbo].[UserAccount] ([PasswordHash], [Type], [UserName]) VALUES (N'BEE9880BBDA3BAEC7CE5A13F9E0BC4BA2D1087BABA3A86673EE50A46E8116C85', N'student', N'Waseem')
GO
INSERT [dbo].[UserAccount] ([PasswordHash], [Type], [UserName]) VALUES (N'9869695D882E09FC0CA2923D1D4B5109E25B9E8BB884AC5BC86077A9263D8631', N'instructor', N'Warda')
GO
INSERT [dbo].[UserAccount] ([PasswordHash], [Type], [UserName]) VALUES (N'F6F601A0B39D77ECE2B55F9E8533EED12A8BD7DEF9C21ED32B08EC1648DB18BD', N'student', N'Zahra')
GO
SELECT * FROM UserAccount ORDER BY [Type];
GO
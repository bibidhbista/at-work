
ALTER VIEW [dbo].[Messages_ForTrulincs]            
            
AS            

SELECT     MessageId, MessageGroupId, AccountId, InmateId, MessageTypeId, DeliveryId, SentDate, MessageStatusId, Status, UpdatedBy, UpdatedDate, AllowReply, ReplyCode, AlertType, OriginalMessageId, LanguageCode, LanguageConfidence, MessageRateId, InstitutionId, ClientIp, OriginatingMessageId, GroupId, MultipleRecipients            
FROM         Messages_Base WITH (INDEX=IX_Messages_Base_MsgForTrulincs, NOLOCK)           
UNION ALL            
SELECT     MessageId, MessageGroupId, AccountId, InmateId, MessageTypeId, DeliveryId, SentDate, MessageStatusId, Status, UpdatedBy, UpdatedDate, AllowReply, ReplyCode, AlertType, OriginalMessageId, LanguageCode, LanguageConfidence, MessageRateId, InstitutionId, ClientIp, OriginatingMessageId, GroupId, MultipleRecipients            
FROM         Messages_25 WITH (INDEX=IX_Messages_25_MsgForTrulincs, NOLOCK)           
UNION ALL            
SELECT     MessageId, MessageGroupId, AccountId, InmateId, MessageTypeId, DeliveryId, SentDate, MessageStatusId, Status, UpdatedBy, UpdatedDate, AllowReply, ReplyCode, AlertType, OriginalMessageId, LanguageCode, LanguageConfidence, MessageRateId, InstitutionId, ClientIp, OriginatingMessageId, GroupId, MultipleRecipients            
FROM         Messages_26 WITH (INDEX=IX_Messages_26_MsgForTrulincs, NOLOCK)           
UNION ALL            
SELECT     MessageId, MessageGroupId, AccountId, InmateId, MessageTypeId, DeliveryId, SentDate, MessageStatusId, Status, UpdatedBy, UpdatedDate, AllowReply, ReplyCode, AlertType, OriginalMessageId, LanguageCode, LanguageConfidence, MessageRateId, InstitutionId, ClientIp, OriginatingMessageId, GroupId, MultipleRecipients            
FROM         Messages_27 WITH (INDEX=IX_Messages_27_MsgForTrulincs, NOLOCK)           
UNION ALL            
SELECT     MessageId, MessageGroupId, AccountId, InmateId, MessageTypeId, DeliveryId, SentDate, MessageStatusId, Status, UpdatedBy, UpdatedDate, AllowReply, ReplyCode, AlertType, OriginalMessageId, LanguageCode, LanguageConfidence, MessageRateId, InstitutionId, ClientIp, OriginatingMessageId, GroupId, MultipleRecipients            
FROM         Messages_28 WITH (INDEX=IX_Messages_28_MsgForTrulincs, NOLOCK)           
UNION ALL            
SELECT     MessageId, MessageGroupId, AccountId, InmateId, MessageTypeId, DeliveryId, SentDate, MessageStatusId, Status, UpdatedBy, UpdatedDate, AllowReply, ReplyCode, AlertType, OriginalMessageId, LanguageCode, LanguageConfidence, MessageRateId, InstitutionId, ClientIp, OriginatingMessageId, GroupId, MultipleRecipients            
FROM         Messages_29 WITH (INDEX=IX_Messages_29_MsgForTrulincs, NOLOCK)           
UNION ALL            
SELECT     MessageId, MessageGroupId, AccountId, InmateId, MessageTypeId, DeliveryId, SentDate, MessageStatusId, Status, UpdatedBy, UpdatedDate, AllowReply, ReplyCode, AlertType, OriginalMessageId, LanguageCode, LanguageConfidence, MessageRateId, InstitutionId, ClientIp, OriginatingMessageId, GroupId, MultipleRecipients            
FROM         Messages_30 WITH (INDEX=IX_Messages_30_MsgForTrulincs, NOLOCK)           
UNION ALL            
SELECT     MessageId, MessageGroupId, AccountId, InmateId, MessageTypeId, DeliveryId, SentDate, MessageStatusId, Status, UpdatedBy, UpdatedDate, AllowReply, ReplyCode, AlertType, OriginalMessageId, LanguageCode, LanguageConfidence, MessageRateId, InstitutionId, ClientIp, OriginatingMessageId, GroupId, MultipleRecipients            
FROM         Messages_31 WITH (INDEX=IX_Messages_31_MsgForTrulincs, NOLOCK)           
UNION ALL            
SELECT     MessageId, MessageGroupId, AccountId, InmateId, MessageTypeId, DeliveryId, SentDate, MessageStatusId, Status, UpdatedBy, UpdatedDate, AllowReply, ReplyCode, AlertType, OriginalMessageId, LanguageCode, LanguageConfidence, MessageRateId, InstitutionId, ClientIp, OriginatingMessageId, GroupId, MultipleRecipients            
FROM         Messages_32 WITH (INDEX=IX_Messages_32_MsgForTrulincs, NOLOCK)           
UNION ALL            
SELECT     MessageId, MessageGroupId, AccountId, InmateId, MessageTypeId, DeliveryId, SentDate, MessageStatusId, Status, UpdatedBy, UpdatedDate, AllowReply, ReplyCode, AlertType, OriginalMessageId, LanguageCode, LanguageConfidence, MessageRateId, InstitutionId, ClientIp, OriginatingMessageId, GroupId, MultipleRecipients            
FROM         Messages_1 WITH (INDEX=IX_Messages_1_MsgForTrulincs, NOLOCK)           
UNION ALL            
SELECT     MessageId, MessageGroupId, AccountId, InmateId, MessageTypeId, DeliveryId, SentDate, MessageStatusId, Status, UpdatedBy, UpdatedDate, AllowReply, ReplyCode, AlertType, OriginalMessageId, LanguageCode, LanguageConfidence, MessageRateId, InstitutionId, ClientIp, OriginatingMessageId, GroupId, MultipleRecipients            
FROM         Messages_2 WITH (INDEX=IX_Messages_2_MsgForTrulincs, NOLOCK)           
UNION ALL            
SELECT     MessageId, MessageGroupId, AccountId, InmateId, MessageTypeId, DeliveryId, SentDate, MessageStatusId, Status, UpdatedBy, UpdatedDate, AllowReply, ReplyCode, AlertType, OriginalMessageId, LanguageCode, LanguageConfidence, MessageRateId, InstitutionId, ClientIp, OriginatingMessageId, GroupId, MultipleRecipients            
FROM         Messages_3 WITH (INDEX=IX_Messages_3_MsgForTrulincs, NOLOCK)           
UNION ALL            
SELECT     MessageId, MessageGroupId, AccountId, InmateId, MessageTypeId, DeliveryId, SentDate, MessageStatusId, Status, UpdatedBy, UpdatedDate, AllowReply, ReplyCode, AlertType, OriginalMessageId, LanguageCode, LanguageConfidence, MessageRateId, InstitutionId, ClientIp, OriginatingMessageId, GroupId, MultipleRecipients            
FROM         Messages_4 WITH (INDEX=IX_Messages_4_MsgForTrulincs, NOLOCK)           
UNION ALL            
SELECT     MessageId, MessageGroupId, AccountId, InmateId, MessageTypeId, DeliveryId, SentDate, MessageStatusId, Status, UpdatedBy, UpdatedDate, AllowReply, ReplyCode, AlertType, OriginalMessageId, LanguageCode, LanguageConfidence, MessageRateId, InstitutionId, ClientIp, OriginatingMessageId, GroupId, MultipleRecipients            
FROM         Messages_5 WITH (INDEX=IX_Messages_5_MsgForTrulincs, NOLOCK)           
UNION ALL            
SELECT     MessageId, MessageGroupId, AccountId, InmateId, MessageTypeId, DeliveryId, SentDate, MessageStatusId, Status, UpdatedBy, UpdatedDate, AllowReply, ReplyCode, AlertType, OriginalMessageId, LanguageCode, LanguageConfidence, MessageRateId, InstitutionId, ClientIp, OriginatingMessageId, GroupId, MultipleRecipients            
FROM         Messages_6 WITH (INDEX=IX_Messages_6_MsgForTrulincs, NOLOCK)           
UNION ALL            
SELECT     MessageId, MessageGroupId, AccountId, InmateId, MessageTypeId, DeliveryId, SentDate, MessageStatusId, Status, UpdatedBy, UpdatedDate, AllowReply, ReplyCode, AlertType, OriginalMessageId, LanguageCode, LanguageConfidence, MessageRateId, InstitutionId, ClientIp, OriginatingMessageId, GroupId, MultipleRecipients            
FROM         Messages_7 WITH (INDEX=IX_Messages_7_MsgForTrulincs, NOLOCK)           
UNION ALL            
SELECT     MessageId, MessageGroupId, AccountId, InmateId, MessageTypeId, DeliveryId, SentDate, MessageStatusId, Status, UpdatedBy, UpdatedDate, AllowReply, ReplyCode, AlertType, OriginalMessageId, LanguageCode, LanguageConfidence, MessageRateId, InstitutionId, ClientIp, OriginatingMessageId, GroupId, MultipleRecipients            
FROM         Messages_8 WITH (INDEX=IX_Messages_8_MsgForTrulincs, NOLOCK)           
UNION ALL            
SELECT     MessageId, MessageGroupId, AccountId, InmateId, MessageTypeId, DeliveryId, SentDate, MessageStatusId, Status, UpdatedBy, UpdatedDate, AllowReply, ReplyCode, AlertType, OriginalMessageId, LanguageCode, LanguageConfidence, MessageRateId, InstitutionId, ClientIp, OriginatingMessageId, GroupId, MultipleRecipients            
FROM         Messages_9 WITH (INDEX=IX_Messages_9_MsgForTrulincs, NOLOCK)           
UNION ALL            
SELECT     MessageId, MessageGroupId, AccountId, InmateId, MessageTypeId, DeliveryId, SentDate, MessageStatusId, Status, UpdatedBy, UpdatedDate, AllowReply, ReplyCode, AlertType, OriginalMessageId, LanguageCode, LanguageConfidence, MessageRateId, InstitutionId, ClientIp, OriginatingMessageId, GroupId, MultipleRecipients            
FROM         Messages_10 WITH (INDEX=IX_Messages_10_MsgForTrulincs, NOLOCK)           
GO



          
          
ALTER VIEW [dbo].[Messages]          
          
AS          
SELECT     MessageId, MessageGroupId, AccountId, InmateId, MessageTypeId, DeliveryId, SentDate, MessageStatusId, Status, UpdatedBy, UpdatedDate, AllowReply, ReplyCode, AlertType, OriginalMessageId, LanguageCode, LanguageConfidence, MessageRateId, InstitutionId, ClientIp, OriginatingMessageId, GroupId, MultipleRecipients          
FROM         Messages_Base      
UNION ALL          
SELECT     MessageId, MessageGroupId, AccountId, InmateId, MessageTypeId, DeliveryId, SentDate, MessageStatusId, Status, UpdatedBy, UpdatedDate, AllowReply, ReplyCode, AlertType, OriginalMessageId, LanguageCode, LanguageConfidence, MessageRateId, InstitutionId, ClientIp, OriginatingMessageId, GroupId, MultipleRecipients          
FROM         Messages_25          
UNION ALL          
SELECT     MessageId, MessageGroupId, AccountId, InmateId, MessageTypeId, DeliveryId, SentDate, MessageStatusId, Status, UpdatedBy, UpdatedDate, AllowReply, ReplyCode, AlertType, OriginalMessageId, LanguageCode, LanguageConfidence, MessageRateId, InstitutionId, ClientIp, OriginatingMessageId, GroupId, MultipleRecipients          
FROM         Messages_26          
UNION ALL          
SELECT     MessageId, MessageGroupId, AccountId, InmateId, MessageTypeId, DeliveryId, SentDate, MessageStatusId, Status, UpdatedBy, UpdatedDate, AllowReply, ReplyCode, AlertType, OriginalMessageId, LanguageCode, LanguageConfidence, MessageRateId, InstitutionId, ClientIp, OriginatingMessageId, GroupId, MultipleRecipients          
FROM         Messages_27          
UNION ALL          
SELECT     MessageId, MessageGroupId, AccountId, InmateId, MessageTypeId, DeliveryId, SentDate, MessageStatusId, Status, UpdatedBy, UpdatedDate, AllowReply, ReplyCode, AlertType, OriginalMessageId, LanguageCode, LanguageConfidence, MessageRateId, InstitutionId, ClientIp, OriginatingMessageId, GroupId, MultipleRecipients          
FROM         Messages_28          
UNION ALL          
SELECT     MessageId, MessageGroupId, AccountId, InmateId, MessageTypeId, DeliveryId, SentDate, MessageStatusId, Status, UpdatedBy, UpdatedDate, AllowReply, ReplyCode, AlertType, OriginalMessageId, LanguageCode, LanguageConfidence, MessageRateId, InstitutionId, ClientIp, OriginatingMessageId, GroupId, MultipleRecipients          
FROM         Messages_29          
UNION ALL          
SELECT     MessageId, MessageGroupId, AccountId, InmateId, MessageTypeId, DeliveryId, SentDate, MessageStatusId, Status, UpdatedBy, UpdatedDate, AllowReply, ReplyCode, AlertType, OriginalMessageId, LanguageCode, LanguageConfidence, MessageRateId, InstitutionId, ClientIp, OriginatingMessageId, GroupId, MultipleRecipients          
FROM         Messages_30          
UNION ALL          
SELECT     MessageId, MessageGroupId, AccountId, InmateId, MessageTypeId, DeliveryId, SentDate, MessageStatusId, Status, UpdatedBy, UpdatedDate, AllowReply, ReplyCode, AlertType, OriginalMessageId, LanguageCode, LanguageConfidence, MessageRateId, InstitutionId, ClientIp, OriginatingMessageId, GroupId, MultipleRecipients          
FROM         Messages_31          
UNION ALL          
SELECT     MessageId, MessageGroupId, AccountId, InmateId, MessageTypeId, DeliveryId, SentDate, MessageStatusId, Status, UpdatedBy, UpdatedDate, AllowReply, ReplyCode, AlertType, OriginalMessageId, LanguageCode, LanguageConfidence, MessageRateId, InstitutionId, ClientIp, OriginatingMessageId, GroupId, MultipleRecipients          
FROM         Messages_32          
UNION ALL          
SELECT     MessageId, MessageGroupId, AccountId, InmateId, MessageTypeId, DeliveryId, SentDate, MessageStatusId, Status, UpdatedBy, UpdatedDate, AllowReply, ReplyCode, AlertType, OriginalMessageId, LanguageCode, LanguageConfidence, MessageRateId, InstitutionId, ClientIp, OriginatingMessageId, GroupId, MultipleRecipients          
FROM         Messages_1          
UNION ALL          
SELECT     MessageId, MessageGroupId, AccountId, InmateId, MessageTypeId, DeliveryId, SentDate, MessageStatusId, Status, UpdatedBy, UpdatedDate, AllowReply, ReplyCode, AlertType, OriginalMessageId, LanguageCode, LanguageConfidence, MessageRateId, InstitutionId, ClientIp, OriginatingMessageId, GroupId, MultipleRecipients          
FROM         Messages_2          
UNION ALL          
SELECT     MessageId, MessageGroupId, AccountId, InmateId, MessageTypeId, DeliveryId, SentDate, MessageStatusId, Status, UpdatedBy, UpdatedDate, AllowReply, ReplyCode, AlertType, OriginalMessageId, LanguageCode, LanguageConfidence, MessageRateId, InstitutionId, ClientIp, OriginatingMessageId, GroupId, MultipleRecipients          
FROM         Messages_3          
UNION ALL          
SELECT     MessageId, MessageGroupId, AccountId, InmateId, MessageTypeId, DeliveryId, SentDate, MessageStatusId, Status, UpdatedBy, UpdatedDate, AllowReply, ReplyCode, AlertType, OriginalMessageId, LanguageCode, LanguageConfidence, MessageRateId, InstitutionId, ClientIp, OriginatingMessageId, GroupId, MultipleRecipients          
FROM         Messages_4          
UNION ALL          
SELECT     MessageId, MessageGroupId, AccountId, InmateId, MessageTypeId, DeliveryId, SentDate, MessageStatusId, Status, UpdatedBy, UpdatedDate, AllowReply, ReplyCode, AlertType, OriginalMessageId, LanguageCode, LanguageConfidence, MessageRateId, InstitutionId, ClientIp, OriginatingMessageId, GroupId, MultipleRecipients          
FROM         Messages_5          
UNION ALL          
SELECT     MessageId, MessageGroupId, AccountId, InmateId, MessageTypeId, DeliveryId, SentDate, MessageStatusId, Status, UpdatedBy, UpdatedDate, AllowReply, ReplyCode, AlertType, OriginalMessageId, LanguageCode, LanguageConfidence, MessageRateId, InstitutionId, ClientIp, OriginatingMessageId, GroupId, MultipleRecipients          
FROM         Messages_6          
UNION ALL          
SELECT     MessageId, MessageGroupId, AccountId, InmateId, MessageTypeId, DeliveryId, SentDate, MessageStatusId, Status, UpdatedBy, UpdatedDate, AllowReply, ReplyCode, AlertType, OriginalMessageId, LanguageCode, LanguageConfidence, MessageRateId, InstitutionId, ClientIp, OriginatingMessageId, GroupId, MultipleRecipients          
FROM         Messages_7          
UNION ALL          
SELECT     MessageId, MessageGroupId, AccountId, InmateId, MessageTypeId, DeliveryId, SentDate, MessageStatusId, Status, UpdatedBy, UpdatedDate, AllowReply, ReplyCode, AlertType, OriginalMessageId, LanguageCode, LanguageConfidence, MessageRateId, InstitutionId, ClientIp, OriginatingMessageId, GroupId, MultipleRecipients          
FROM         Messages_8          
UNION ALL          
SELECT     MessageId, MessageGroupId, AccountId, InmateId, MessageTypeId, DeliveryId, SentDate, MessageStatusId, Status, UpdatedBy, UpdatedDate, AllowReply, ReplyCode, AlertType, OriginalMessageId, LanguageCode, LanguageConfidence, MessageRateId, InstitutionId, ClientIp, OriginatingMessageId, GroupId, MultipleRecipients          
FROM         Messages_9          
UNION ALL          
SELECT     MessageId, MessageGroupId, AccountId, InmateId, MessageTypeId, DeliveryId, SentDate, MessageStatusId, Status, UpdatedBy, UpdatedDate, AllowReply, ReplyCode, AlertType, OriginalMessageId, LanguageCode, LanguageConfidence, MessageRateId, InstitutionId, ClientIp, OriginatingMessageId, GroupId, MultipleRecipients          
FROM         Messages_10          
GO



  
    
            
ALTER VIEW [dbo].[MessageBodies]            
            
AS            
SELECT     MessageId, Subject, MessageBodyGUID, BodyFileExt, MessageBody            
FROM         MessageBodies_Base        
UNION ALL            
SELECT     MessageId, Subject, MessageBodyGUID, BodyFileExt, MessageBody            
FROM         MessageBodies_25            
UNION ALL            
SELECT     MessageId, Subject, MessageBodyGUID, BodyFileExt, MessageBody            
FROM         MessageBodies_26            
UNION ALL            
SELECT     MessageId, Subject, MessageBodyGUID, BodyFileExt, MessageBody            
FROM         MessageBodies_27            
UNION ALL            
SELECT     MessageId, Subject, MessageBodyGUID, BodyFileExt, MessageBody            
FROM         MessageBodies_28            
UNION ALL            
SELECT     MessageId, Subject, MessageBodyGUID, BodyFileExt, MessageBody            
FROM         MessageBodies_29            
UNION ALL            
SELECT     MessageId, Subject, MessageBodyGUID, BodyFileExt, MessageBody            
FROM         MessageBodies_30            
UNION ALL            
SELECT     MessageId, Subject, MessageBodyGUID, BodyFileExt, MessageBody            
FROM         MessageBodies_31            
UNION ALL            
SELECT     MessageId, Subject, MessageBodyGUID, BodyFileExt, MessageBody            
FROM         MessageBodies_32            
UNION ALL            
SELECT     MessageId, Subject, MessageBodyGUID, BodyFileExt, MessageBody            
FROM         MessageBodies_1            
UNION ALL            
SELECT     MessageId, Subject, MessageBodyGUID, BodyFileExt, MessageBody            
FROM         MessageBodies_2            
UNION ALL            
SELECT     MessageId, Subject, MessageBodyGUID, BodyFileExt, MessageBody            
FROM         MessageBodies_3            
UNION ALL            
SELECT     MessageId, Subject, MessageBodyGUID, BodyFileExt, MessageBody            
FROM         MessageBodies_4            
UNION ALL            
SELECT     MessageId, Subject, MessageBodyGUID, BodyFileExt, MessageBody            
FROM         MessageBodies_5            
UNION ALL            
SELECT     MessageId, Subject, MessageBodyGUID, BodyFileExt, MessageBody            
FROM         MessageBodies_6            
UNION ALL            
SELECT     MessageId, Subject, MessageBodyGUID, BodyFileExt, MessageBody            
FROM         MessageBodies_7            
UNION ALL            
SELECT     MessageId, Subject, MessageBodyGUID, BodyFileExt, MessageBody            
FROM         MessageBodies_8            
UNION ALL            
SELECT     MessageId, Subject, MessageBodyGUID, BodyFileExt, MessageBody            
FROM         MessageBodies_9            
UNION ALL            
SELECT     MessageId, Subject, MessageBodyGUID, BodyFileExt, MessageBody            
FROM         MessageBodies_10            
GO

        
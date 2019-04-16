{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -fno-warn-missing-fields #-}
{-# OPTIONS_GHC -fno-warn-missing-signatures #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-----------------------------------------------------------------
-- Autogenerated by Thrift Compiler (0.11.0)                      --
--                                                             --
-- DO NOT EDIT UNLESS YOU ARE SURE YOU KNOW WHAT YOU ARE DOING --
-----------------------------------------------------------------

module LineApi.ChannelApplicationProvidedService_Client(activeBuddySubscriberCount,addOperationForChannel,displayBuddySubscriberCount,findContactByUseridWithoutAbuseBlockForChannel,getAllContactIdsForChannel,getCompactContacts,getContactsForChannel,getDisplayName,getFavoriteMidsForChannel,getFriendMids,getGroupMemberMids,getGroupsForChannel,getIdentityCredential,getJoinedGroupIdsForChannel,getMetaProfile,getMid,getPrimaryClientForChannel,getProfileForChannel,getSimpleChannelContacts,getUserCountryForBilling,getUserCreateTime,getUserIdentities,getUserLanguage,getUserMidsWhoAddedMe,isGroupMember,isInContact,registerChannelCP,removeNotificationStatus,sendMessageForChannel,sendPinCodeOperation,updateProfileAttributeForChannel) where
import qualified Data.IORef as R
import Prelude (($), (.), (>>=), (==), (++))
import qualified Prelude as P
import qualified Control.Exception as X
import qualified Control.Monad as M ( liftM, ap, when )
import Data.Functor ( (<$>) )
import qualified Data.ByteString.Lazy as LBS
import qualified Data.Hashable as H
import qualified Data.Int as I
import qualified Data.Maybe as M (catMaybes)
import qualified Data.Text.Lazy.Encoding as E ( decodeUtf8, encodeUtf8 )
import qualified Data.Text.Lazy as LT
import qualified GHC.Generics as G (Generic)
import qualified Data.Typeable as TY ( Typeable )
import qualified Data.HashMap.Strict as Map
import qualified Data.HashSet as Set
import qualified Data.Vector as Vector
import qualified Test.QuickCheck.Arbitrary as QC ( Arbitrary(..) )
import qualified Test.QuickCheck as QC ( elements )

import qualified Thrift as T
import qualified Thrift.Types as T
import qualified Thrift.Arbitraries as T


import LineApi.Line_Types
import LineApi.ChannelApplicationProvidedService
seqid = R.newIORef 0
activeBuddySubscriberCount (ip,op) = do
  send_activeBuddySubscriberCount op
  recv_activeBuddySubscriberCount ip
send_activeBuddySubscriberCount op = do
  seq <- seqid
  seqn <- R.readIORef seq
  T.writeMessage op ("activeBuddySubscriberCount", T.M_CALL, seqn) $
    write_ActiveBuddySubscriberCount_args op (ActiveBuddySubscriberCount_args{})
recv_activeBuddySubscriberCount ip = do
  T.readMessage ip $ \(fname, mtype, rseqid) -> do
    M.when (mtype == T.M_EXCEPTION) $ do { exn <- T.readAppExn ip ; X.throw exn }
    res <- read_ActiveBuddySubscriberCount_result ip
    P.maybe (P.return ()) X.throw (activeBuddySubscriberCount_result_e res)
    P.return $ activeBuddySubscriberCount_result_success res
addOperationForChannel (ip,op) arg_opType arg_param1 arg_param2 arg_param3 = do
  send_addOperationForChannel op arg_opType arg_param1 arg_param2 arg_param3
  recv_addOperationForChannel ip
send_addOperationForChannel op arg_opType arg_param1 arg_param2 arg_param3 = do
  seq <- seqid
  seqn <- R.readIORef seq
  T.writeMessage op ("addOperationForChannel", T.M_CALL, seqn) $
    write_AddOperationForChannel_args op (AddOperationForChannel_args{addOperationForChannel_args_opType=arg_opType,addOperationForChannel_args_param1=arg_param1,addOperationForChannel_args_param2=arg_param2,addOperationForChannel_args_param3=arg_param3})
recv_addOperationForChannel ip = do
  T.readMessage ip $ \(fname, mtype, rseqid) -> do
    M.when (mtype == T.M_EXCEPTION) $ do { exn <- T.readAppExn ip ; X.throw exn }
    res <- read_AddOperationForChannel_result ip
    P.maybe (P.return ()) X.throw (addOperationForChannel_result_e res)
    P.return ()
displayBuddySubscriberCount (ip,op) = do
  send_displayBuddySubscriberCount op
  recv_displayBuddySubscriberCount ip
send_displayBuddySubscriberCount op = do
  seq <- seqid
  seqn <- R.readIORef seq
  T.writeMessage op ("displayBuddySubscriberCount", T.M_CALL, seqn) $
    write_DisplayBuddySubscriberCount_args op (DisplayBuddySubscriberCount_args{})
recv_displayBuddySubscriberCount ip = do
  T.readMessage ip $ \(fname, mtype, rseqid) -> do
    M.when (mtype == T.M_EXCEPTION) $ do { exn <- T.readAppExn ip ; X.throw exn }
    res <- read_DisplayBuddySubscriberCount_result ip
    P.maybe (P.return ()) X.throw (displayBuddySubscriberCount_result_e res)
    P.return $ displayBuddySubscriberCount_result_success res
findContactByUseridWithoutAbuseBlockForChannel (ip,op) arg_userid = do
  send_findContactByUseridWithoutAbuseBlockForChannel op arg_userid
  recv_findContactByUseridWithoutAbuseBlockForChannel ip
send_findContactByUseridWithoutAbuseBlockForChannel op arg_userid = do
  seq <- seqid
  seqn <- R.readIORef seq
  T.writeMessage op ("findContactByUseridWithoutAbuseBlockForChannel", T.M_CALL, seqn) $
    write_FindContactByUseridWithoutAbuseBlockForChannel_args op (FindContactByUseridWithoutAbuseBlockForChannel_args{findContactByUseridWithoutAbuseBlockForChannel_args_userid=arg_userid})
recv_findContactByUseridWithoutAbuseBlockForChannel ip = do
  T.readMessage ip $ \(fname, mtype, rseqid) -> do
    M.when (mtype == T.M_EXCEPTION) $ do { exn <- T.readAppExn ip ; X.throw exn }
    res <- read_FindContactByUseridWithoutAbuseBlockForChannel_result ip
    P.maybe (P.return ()) X.throw (findContactByUseridWithoutAbuseBlockForChannel_result_e res)
    P.return $ findContactByUseridWithoutAbuseBlockForChannel_result_success res
getAllContactIdsForChannel (ip,op) = do
  send_getAllContactIdsForChannel op
  recv_getAllContactIdsForChannel ip
send_getAllContactIdsForChannel op = do
  seq <- seqid
  seqn <- R.readIORef seq
  T.writeMessage op ("getAllContactIdsForChannel", T.M_CALL, seqn) $
    write_GetAllContactIdsForChannel_args op (GetAllContactIdsForChannel_args{})
recv_getAllContactIdsForChannel ip = do
  T.readMessage ip $ \(fname, mtype, rseqid) -> do
    M.when (mtype == T.M_EXCEPTION) $ do { exn <- T.readAppExn ip ; X.throw exn }
    res <- read_GetAllContactIdsForChannel_result ip
    P.maybe (P.return ()) X.throw (getAllContactIdsForChannel_result_e res)
    P.return $ getAllContactIdsForChannel_result_success res
getCompactContacts (ip,op) arg_lastModifiedTimestamp = do
  send_getCompactContacts op arg_lastModifiedTimestamp
  recv_getCompactContacts ip
send_getCompactContacts op arg_lastModifiedTimestamp = do
  seq <- seqid
  seqn <- R.readIORef seq
  T.writeMessage op ("getCompactContacts", T.M_CALL, seqn) $
    write_GetCompactContacts_args op (GetCompactContacts_args{getCompactContacts_args_lastModifiedTimestamp=arg_lastModifiedTimestamp})
recv_getCompactContacts ip = do
  T.readMessage ip $ \(fname, mtype, rseqid) -> do
    M.when (mtype == T.M_EXCEPTION) $ do { exn <- T.readAppExn ip ; X.throw exn }
    res <- read_GetCompactContacts_result ip
    P.maybe (P.return ()) X.throw (getCompactContacts_result_e res)
    P.return $ getCompactContacts_result_success res
getContactsForChannel (ip,op) arg_ids = do
  send_getContactsForChannel op arg_ids
  recv_getContactsForChannel ip
send_getContactsForChannel op arg_ids = do
  seq <- seqid
  seqn <- R.readIORef seq
  T.writeMessage op ("getContactsForChannel", T.M_CALL, seqn) $
    write_GetContactsForChannel_args op (GetContactsForChannel_args{getContactsForChannel_args_ids=arg_ids})
recv_getContactsForChannel ip = do
  T.readMessage ip $ \(fname, mtype, rseqid) -> do
    M.when (mtype == T.M_EXCEPTION) $ do { exn <- T.readAppExn ip ; X.throw exn }
    res <- read_GetContactsForChannel_result ip
    P.maybe (P.return ()) X.throw (getContactsForChannel_result_e res)
    P.return $ getContactsForChannel_result_success res
getDisplayName (ip,op) arg_mid = do
  send_getDisplayName op arg_mid
  recv_getDisplayName ip
send_getDisplayName op arg_mid = do
  seq <- seqid
  seqn <- R.readIORef seq
  T.writeMessage op ("getDisplayName", T.M_CALL, seqn) $
    write_GetDisplayName_args op (GetDisplayName_args{getDisplayName_args_mid=arg_mid})
recv_getDisplayName ip = do
  T.readMessage ip $ \(fname, mtype, rseqid) -> do
    M.when (mtype == T.M_EXCEPTION) $ do { exn <- T.readAppExn ip ; X.throw exn }
    res <- read_GetDisplayName_result ip
    P.maybe (P.return ()) X.throw (getDisplayName_result_e res)
    P.return $ getDisplayName_result_success res
getFavoriteMidsForChannel (ip,op) = do
  send_getFavoriteMidsForChannel op
  recv_getFavoriteMidsForChannel ip
send_getFavoriteMidsForChannel op = do
  seq <- seqid
  seqn <- R.readIORef seq
  T.writeMessage op ("getFavoriteMidsForChannel", T.M_CALL, seqn) $
    write_GetFavoriteMidsForChannel_args op (GetFavoriteMidsForChannel_args{})
recv_getFavoriteMidsForChannel ip = do
  T.readMessage ip $ \(fname, mtype, rseqid) -> do
    M.when (mtype == T.M_EXCEPTION) $ do { exn <- T.readAppExn ip ; X.throw exn }
    res <- read_GetFavoriteMidsForChannel_result ip
    P.maybe (P.return ()) X.throw (getFavoriteMidsForChannel_result_e res)
    P.return $ getFavoriteMidsForChannel_result_success res
getFriendMids (ip,op) = do
  send_getFriendMids op
  recv_getFriendMids ip
send_getFriendMids op = do
  seq <- seqid
  seqn <- R.readIORef seq
  T.writeMessage op ("getFriendMids", T.M_CALL, seqn) $
    write_GetFriendMids_args op (GetFriendMids_args{})
recv_getFriendMids ip = do
  T.readMessage ip $ \(fname, mtype, rseqid) -> do
    M.when (mtype == T.M_EXCEPTION) $ do { exn <- T.readAppExn ip ; X.throw exn }
    res <- read_GetFriendMids_result ip
    P.maybe (P.return ()) X.throw (getFriendMids_result_e res)
    P.return $ getFriendMids_result_success res
getGroupMemberMids (ip,op) arg_groupId = do
  send_getGroupMemberMids op arg_groupId
  recv_getGroupMemberMids ip
send_getGroupMemberMids op arg_groupId = do
  seq <- seqid
  seqn <- R.readIORef seq
  T.writeMessage op ("getGroupMemberMids", T.M_CALL, seqn) $
    write_GetGroupMemberMids_args op (GetGroupMemberMids_args{getGroupMemberMids_args_groupId=arg_groupId})
recv_getGroupMemberMids ip = do
  T.readMessage ip $ \(fname, mtype, rseqid) -> do
    M.when (mtype == T.M_EXCEPTION) $ do { exn <- T.readAppExn ip ; X.throw exn }
    res <- read_GetGroupMemberMids_result ip
    P.maybe (P.return ()) X.throw (getGroupMemberMids_result_e res)
    P.return $ getGroupMemberMids_result_success res
getGroupsForChannel (ip,op) arg_groupIds = do
  send_getGroupsForChannel op arg_groupIds
  recv_getGroupsForChannel ip
send_getGroupsForChannel op arg_groupIds = do
  seq <- seqid
  seqn <- R.readIORef seq
  T.writeMessage op ("getGroupsForChannel", T.M_CALL, seqn) $
    write_GetGroupsForChannel_args op (GetGroupsForChannel_args{getGroupsForChannel_args_groupIds=arg_groupIds})
recv_getGroupsForChannel ip = do
  T.readMessage ip $ \(fname, mtype, rseqid) -> do
    M.when (mtype == T.M_EXCEPTION) $ do { exn <- T.readAppExn ip ; X.throw exn }
    res <- read_GetGroupsForChannel_result ip
    P.maybe (P.return ()) X.throw (getGroupsForChannel_result_e res)
    P.return $ getGroupsForChannel_result_success res
getIdentityCredential (ip,op) = do
  send_getIdentityCredential op
  recv_getIdentityCredential ip
send_getIdentityCredential op = do
  seq <- seqid
  seqn <- R.readIORef seq
  T.writeMessage op ("getIdentityCredential", T.M_CALL, seqn) $
    write_GetIdentityCredential_args op (GetIdentityCredential_args{})
recv_getIdentityCredential ip = do
  T.readMessage ip $ \(fname, mtype, rseqid) -> do
    M.when (mtype == T.M_EXCEPTION) $ do { exn <- T.readAppExn ip ; X.throw exn }
    res <- read_GetIdentityCredential_result ip
    P.maybe (P.return ()) X.throw (getIdentityCredential_result_e res)
    P.return $ getIdentityCredential_result_success res
getJoinedGroupIdsForChannel (ip,op) = do
  send_getJoinedGroupIdsForChannel op
  recv_getJoinedGroupIdsForChannel ip
send_getJoinedGroupIdsForChannel op = do
  seq <- seqid
  seqn <- R.readIORef seq
  T.writeMessage op ("getJoinedGroupIdsForChannel", T.M_CALL, seqn) $
    write_GetJoinedGroupIdsForChannel_args op (GetJoinedGroupIdsForChannel_args{})
recv_getJoinedGroupIdsForChannel ip = do
  T.readMessage ip $ \(fname, mtype, rseqid) -> do
    M.when (mtype == T.M_EXCEPTION) $ do { exn <- T.readAppExn ip ; X.throw exn }
    res <- read_GetJoinedGroupIdsForChannel_result ip
    P.maybe (P.return ()) X.throw (getJoinedGroupIdsForChannel_result_e res)
    P.return $ getJoinedGroupIdsForChannel_result_success res
getMetaProfile (ip,op) = do
  send_getMetaProfile op
  recv_getMetaProfile ip
send_getMetaProfile op = do
  seq <- seqid
  seqn <- R.readIORef seq
  T.writeMessage op ("getMetaProfile", T.M_CALL, seqn) $
    write_GetMetaProfile_args op (GetMetaProfile_args{})
recv_getMetaProfile ip = do
  T.readMessage ip $ \(fname, mtype, rseqid) -> do
    M.when (mtype == T.M_EXCEPTION) $ do { exn <- T.readAppExn ip ; X.throw exn }
    res <- read_GetMetaProfile_result ip
    P.maybe (P.return ()) X.throw (getMetaProfile_result_e res)
    P.return $ getMetaProfile_result_success res
getMid (ip,op) = do
  send_getMid op
  recv_getMid ip
send_getMid op = do
  seq <- seqid
  seqn <- R.readIORef seq
  T.writeMessage op ("getMid", T.M_CALL, seqn) $
    write_GetMid_args op (GetMid_args{})
recv_getMid ip = do
  T.readMessage ip $ \(fname, mtype, rseqid) -> do
    M.when (mtype == T.M_EXCEPTION) $ do { exn <- T.readAppExn ip ; X.throw exn }
    res <- read_GetMid_result ip
    P.maybe (P.return ()) X.throw (getMid_result_e res)
    P.return $ getMid_result_success res
getPrimaryClientForChannel (ip,op) = do
  send_getPrimaryClientForChannel op
  recv_getPrimaryClientForChannel ip
send_getPrimaryClientForChannel op = do
  seq <- seqid
  seqn <- R.readIORef seq
  T.writeMessage op ("getPrimaryClientForChannel", T.M_CALL, seqn) $
    write_GetPrimaryClientForChannel_args op (GetPrimaryClientForChannel_args{})
recv_getPrimaryClientForChannel ip = do
  T.readMessage ip $ \(fname, mtype, rseqid) -> do
    M.when (mtype == T.M_EXCEPTION) $ do { exn <- T.readAppExn ip ; X.throw exn }
    res <- read_GetPrimaryClientForChannel_result ip
    P.maybe (P.return ()) X.throw (getPrimaryClientForChannel_result_e res)
    P.return $ getPrimaryClientForChannel_result_success res
getProfileForChannel (ip,op) = do
  send_getProfileForChannel op
  recv_getProfileForChannel ip
send_getProfileForChannel op = do
  seq <- seqid
  seqn <- R.readIORef seq
  T.writeMessage op ("getProfileForChannel", T.M_CALL, seqn) $
    write_GetProfileForChannel_args op (GetProfileForChannel_args{})
recv_getProfileForChannel ip = do
  T.readMessage ip $ \(fname, mtype, rseqid) -> do
    M.when (mtype == T.M_EXCEPTION) $ do { exn <- T.readAppExn ip ; X.throw exn }
    res <- read_GetProfileForChannel_result ip
    P.maybe (P.return ()) X.throw (getProfileForChannel_result_e res)
    P.return $ getProfileForChannel_result_success res
getSimpleChannelContacts (ip,op) arg_ids = do
  send_getSimpleChannelContacts op arg_ids
  recv_getSimpleChannelContacts ip
send_getSimpleChannelContacts op arg_ids = do
  seq <- seqid
  seqn <- R.readIORef seq
  T.writeMessage op ("getSimpleChannelContacts", T.M_CALL, seqn) $
    write_GetSimpleChannelContacts_args op (GetSimpleChannelContacts_args{getSimpleChannelContacts_args_ids=arg_ids})
recv_getSimpleChannelContacts ip = do
  T.readMessage ip $ \(fname, mtype, rseqid) -> do
    M.when (mtype == T.M_EXCEPTION) $ do { exn <- T.readAppExn ip ; X.throw exn }
    res <- read_GetSimpleChannelContacts_result ip
    P.maybe (P.return ()) X.throw (getSimpleChannelContacts_result_e res)
    P.return $ getSimpleChannelContacts_result_success res
getUserCountryForBilling (ip,op) arg_country arg_remoteIp = do
  send_getUserCountryForBilling op arg_country arg_remoteIp
  recv_getUserCountryForBilling ip
send_getUserCountryForBilling op arg_country arg_remoteIp = do
  seq <- seqid
  seqn <- R.readIORef seq
  T.writeMessage op ("getUserCountryForBilling", T.M_CALL, seqn) $
    write_GetUserCountryForBilling_args op (GetUserCountryForBilling_args{getUserCountryForBilling_args_country=arg_country,getUserCountryForBilling_args_remoteIp=arg_remoteIp})
recv_getUserCountryForBilling ip = do
  T.readMessage ip $ \(fname, mtype, rseqid) -> do
    M.when (mtype == T.M_EXCEPTION) $ do { exn <- T.readAppExn ip ; X.throw exn }
    res <- read_GetUserCountryForBilling_result ip
    P.maybe (P.return ()) X.throw (getUserCountryForBilling_result_e res)
    P.return $ getUserCountryForBilling_result_success res
getUserCreateTime (ip,op) = do
  send_getUserCreateTime op
  recv_getUserCreateTime ip
send_getUserCreateTime op = do
  seq <- seqid
  seqn <- R.readIORef seq
  T.writeMessage op ("getUserCreateTime", T.M_CALL, seqn) $
    write_GetUserCreateTime_args op (GetUserCreateTime_args{})
recv_getUserCreateTime ip = do
  T.readMessage ip $ \(fname, mtype, rseqid) -> do
    M.when (mtype == T.M_EXCEPTION) $ do { exn <- T.readAppExn ip ; X.throw exn }
    res <- read_GetUserCreateTime_result ip
    P.maybe (P.return ()) X.throw (getUserCreateTime_result_e res)
    P.return $ getUserCreateTime_result_success res
getUserIdentities (ip,op) = do
  send_getUserIdentities op
  recv_getUserIdentities ip
send_getUserIdentities op = do
  seq <- seqid
  seqn <- R.readIORef seq
  T.writeMessage op ("getUserIdentities", T.M_CALL, seqn) $
    write_GetUserIdentities_args op (GetUserIdentities_args{})
recv_getUserIdentities ip = do
  T.readMessage ip $ \(fname, mtype, rseqid) -> do
    M.when (mtype == T.M_EXCEPTION) $ do { exn <- T.readAppExn ip ; X.throw exn }
    res <- read_GetUserIdentities_result ip
    P.maybe (P.return ()) X.throw (getUserIdentities_result_e res)
    P.return $ getUserIdentities_result_success res
getUserLanguage (ip,op) = do
  send_getUserLanguage op
  recv_getUserLanguage ip
send_getUserLanguage op = do
  seq <- seqid
  seqn <- R.readIORef seq
  T.writeMessage op ("getUserLanguage", T.M_CALL, seqn) $
    write_GetUserLanguage_args op (GetUserLanguage_args{})
recv_getUserLanguage ip = do
  T.readMessage ip $ \(fname, mtype, rseqid) -> do
    M.when (mtype == T.M_EXCEPTION) $ do { exn <- T.readAppExn ip ; X.throw exn }
    res <- read_GetUserLanguage_result ip
    P.maybe (P.return ()) X.throw (getUserLanguage_result_e res)
    P.return $ getUserLanguage_result_success res
getUserMidsWhoAddedMe (ip,op) = do
  send_getUserMidsWhoAddedMe op
  recv_getUserMidsWhoAddedMe ip
send_getUserMidsWhoAddedMe op = do
  seq <- seqid
  seqn <- R.readIORef seq
  T.writeMessage op ("getUserMidsWhoAddedMe", T.M_CALL, seqn) $
    write_GetUserMidsWhoAddedMe_args op (GetUserMidsWhoAddedMe_args{})
recv_getUserMidsWhoAddedMe ip = do
  T.readMessage ip $ \(fname, mtype, rseqid) -> do
    M.when (mtype == T.M_EXCEPTION) $ do { exn <- T.readAppExn ip ; X.throw exn }
    res <- read_GetUserMidsWhoAddedMe_result ip
    P.maybe (P.return ()) X.throw (getUserMidsWhoAddedMe_result_e res)
    P.return $ getUserMidsWhoAddedMe_result_success res
isGroupMember (ip,op) arg_groupId = do
  send_isGroupMember op arg_groupId
  recv_isGroupMember ip
send_isGroupMember op arg_groupId = do
  seq <- seqid
  seqn <- R.readIORef seq
  T.writeMessage op ("isGroupMember", T.M_CALL, seqn) $
    write_IsGroupMember_args op (IsGroupMember_args{isGroupMember_args_groupId=arg_groupId})
recv_isGroupMember ip = do
  T.readMessage ip $ \(fname, mtype, rseqid) -> do
    M.when (mtype == T.M_EXCEPTION) $ do { exn <- T.readAppExn ip ; X.throw exn }
    res <- read_IsGroupMember_result ip
    P.maybe (P.return ()) X.throw (isGroupMember_result_e res)
    P.return $ isGroupMember_result_success res
isInContact (ip,op) arg_mid = do
  send_isInContact op arg_mid
  recv_isInContact ip
send_isInContact op arg_mid = do
  seq <- seqid
  seqn <- R.readIORef seq
  T.writeMessage op ("isInContact", T.M_CALL, seqn) $
    write_IsInContact_args op (IsInContact_args{isInContact_args_mid=arg_mid})
recv_isInContact ip = do
  T.readMessage ip $ \(fname, mtype, rseqid) -> do
    M.when (mtype == T.M_EXCEPTION) $ do { exn <- T.readAppExn ip ; X.throw exn }
    res <- read_IsInContact_result ip
    P.maybe (P.return ()) X.throw (isInContact_result_e res)
    P.return $ isInContact_result_success res
registerChannelCP (ip,op) arg_cpId arg_registerPassword = do
  send_registerChannelCP op arg_cpId arg_registerPassword
  recv_registerChannelCP ip
send_registerChannelCP op arg_cpId arg_registerPassword = do
  seq <- seqid
  seqn <- R.readIORef seq
  T.writeMessage op ("registerChannelCP", T.M_CALL, seqn) $
    write_RegisterChannelCP_args op (RegisterChannelCP_args{registerChannelCP_args_cpId=arg_cpId,registerChannelCP_args_registerPassword=arg_registerPassword})
recv_registerChannelCP ip = do
  T.readMessage ip $ \(fname, mtype, rseqid) -> do
    M.when (mtype == T.M_EXCEPTION) $ do { exn <- T.readAppExn ip ; X.throw exn }
    res <- read_RegisterChannelCP_result ip
    P.maybe (P.return ()) X.throw (registerChannelCP_result_e res)
    P.return $ registerChannelCP_result_success res
removeNotificationStatus (ip,op) arg_notificationStatus = do
  send_removeNotificationStatus op arg_notificationStatus
  recv_removeNotificationStatus ip
send_removeNotificationStatus op arg_notificationStatus = do
  seq <- seqid
  seqn <- R.readIORef seq
  T.writeMessage op ("removeNotificationStatus", T.M_CALL, seqn) $
    write_RemoveNotificationStatus_args op (RemoveNotificationStatus_args{removeNotificationStatus_args_notificationStatus=arg_notificationStatus})
recv_removeNotificationStatus ip = do
  T.readMessage ip $ \(fname, mtype, rseqid) -> do
    M.when (mtype == T.M_EXCEPTION) $ do { exn <- T.readAppExn ip ; X.throw exn }
    res <- read_RemoveNotificationStatus_result ip
    P.maybe (P.return ()) X.throw (removeNotificationStatus_result_e res)
    P.return ()
sendMessageForChannel (ip,op) arg_message = do
  send_sendMessageForChannel op arg_message
  recv_sendMessageForChannel ip
send_sendMessageForChannel op arg_message = do
  seq <- seqid
  seqn <- R.readIORef seq
  T.writeMessage op ("sendMessageForChannel", T.M_CALL, seqn) $
    write_SendMessageForChannel_args op (SendMessageForChannel_args{sendMessageForChannel_args_message=arg_message})
recv_sendMessageForChannel ip = do
  T.readMessage ip $ \(fname, mtype, rseqid) -> do
    M.when (mtype == T.M_EXCEPTION) $ do { exn <- T.readAppExn ip ; X.throw exn }
    res <- read_SendMessageForChannel_result ip
    P.maybe (P.return ()) X.throw (sendMessageForChannel_result_e res)
    P.return $ sendMessageForChannel_result_success res
sendPinCodeOperation (ip,op) arg_verifier = do
  send_sendPinCodeOperation op arg_verifier
  recv_sendPinCodeOperation ip
send_sendPinCodeOperation op arg_verifier = do
  seq <- seqid
  seqn <- R.readIORef seq
  T.writeMessage op ("sendPinCodeOperation", T.M_CALL, seqn) $
    write_SendPinCodeOperation_args op (SendPinCodeOperation_args{sendPinCodeOperation_args_verifier=arg_verifier})
recv_sendPinCodeOperation ip = do
  T.readMessage ip $ \(fname, mtype, rseqid) -> do
    M.when (mtype == T.M_EXCEPTION) $ do { exn <- T.readAppExn ip ; X.throw exn }
    res <- read_SendPinCodeOperation_result ip
    P.maybe (P.return ()) X.throw (sendPinCodeOperation_result_e res)
    P.return ()
updateProfileAttributeForChannel (ip,op) arg_profileAttribute arg_value = do
  send_updateProfileAttributeForChannel op arg_profileAttribute arg_value
  recv_updateProfileAttributeForChannel ip
send_updateProfileAttributeForChannel op arg_profileAttribute arg_value = do
  seq <- seqid
  seqn <- R.readIORef seq
  T.writeMessage op ("updateProfileAttributeForChannel", T.M_CALL, seqn) $
    write_UpdateProfileAttributeForChannel_args op (UpdateProfileAttributeForChannel_args{updateProfileAttributeForChannel_args_profileAttribute=arg_profileAttribute,updateProfileAttributeForChannel_args_value=arg_value})
recv_updateProfileAttributeForChannel ip = do
  T.readMessage ip $ \(fname, mtype, rseqid) -> do
    M.when (mtype == T.M_EXCEPTION) $ do { exn <- T.readAppExn ip ; X.throw exn }
    res <- read_UpdateProfileAttributeForChannel_result ip
    P.maybe (P.return ()) X.throw (updateProfileAttributeForChannel_result_e res)
    P.return ()

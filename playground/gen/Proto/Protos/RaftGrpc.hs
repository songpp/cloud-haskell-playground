{- This file was auto-generated from protos/raft-grpc.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.RaftGrpc (
        RaftService(..), AppendEntriesPipelineResponse(),
        AppendEntriesRequest(), AppendEntriesResponse(),
        InstallSnapshotRequest(), InstallSnapshotResponse(), LogEntry(),
        LogEntryType(..), LogEntryType(), LogEntryType'UnrecognizedValue,
        PeerNameContainer(), RequestVoteRequest(), RequestVoteResponse()
    ) where
import qualified Data.ProtoLens.Runtime.Control.DeepSeq as Control.DeepSeq
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Prism as Data.ProtoLens.Prism
import qualified Data.ProtoLens.Runtime.Prelude as Prelude
import qualified Data.ProtoLens.Runtime.Data.Int as Data.Int
import qualified Data.ProtoLens.Runtime.Data.Monoid as Data.Monoid
import qualified Data.ProtoLens.Runtime.Data.Word as Data.Word
import qualified Data.ProtoLens.Runtime.Data.ProtoLens as Data.ProtoLens
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Bytes as Data.ProtoLens.Encoding.Bytes
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Growing as Data.ProtoLens.Encoding.Growing
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Parser.Unsafe as Data.ProtoLens.Encoding.Parser.Unsafe
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Wire as Data.ProtoLens.Encoding.Wire
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Field as Data.ProtoLens.Field
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Message.Enum as Data.ProtoLens.Message.Enum
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Service.Types as Data.ProtoLens.Service.Types
import qualified Data.ProtoLens.Runtime.Lens.Family2 as Lens.Family2
import qualified Data.ProtoLens.Runtime.Lens.Family2.Unchecked as Lens.Family2.Unchecked
import qualified Data.ProtoLens.Runtime.Data.Text as Data.Text
import qualified Data.ProtoLens.Runtime.Data.Map as Data.Map
import qualified Data.ProtoLens.Runtime.Data.ByteString as Data.ByteString
import qualified Data.ProtoLens.Runtime.Data.ByteString.Char8 as Data.ByteString.Char8
import qualified Data.ProtoLens.Runtime.Data.Text.Encoding as Data.Text.Encoding
import qualified Data.ProtoLens.Runtime.Data.Vector as Data.Vector
import qualified Data.ProtoLens.Runtime.Data.Vector.Generic as Data.Vector.Generic
import qualified Data.ProtoLens.Runtime.Data.Vector.Unboxed as Data.Vector.Unboxed
import qualified Data.ProtoLens.Runtime.Text.Read as Text.Read
{- | Fields :
     
         * 'Proto.Protos.RaftGrpc_Fields.error' @:: Lens' AppendEntriesPipelineResponse Data.Text.Text@
         * 'Proto.Protos.RaftGrpc_Fields.response' @:: Lens' AppendEntriesPipelineResponse AppendEntriesResponse@
         * 'Proto.Protos.RaftGrpc_Fields.maybe'response' @:: Lens' AppendEntriesPipelineResponse (Prelude.Maybe AppendEntriesResponse)@ -}
data AppendEntriesPipelineResponse
  = AppendEntriesPipelineResponse'_constructor {_AppendEntriesPipelineResponse'error :: !Data.Text.Text,
                                                _AppendEntriesPipelineResponse'response :: !(Prelude.Maybe AppendEntriesResponse),
                                                _AppendEntriesPipelineResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AppendEntriesPipelineResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField AppendEntriesPipelineResponse "error" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AppendEntriesPipelineResponse'error
           (\ x__ y__ -> x__ {_AppendEntriesPipelineResponse'error = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AppendEntriesPipelineResponse "response" AppendEntriesResponse where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AppendEntriesPipelineResponse'response
           (\ x__ y__ -> x__ {_AppendEntriesPipelineResponse'response = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField AppendEntriesPipelineResponse "maybe'response" (Prelude.Maybe AppendEntriesResponse) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AppendEntriesPipelineResponse'response
           (\ x__ y__ -> x__ {_AppendEntriesPipelineResponse'response = y__}))
        Prelude.id
instance Data.ProtoLens.Message AppendEntriesPipelineResponse where
  messageName _
    = Data.Text.pack "raftgrpc.AppendEntriesPipelineResponse"
  fieldsByTag
    = let
        error__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "error"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"error")) ::
              Data.ProtoLens.FieldDescriptor AppendEntriesPipelineResponse
        response__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "response"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor AppendEntriesResponse)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'response")) ::
              Data.ProtoLens.FieldDescriptor AppendEntriesPipelineResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, error__field_descriptor),
           (Data.ProtoLens.Tag 2, response__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _AppendEntriesPipelineResponse'_unknownFields
        (\ x__ y__
           -> x__ {_AppendEntriesPipelineResponse'_unknownFields = y__})
  defMessage
    = AppendEntriesPipelineResponse'_constructor
        {_AppendEntriesPipelineResponse'error = Data.ProtoLens.fieldDefault,
         _AppendEntriesPipelineResponse'response = Prelude.Nothing,
         _AppendEntriesPipelineResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          AppendEntriesPipelineResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser AppendEntriesPipelineResponse
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "error"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"error") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "response"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"response") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "AppendEntriesPipelineResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"error") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((Prelude..)
                         (\ bs
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Data.Text.Encoding.encodeUtf8
                         _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'response") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage
                             _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData AppendEntriesPipelineResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_AppendEntriesPipelineResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_AppendEntriesPipelineResponse'error x__)
                (Control.DeepSeq.deepseq
                   (_AppendEntriesPipelineResponse'response x__) ()))
{- | Fields :
     
         * 'Proto.Protos.RaftGrpc_Fields.term' @:: Lens' AppendEntriesRequest Data.Word.Word64@
         * 'Proto.Protos.RaftGrpc_Fields.leader' @:: Lens' AppendEntriesRequest Data.ByteString.ByteString@
         * 'Proto.Protos.RaftGrpc_Fields.prevLogEntry' @:: Lens' AppendEntriesRequest Data.Word.Word64@
         * 'Proto.Protos.RaftGrpc_Fields.prevLogTerm' @:: Lens' AppendEntriesRequest Data.Word.Word64@
         * 'Proto.Protos.RaftGrpc_Fields.entries' @:: Lens' AppendEntriesRequest [LogEntry]@
         * 'Proto.Protos.RaftGrpc_Fields.vec'entries' @:: Lens' AppendEntriesRequest (Data.Vector.Vector LogEntry)@
         * 'Proto.Protos.RaftGrpc_Fields.leaderCommitIndex' @:: Lens' AppendEntriesRequest Data.Word.Word64@ -}
data AppendEntriesRequest
  = AppendEntriesRequest'_constructor {_AppendEntriesRequest'term :: !Data.Word.Word64,
                                       _AppendEntriesRequest'leader :: !Data.ByteString.ByteString,
                                       _AppendEntriesRequest'prevLogEntry :: !Data.Word.Word64,
                                       _AppendEntriesRequest'prevLogTerm :: !Data.Word.Word64,
                                       _AppendEntriesRequest'entries :: !(Data.Vector.Vector LogEntry),
                                       _AppendEntriesRequest'leaderCommitIndex :: !Data.Word.Word64,
                                       _AppendEntriesRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AppendEntriesRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField AppendEntriesRequest "term" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AppendEntriesRequest'term
           (\ x__ y__ -> x__ {_AppendEntriesRequest'term = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AppendEntriesRequest "leader" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AppendEntriesRequest'leader
           (\ x__ y__ -> x__ {_AppendEntriesRequest'leader = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AppendEntriesRequest "prevLogEntry" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AppendEntriesRequest'prevLogEntry
           (\ x__ y__ -> x__ {_AppendEntriesRequest'prevLogEntry = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AppendEntriesRequest "prevLogTerm" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AppendEntriesRequest'prevLogTerm
           (\ x__ y__ -> x__ {_AppendEntriesRequest'prevLogTerm = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AppendEntriesRequest "entries" [LogEntry] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AppendEntriesRequest'entries
           (\ x__ y__ -> x__ {_AppendEntriesRequest'entries = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField AppendEntriesRequest "vec'entries" (Data.Vector.Vector LogEntry) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AppendEntriesRequest'entries
           (\ x__ y__ -> x__ {_AppendEntriesRequest'entries = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AppendEntriesRequest "leaderCommitIndex" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AppendEntriesRequest'leaderCommitIndex
           (\ x__ y__ -> x__ {_AppendEntriesRequest'leaderCommitIndex = y__}))
        Prelude.id
instance Data.ProtoLens.Message AppendEntriesRequest where
  messageName _ = Data.Text.pack "raftgrpc.AppendEntriesRequest"
  fieldsByTag
    = let
        term__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "term"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"term")) ::
              Data.ProtoLens.FieldDescriptor AppendEntriesRequest
        leader__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "leader"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"leader")) ::
              Data.ProtoLens.FieldDescriptor AppendEntriesRequest
        prevLogEntry__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "prev_log_entry"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"prevLogEntry")) ::
              Data.ProtoLens.FieldDescriptor AppendEntriesRequest
        prevLogTerm__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "prev_log_term"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"prevLogTerm")) ::
              Data.ProtoLens.FieldDescriptor AppendEntriesRequest
        entries__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "entries"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor LogEntry)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"entries")) ::
              Data.ProtoLens.FieldDescriptor AppendEntriesRequest
        leaderCommitIndex__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "leader_commit_index"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"leaderCommitIndex")) ::
              Data.ProtoLens.FieldDescriptor AppendEntriesRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, term__field_descriptor),
           (Data.ProtoLens.Tag 2, leader__field_descriptor),
           (Data.ProtoLens.Tag 3, prevLogEntry__field_descriptor),
           (Data.ProtoLens.Tag 4, prevLogTerm__field_descriptor),
           (Data.ProtoLens.Tag 5, entries__field_descriptor),
           (Data.ProtoLens.Tag 6, leaderCommitIndex__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _AppendEntriesRequest'_unknownFields
        (\ x__ y__ -> x__ {_AppendEntriesRequest'_unknownFields = y__})
  defMessage
    = AppendEntriesRequest'_constructor
        {_AppendEntriesRequest'term = Data.ProtoLens.fieldDefault,
         _AppendEntriesRequest'leader = Data.ProtoLens.fieldDefault,
         _AppendEntriesRequest'prevLogEntry = Data.ProtoLens.fieldDefault,
         _AppendEntriesRequest'prevLogTerm = Data.ProtoLens.fieldDefault,
         _AppendEntriesRequest'entries = Data.Vector.Generic.empty,
         _AppendEntriesRequest'leaderCommitIndex = Data.ProtoLens.fieldDefault,
         _AppendEntriesRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          AppendEntriesRequest
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld LogEntry
             -> Data.ProtoLens.Encoding.Bytes.Parser AppendEntriesRequest
        loop x mutable'entries
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'entries <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                             mutable'entries)
                      (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields
                           (\ !t -> Prelude.reverse t)
                           (Lens.Family2.set
                              (Data.ProtoLens.Field.field @"vec'entries") frozen'entries x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "term"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"term") y x)
                                  mutable'entries
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "leader"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"leader") y x)
                                  mutable'entries
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "prev_log_entry"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"prevLogEntry") y x)
                                  mutable'entries
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "prev_log_term"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"prevLogTerm") y x)
                                  mutable'entries
                        42
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "entries"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'entries y)
                                loop x v
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "leader_commit_index"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"leaderCommitIndex") y x)
                                  mutable'entries
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'entries
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'entries <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                   Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'entries)
          "AppendEntriesRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"term") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"leader") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                         ((\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            _v))
                ((Data.Monoid.<>)
                   (let
                      _v
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"prevLogEntry") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   ((Data.Monoid.<>)
                      (let
                         _v
                           = Lens.Family2.view (Data.ProtoLens.Field.field @"prevLogTerm") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      ((Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                            (\ _v
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                                    ((Prelude..)
                                       (\ bs
                                          -> (Data.Monoid.<>)
                                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                  (Prelude.fromIntegral
                                                     (Data.ByteString.length bs)))
                                               (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                       Data.ProtoLens.encodeMessage
                                       _v))
                            (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'entries") _x))
                         ((Data.Monoid.<>)
                            (let
                               _v
                                 = Lens.Family2.view
                                     (Data.ProtoLens.Field.field @"leaderCommitIndex") _x
                             in
                               if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                   Data.Monoid.mempty
                               else
                                   (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                            (Data.ProtoLens.Encoding.Wire.buildFieldSet
                               (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))
instance Control.DeepSeq.NFData AppendEntriesRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_AppendEntriesRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_AppendEntriesRequest'term x__)
                (Control.DeepSeq.deepseq
                   (_AppendEntriesRequest'leader x__)
                   (Control.DeepSeq.deepseq
                      (_AppendEntriesRequest'prevLogEntry x__)
                      (Control.DeepSeq.deepseq
                         (_AppendEntriesRequest'prevLogTerm x__)
                         (Control.DeepSeq.deepseq
                            (_AppendEntriesRequest'entries x__)
                            (Control.DeepSeq.deepseq
                               (_AppendEntriesRequest'leaderCommitIndex x__) ()))))))
{- | Fields :
     
         * 'Proto.Protos.RaftGrpc_Fields.term' @:: Lens' AppendEntriesResponse Data.Word.Word64@
         * 'Proto.Protos.RaftGrpc_Fields.lastLog' @:: Lens' AppendEntriesResponse Data.Word.Word64@
         * 'Proto.Protos.RaftGrpc_Fields.success' @:: Lens' AppendEntriesResponse Prelude.Bool@
         * 'Proto.Protos.RaftGrpc_Fields.noRetryBackoff' @:: Lens' AppendEntriesResponse Prelude.Bool@ -}
data AppendEntriesResponse
  = AppendEntriesResponse'_constructor {_AppendEntriesResponse'term :: !Data.Word.Word64,
                                        _AppendEntriesResponse'lastLog :: !Data.Word.Word64,
                                        _AppendEntriesResponse'success :: !Prelude.Bool,
                                        _AppendEntriesResponse'noRetryBackoff :: !Prelude.Bool,
                                        _AppendEntriesResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AppendEntriesResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField AppendEntriesResponse "term" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AppendEntriesResponse'term
           (\ x__ y__ -> x__ {_AppendEntriesResponse'term = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AppendEntriesResponse "lastLog" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AppendEntriesResponse'lastLog
           (\ x__ y__ -> x__ {_AppendEntriesResponse'lastLog = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AppendEntriesResponse "success" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AppendEntriesResponse'success
           (\ x__ y__ -> x__ {_AppendEntriesResponse'success = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AppendEntriesResponse "noRetryBackoff" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AppendEntriesResponse'noRetryBackoff
           (\ x__ y__ -> x__ {_AppendEntriesResponse'noRetryBackoff = y__}))
        Prelude.id
instance Data.ProtoLens.Message AppendEntriesResponse where
  messageName _ = Data.Text.pack "raftgrpc.AppendEntriesResponse"
  fieldsByTag
    = let
        term__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "term"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"term")) ::
              Data.ProtoLens.FieldDescriptor AppendEntriesResponse
        lastLog__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "last_log"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"lastLog")) ::
              Data.ProtoLens.FieldDescriptor AppendEntriesResponse
        success__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "success"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"success")) ::
              Data.ProtoLens.FieldDescriptor AppendEntriesResponse
        noRetryBackoff__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "no_retry_backoff"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"noRetryBackoff")) ::
              Data.ProtoLens.FieldDescriptor AppendEntriesResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, term__field_descriptor),
           (Data.ProtoLens.Tag 2, lastLog__field_descriptor),
           (Data.ProtoLens.Tag 3, success__field_descriptor),
           (Data.ProtoLens.Tag 4, noRetryBackoff__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _AppendEntriesResponse'_unknownFields
        (\ x__ y__ -> x__ {_AppendEntriesResponse'_unknownFields = y__})
  defMessage
    = AppendEntriesResponse'_constructor
        {_AppendEntriesResponse'term = Data.ProtoLens.fieldDefault,
         _AppendEntriesResponse'lastLog = Data.ProtoLens.fieldDefault,
         _AppendEntriesResponse'success = Data.ProtoLens.fieldDefault,
         _AppendEntriesResponse'noRetryBackoff = Data.ProtoLens.fieldDefault,
         _AppendEntriesResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          AppendEntriesResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser AppendEntriesResponse
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "term"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"term") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "last_log"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"lastLog") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "success"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"success") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "no_retry_backoff"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"noRetryBackoff") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "AppendEntriesResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"term") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"lastLog") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (let
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"success") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putVarInt
                               (\ b -> if b then 1 else 0)
                               _v))
                   ((Data.Monoid.<>)
                      (let
                         _v
                           = Lens.Family2.view
                               (Data.ProtoLens.Field.field @"noRetryBackoff") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                               ((Prelude..)
                                  Data.ProtoLens.Encoding.Bytes.putVarInt
                                  (\ b -> if b then 1 else 0)
                                  _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData AppendEntriesResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_AppendEntriesResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_AppendEntriesResponse'term x__)
                (Control.DeepSeq.deepseq
                   (_AppendEntriesResponse'lastLog x__)
                   (Control.DeepSeq.deepseq
                      (_AppendEntriesResponse'success x__)
                      (Control.DeepSeq.deepseq
                         (_AppendEntriesResponse'noRetryBackoff x__) ()))))
{- | Fields :
     
         * 'Proto.Protos.RaftGrpc_Fields.term' @:: Lens' InstallSnapshotRequest Data.Word.Word64@
         * 'Proto.Protos.RaftGrpc_Fields.leader' @:: Lens' InstallSnapshotRequest Data.ByteString.ByteString@
         * 'Proto.Protos.RaftGrpc_Fields.lastLogIndex' @:: Lens' InstallSnapshotRequest Data.Word.Word64@
         * 'Proto.Protos.RaftGrpc_Fields.lastLogTerm' @:: Lens' InstallSnapshotRequest Data.Word.Word64@
         * 'Proto.Protos.RaftGrpc_Fields.peers' @:: Lens' InstallSnapshotRequest Data.ByteString.ByteString@
         * 'Proto.Protos.RaftGrpc_Fields.snapshot' @:: Lens' InstallSnapshotRequest Data.ByteString.ByteString@ -}
data InstallSnapshotRequest
  = InstallSnapshotRequest'_constructor {_InstallSnapshotRequest'term :: !Data.Word.Word64,
                                         _InstallSnapshotRequest'leader :: !Data.ByteString.ByteString,
                                         _InstallSnapshotRequest'lastLogIndex :: !Data.Word.Word64,
                                         _InstallSnapshotRequest'lastLogTerm :: !Data.Word.Word64,
                                         _InstallSnapshotRequest'peers :: !Data.ByteString.ByteString,
                                         _InstallSnapshotRequest'snapshot :: !Data.ByteString.ByteString,
                                         _InstallSnapshotRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show InstallSnapshotRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField InstallSnapshotRequest "term" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InstallSnapshotRequest'term
           (\ x__ y__ -> x__ {_InstallSnapshotRequest'term = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField InstallSnapshotRequest "leader" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InstallSnapshotRequest'leader
           (\ x__ y__ -> x__ {_InstallSnapshotRequest'leader = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField InstallSnapshotRequest "lastLogIndex" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InstallSnapshotRequest'lastLogIndex
           (\ x__ y__ -> x__ {_InstallSnapshotRequest'lastLogIndex = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField InstallSnapshotRequest "lastLogTerm" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InstallSnapshotRequest'lastLogTerm
           (\ x__ y__ -> x__ {_InstallSnapshotRequest'lastLogTerm = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField InstallSnapshotRequest "peers" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InstallSnapshotRequest'peers
           (\ x__ y__ -> x__ {_InstallSnapshotRequest'peers = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField InstallSnapshotRequest "snapshot" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InstallSnapshotRequest'snapshot
           (\ x__ y__ -> x__ {_InstallSnapshotRequest'snapshot = y__}))
        Prelude.id
instance Data.ProtoLens.Message InstallSnapshotRequest where
  messageName _ = Data.Text.pack "raftgrpc.InstallSnapshotRequest"
  fieldsByTag
    = let
        term__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "term"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"term")) ::
              Data.ProtoLens.FieldDescriptor InstallSnapshotRequest
        leader__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "leader"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"leader")) ::
              Data.ProtoLens.FieldDescriptor InstallSnapshotRequest
        lastLogIndex__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "last_log_index"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"lastLogIndex")) ::
              Data.ProtoLens.FieldDescriptor InstallSnapshotRequest
        lastLogTerm__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "last_log_term"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"lastLogTerm")) ::
              Data.ProtoLens.FieldDescriptor InstallSnapshotRequest
        peers__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "peers"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"peers")) ::
              Data.ProtoLens.FieldDescriptor InstallSnapshotRequest
        snapshot__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "snapshot"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"snapshot")) ::
              Data.ProtoLens.FieldDescriptor InstallSnapshotRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, term__field_descriptor),
           (Data.ProtoLens.Tag 2, leader__field_descriptor),
           (Data.ProtoLens.Tag 3, lastLogIndex__field_descriptor),
           (Data.ProtoLens.Tag 4, lastLogTerm__field_descriptor),
           (Data.ProtoLens.Tag 5, peers__field_descriptor),
           (Data.ProtoLens.Tag 6, snapshot__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _InstallSnapshotRequest'_unknownFields
        (\ x__ y__ -> x__ {_InstallSnapshotRequest'_unknownFields = y__})
  defMessage
    = InstallSnapshotRequest'_constructor
        {_InstallSnapshotRequest'term = Data.ProtoLens.fieldDefault,
         _InstallSnapshotRequest'leader = Data.ProtoLens.fieldDefault,
         _InstallSnapshotRequest'lastLogIndex = Data.ProtoLens.fieldDefault,
         _InstallSnapshotRequest'lastLogTerm = Data.ProtoLens.fieldDefault,
         _InstallSnapshotRequest'peers = Data.ProtoLens.fieldDefault,
         _InstallSnapshotRequest'snapshot = Data.ProtoLens.fieldDefault,
         _InstallSnapshotRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          InstallSnapshotRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser InstallSnapshotRequest
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "term"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"term") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "leader"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"leader") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "last_log_index"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"lastLogIndex") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "last_log_term"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"lastLogTerm") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "peers"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"peers") y x)
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "snapshot"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"snapshot") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "InstallSnapshotRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"term") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"leader") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                         ((\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            _v))
                ((Data.Monoid.<>)
                   (let
                      _v
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"lastLogIndex") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   ((Data.Monoid.<>)
                      (let
                         _v
                           = Lens.Family2.view (Data.ProtoLens.Field.field @"lastLogTerm") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      ((Data.Monoid.<>)
                         (let
                            _v = Lens.Family2.view (Data.ProtoLens.Field.field @"peers") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                                  ((\ bs
                                      -> (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                                           (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                     _v))
                         ((Data.Monoid.<>)
                            (let
                               _v = Lens.Family2.view (Data.ProtoLens.Field.field @"snapshot") _x
                             in
                               if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                   Data.Monoid.mempty
                               else
                                   (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                                     ((\ bs
                                         -> (Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                 (Prelude.fromIntegral (Data.ByteString.length bs)))
                                              (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                        _v))
                            (Data.ProtoLens.Encoding.Wire.buildFieldSet
                               (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))
instance Control.DeepSeq.NFData InstallSnapshotRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_InstallSnapshotRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_InstallSnapshotRequest'term x__)
                (Control.DeepSeq.deepseq
                   (_InstallSnapshotRequest'leader x__)
                   (Control.DeepSeq.deepseq
                      (_InstallSnapshotRequest'lastLogIndex x__)
                      (Control.DeepSeq.deepseq
                         (_InstallSnapshotRequest'lastLogTerm x__)
                         (Control.DeepSeq.deepseq
                            (_InstallSnapshotRequest'peers x__)
                            (Control.DeepSeq.deepseq
                               (_InstallSnapshotRequest'snapshot x__) ()))))))
{- | Fields :
     
         * 'Proto.Protos.RaftGrpc_Fields.term' @:: Lens' InstallSnapshotResponse Data.Word.Word64@
         * 'Proto.Protos.RaftGrpc_Fields.success' @:: Lens' InstallSnapshotResponse Prelude.Bool@ -}
data InstallSnapshotResponse
  = InstallSnapshotResponse'_constructor {_InstallSnapshotResponse'term :: !Data.Word.Word64,
                                          _InstallSnapshotResponse'success :: !Prelude.Bool,
                                          _InstallSnapshotResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show InstallSnapshotResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField InstallSnapshotResponse "term" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InstallSnapshotResponse'term
           (\ x__ y__ -> x__ {_InstallSnapshotResponse'term = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField InstallSnapshotResponse "success" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InstallSnapshotResponse'success
           (\ x__ y__ -> x__ {_InstallSnapshotResponse'success = y__}))
        Prelude.id
instance Data.ProtoLens.Message InstallSnapshotResponse where
  messageName _ = Data.Text.pack "raftgrpc.InstallSnapshotResponse"
  fieldsByTag
    = let
        term__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "term"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"term")) ::
              Data.ProtoLens.FieldDescriptor InstallSnapshotResponse
        success__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "success"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"success")) ::
              Data.ProtoLens.FieldDescriptor InstallSnapshotResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, term__field_descriptor),
           (Data.ProtoLens.Tag 2, success__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _InstallSnapshotResponse'_unknownFields
        (\ x__ y__ -> x__ {_InstallSnapshotResponse'_unknownFields = y__})
  defMessage
    = InstallSnapshotResponse'_constructor
        {_InstallSnapshotResponse'term = Data.ProtoLens.fieldDefault,
         _InstallSnapshotResponse'success = Data.ProtoLens.fieldDefault,
         _InstallSnapshotResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          InstallSnapshotResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser InstallSnapshotResponse
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "term"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"term") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "success"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"success") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "InstallSnapshotResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"term") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"success") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt
                            (\ b -> if b then 1 else 0)
                            _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData InstallSnapshotResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_InstallSnapshotResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_InstallSnapshotResponse'term x__)
                (Control.DeepSeq.deepseq
                   (_InstallSnapshotResponse'success x__) ()))
{- | Fields :
     
         * 'Proto.Protos.RaftGrpc_Fields.index' @:: Lens' LogEntry Data.Word.Word64@
         * 'Proto.Protos.RaftGrpc_Fields.term' @:: Lens' LogEntry Data.Word.Word64@
         * 'Proto.Protos.RaftGrpc_Fields.type'' @:: Lens' LogEntry LogEntryType@
         * 'Proto.Protos.RaftGrpc_Fields.data'' @:: Lens' LogEntry Data.ByteString.ByteString@ -}
data LogEntry
  = LogEntry'_constructor {_LogEntry'index :: !Data.Word.Word64,
                           _LogEntry'term :: !Data.Word.Word64,
                           _LogEntry'type' :: !LogEntryType,
                           _LogEntry'data' :: !Data.ByteString.ByteString,
                           _LogEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show LogEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField LogEntry "index" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LogEntry'index (\ x__ y__ -> x__ {_LogEntry'index = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField LogEntry "term" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LogEntry'term (\ x__ y__ -> x__ {_LogEntry'term = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField LogEntry "type'" LogEntryType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LogEntry'type' (\ x__ y__ -> x__ {_LogEntry'type' = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField LogEntry "data'" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LogEntry'data' (\ x__ y__ -> x__ {_LogEntry'data' = y__}))
        Prelude.id
instance Data.ProtoLens.Message LogEntry where
  messageName _ = Data.Text.pack "raftgrpc.LogEntry"
  fieldsByTag
    = let
        index__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "index"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"index")) ::
              Data.ProtoLens.FieldDescriptor LogEntry
        term__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "term"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"term")) ::
              Data.ProtoLens.FieldDescriptor LogEntry
        type'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor LogEntryType)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"type'")) ::
              Data.ProtoLens.FieldDescriptor LogEntry
        data'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "data"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"data'")) ::
              Data.ProtoLens.FieldDescriptor LogEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, index__field_descriptor),
           (Data.ProtoLens.Tag 2, term__field_descriptor),
           (Data.ProtoLens.Tag 3, type'__field_descriptor),
           (Data.ProtoLens.Tag 4, data'__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _LogEntry'_unknownFields
        (\ x__ y__ -> x__ {_LogEntry'_unknownFields = y__})
  defMessage
    = LogEntry'_constructor
        {_LogEntry'index = Data.ProtoLens.fieldDefault,
         _LogEntry'term = Data.ProtoLens.fieldDefault,
         _LogEntry'type' = Data.ProtoLens.fieldDefault,
         _LogEntry'data' = Data.ProtoLens.fieldDefault,
         _LogEntry'_unknownFields = []}
  parseMessage
    = let
        loop :: LogEntry -> Data.ProtoLens.Encoding.Bytes.Parser LogEntry
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "index"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"index") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "term"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"term") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "type"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"type'") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "data"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"data'") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "LogEntry"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"index") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"term") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (let
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"type'") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            ((Prelude..)
                               ((Prelude..)
                                  Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                               Prelude.fromEnum
                               _v))
                   ((Data.Monoid.<>)
                      (let
                         _v = Lens.Family2.view (Data.ProtoLens.Field.field @"data'") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                               ((\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                  _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData LogEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_LogEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_LogEntry'index x__)
                (Control.DeepSeq.deepseq
                   (_LogEntry'term x__)
                   (Control.DeepSeq.deepseq
                      (_LogEntry'type' x__)
                      (Control.DeepSeq.deepseq (_LogEntry'data' x__) ()))))
newtype LogEntryType'UnrecognizedValue
  = LogEntryType'UnrecognizedValue Data.Int.Int32
  deriving (Prelude.Eq, Prelude.Ord, Prelude.Show)
data LogEntryType
  = LOG_ENTRY_COMMAND |
    LOG_ENTRY_NOOP |
    LOG_ENTRY_ADD_PEER |
    LOG_ENTRY_REMOVE_PEER |
    LOG_ENTRY_BARRIER |
    LogEntryType'Unrecognized !LogEntryType'UnrecognizedValue
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum LogEntryType where
  maybeToEnum 0 = Prelude.Just LOG_ENTRY_COMMAND
  maybeToEnum 1 = Prelude.Just LOG_ENTRY_NOOP
  maybeToEnum 2 = Prelude.Just LOG_ENTRY_ADD_PEER
  maybeToEnum 3 = Prelude.Just LOG_ENTRY_REMOVE_PEER
  maybeToEnum 4 = Prelude.Just LOG_ENTRY_BARRIER
  maybeToEnum k
    = Prelude.Just
        (LogEntryType'Unrecognized
           (LogEntryType'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum LOG_ENTRY_COMMAND = "LOG_ENTRY_COMMAND"
  showEnum LOG_ENTRY_NOOP = "LOG_ENTRY_NOOP"
  showEnum LOG_ENTRY_ADD_PEER = "LOG_ENTRY_ADD_PEER"
  showEnum LOG_ENTRY_REMOVE_PEER = "LOG_ENTRY_REMOVE_PEER"
  showEnum LOG_ENTRY_BARRIER = "LOG_ENTRY_BARRIER"
  showEnum
    (LogEntryType'Unrecognized (LogEntryType'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "LOG_ENTRY_COMMAND"
    = Prelude.Just LOG_ENTRY_COMMAND
    | (Prelude.==) k "LOG_ENTRY_NOOP" = Prelude.Just LOG_ENTRY_NOOP
    | (Prelude.==) k "LOG_ENTRY_ADD_PEER"
    = Prelude.Just LOG_ENTRY_ADD_PEER
    | (Prelude.==) k "LOG_ENTRY_REMOVE_PEER"
    = Prelude.Just LOG_ENTRY_REMOVE_PEER
    | (Prelude.==) k "LOG_ENTRY_BARRIER"
    = Prelude.Just LOG_ENTRY_BARRIER
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded LogEntryType where
  minBound = LOG_ENTRY_COMMAND
  maxBound = LOG_ENTRY_BARRIER
instance Prelude.Enum LogEntryType where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum LogEntryType: "
              (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum LOG_ENTRY_COMMAND = 0
  fromEnum LOG_ENTRY_NOOP = 1
  fromEnum LOG_ENTRY_ADD_PEER = 2
  fromEnum LOG_ENTRY_REMOVE_PEER = 3
  fromEnum LOG_ENTRY_BARRIER = 4
  fromEnum
    (LogEntryType'Unrecognized (LogEntryType'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ LOG_ENTRY_BARRIER
    = Prelude.error
        "LogEntryType.succ: bad argument LOG_ENTRY_BARRIER. This value would be out of bounds."
  succ LOG_ENTRY_COMMAND = LOG_ENTRY_NOOP
  succ LOG_ENTRY_NOOP = LOG_ENTRY_ADD_PEER
  succ LOG_ENTRY_ADD_PEER = LOG_ENTRY_REMOVE_PEER
  succ LOG_ENTRY_REMOVE_PEER = LOG_ENTRY_BARRIER
  succ (LogEntryType'Unrecognized _)
    = Prelude.error
        "LogEntryType.succ: bad argument: unrecognized value"
  pred LOG_ENTRY_COMMAND
    = Prelude.error
        "LogEntryType.pred: bad argument LOG_ENTRY_COMMAND. This value would be out of bounds."
  pred LOG_ENTRY_NOOP = LOG_ENTRY_COMMAND
  pred LOG_ENTRY_ADD_PEER = LOG_ENTRY_NOOP
  pred LOG_ENTRY_REMOVE_PEER = LOG_ENTRY_ADD_PEER
  pred LOG_ENTRY_BARRIER = LOG_ENTRY_REMOVE_PEER
  pred (LogEntryType'Unrecognized _)
    = Prelude.error
        "LogEntryType.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault LogEntryType where
  fieldDefault = LOG_ENTRY_COMMAND
instance Control.DeepSeq.NFData LogEntryType where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Protos.RaftGrpc_Fields.peerName' @:: Lens' PeerNameContainer Data.Text.Text@ -}
data PeerNameContainer
  = PeerNameContainer'_constructor {_PeerNameContainer'peerName :: !Data.Text.Text,
                                    _PeerNameContainer'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show PeerNameContainer where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField PeerNameContainer "peerName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PeerNameContainer'peerName
           (\ x__ y__ -> x__ {_PeerNameContainer'peerName = y__}))
        Prelude.id
instance Data.ProtoLens.Message PeerNameContainer where
  messageName _ = Data.Text.pack "raftgrpc.PeerNameContainer"
  fieldsByTag
    = let
        peerName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "peer_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"peerName")) ::
              Data.ProtoLens.FieldDescriptor PeerNameContainer
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, peerName__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _PeerNameContainer'_unknownFields
        (\ x__ y__ -> x__ {_PeerNameContainer'_unknownFields = y__})
  defMessage
    = PeerNameContainer'_constructor
        {_PeerNameContainer'peerName = Data.ProtoLens.fieldDefault,
         _PeerNameContainer'_unknownFields = []}
  parseMessage
    = let
        loop ::
          PeerNameContainer
          -> Data.ProtoLens.Encoding.Bytes.Parser PeerNameContainer
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "peer_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"peerName") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "PeerNameContainer"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"peerName") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((Prelude..)
                         (\ bs
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Data.Text.Encoding.encodeUtf8
                         _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData PeerNameContainer where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_PeerNameContainer'_unknownFields x__)
             (Control.DeepSeq.deepseq (_PeerNameContainer'peerName x__) ())
{- | Fields :
     
         * 'Proto.Protos.RaftGrpc_Fields.term' @:: Lens' RequestVoteRequest Data.Word.Word64@
         * 'Proto.Protos.RaftGrpc_Fields.candidate' @:: Lens' RequestVoteRequest Data.ByteString.ByteString@
         * 'Proto.Protos.RaftGrpc_Fields.lastLogIndex' @:: Lens' RequestVoteRequest Data.Word.Word64@
         * 'Proto.Protos.RaftGrpc_Fields.lastLogTerm' @:: Lens' RequestVoteRequest Data.Word.Word64@ -}
data RequestVoteRequest
  = RequestVoteRequest'_constructor {_RequestVoteRequest'term :: !Data.Word.Word64,
                                     _RequestVoteRequest'candidate :: !Data.ByteString.ByteString,
                                     _RequestVoteRequest'lastLogIndex :: !Data.Word.Word64,
                                     _RequestVoteRequest'lastLogTerm :: !Data.Word.Word64,
                                     _RequestVoteRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RequestVoteRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RequestVoteRequest "term" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestVoteRequest'term
           (\ x__ y__ -> x__ {_RequestVoteRequest'term = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RequestVoteRequest "candidate" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestVoteRequest'candidate
           (\ x__ y__ -> x__ {_RequestVoteRequest'candidate = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RequestVoteRequest "lastLogIndex" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestVoteRequest'lastLogIndex
           (\ x__ y__ -> x__ {_RequestVoteRequest'lastLogIndex = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RequestVoteRequest "lastLogTerm" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestVoteRequest'lastLogTerm
           (\ x__ y__ -> x__ {_RequestVoteRequest'lastLogTerm = y__}))
        Prelude.id
instance Data.ProtoLens.Message RequestVoteRequest where
  messageName _ = Data.Text.pack "raftgrpc.RequestVoteRequest"
  fieldsByTag
    = let
        term__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "term"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"term")) ::
              Data.ProtoLens.FieldDescriptor RequestVoteRequest
        candidate__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "candidate"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"candidate")) ::
              Data.ProtoLens.FieldDescriptor RequestVoteRequest
        lastLogIndex__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "last_log_index"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"lastLogIndex")) ::
              Data.ProtoLens.FieldDescriptor RequestVoteRequest
        lastLogTerm__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "last_log_term"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"lastLogTerm")) ::
              Data.ProtoLens.FieldDescriptor RequestVoteRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, term__field_descriptor),
           (Data.ProtoLens.Tag 2, candidate__field_descriptor),
           (Data.ProtoLens.Tag 3, lastLogIndex__field_descriptor),
           (Data.ProtoLens.Tag 4, lastLogTerm__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RequestVoteRequest'_unknownFields
        (\ x__ y__ -> x__ {_RequestVoteRequest'_unknownFields = y__})
  defMessage
    = RequestVoteRequest'_constructor
        {_RequestVoteRequest'term = Data.ProtoLens.fieldDefault,
         _RequestVoteRequest'candidate = Data.ProtoLens.fieldDefault,
         _RequestVoteRequest'lastLogIndex = Data.ProtoLens.fieldDefault,
         _RequestVoteRequest'lastLogTerm = Data.ProtoLens.fieldDefault,
         _RequestVoteRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RequestVoteRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser RequestVoteRequest
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "term"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"term") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "candidate"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"candidate") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "last_log_index"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"lastLogIndex") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "last_log_term"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"lastLogTerm") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "RequestVoteRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"term") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"candidate") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                         ((\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            _v))
                ((Data.Monoid.<>)
                   (let
                      _v
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"lastLogIndex") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   ((Data.Monoid.<>)
                      (let
                         _v
                           = Lens.Family2.view (Data.ProtoLens.Field.field @"lastLogTerm") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData RequestVoteRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RequestVoteRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_RequestVoteRequest'term x__)
                (Control.DeepSeq.deepseq
                   (_RequestVoteRequest'candidate x__)
                   (Control.DeepSeq.deepseq
                      (_RequestVoteRequest'lastLogIndex x__)
                      (Control.DeepSeq.deepseq
                         (_RequestVoteRequest'lastLogTerm x__) ()))))
{- | Fields :
     
         * 'Proto.Protos.RaftGrpc_Fields.term' @:: Lens' RequestVoteResponse Data.Word.Word64@
         * 'Proto.Protos.RaftGrpc_Fields.peers' @:: Lens' RequestVoteResponse Data.ByteString.ByteString@
         * 'Proto.Protos.RaftGrpc_Fields.granted' @:: Lens' RequestVoteResponse Prelude.Bool@ -}
data RequestVoteResponse
  = RequestVoteResponse'_constructor {_RequestVoteResponse'term :: !Data.Word.Word64,
                                      _RequestVoteResponse'peers :: !Data.ByteString.ByteString,
                                      _RequestVoteResponse'granted :: !Prelude.Bool,
                                      _RequestVoteResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RequestVoteResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RequestVoteResponse "term" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestVoteResponse'term
           (\ x__ y__ -> x__ {_RequestVoteResponse'term = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RequestVoteResponse "peers" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestVoteResponse'peers
           (\ x__ y__ -> x__ {_RequestVoteResponse'peers = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RequestVoteResponse "granted" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestVoteResponse'granted
           (\ x__ y__ -> x__ {_RequestVoteResponse'granted = y__}))
        Prelude.id
instance Data.ProtoLens.Message RequestVoteResponse where
  messageName _ = Data.Text.pack "raftgrpc.RequestVoteResponse"
  fieldsByTag
    = let
        term__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "term"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"term")) ::
              Data.ProtoLens.FieldDescriptor RequestVoteResponse
        peers__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "peers"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"peers")) ::
              Data.ProtoLens.FieldDescriptor RequestVoteResponse
        granted__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "granted"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"granted")) ::
              Data.ProtoLens.FieldDescriptor RequestVoteResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, term__field_descriptor),
           (Data.ProtoLens.Tag 2, peers__field_descriptor),
           (Data.ProtoLens.Tag 3, granted__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RequestVoteResponse'_unknownFields
        (\ x__ y__ -> x__ {_RequestVoteResponse'_unknownFields = y__})
  defMessage
    = RequestVoteResponse'_constructor
        {_RequestVoteResponse'term = Data.ProtoLens.fieldDefault,
         _RequestVoteResponse'peers = Data.ProtoLens.fieldDefault,
         _RequestVoteResponse'granted = Data.ProtoLens.fieldDefault,
         _RequestVoteResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RequestVoteResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser RequestVoteResponse
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "term"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"term") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "peers"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"peers") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "granted"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"granted") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "RequestVoteResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"term") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"peers") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                         ((\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            _v))
                ((Data.Monoid.<>)
                   (let
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"granted") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putVarInt
                               (\ b -> if b then 1 else 0)
                               _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData RequestVoteResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RequestVoteResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_RequestVoteResponse'term x__)
                (Control.DeepSeq.deepseq
                   (_RequestVoteResponse'peers x__)
                   (Control.DeepSeq.deepseq (_RequestVoteResponse'granted x__) ())))
data RaftService = RaftService {}
instance Data.ProtoLens.Service.Types.Service RaftService where
  type ServiceName RaftService = "RaftService"
  type ServicePackage RaftService = "raftgrpc"
  type ServiceMethods RaftService = '["appendEntries",
                                      "appendEntriesPipeline",
                                      "installSnapshot",
                                      "requestVote"]
instance Data.ProtoLens.Service.Types.HasMethodImpl RaftService "appendEntriesPipeline" where
  type MethodName RaftService "appendEntriesPipeline" = "AppendEntriesPipeline"
  type MethodInput RaftService "appendEntriesPipeline" = AppendEntriesRequest
  type MethodOutput RaftService "appendEntriesPipeline" = AppendEntriesPipelineResponse
  type MethodStreamingType RaftService "appendEntriesPipeline" = 'Data.ProtoLens.Service.Types.BiDiStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl RaftService "appendEntries" where
  type MethodName RaftService "appendEntries" = "AppendEntries"
  type MethodInput RaftService "appendEntries" = AppendEntriesRequest
  type MethodOutput RaftService "appendEntries" = AppendEntriesResponse
  type MethodStreamingType RaftService "appendEntries" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl RaftService "requestVote" where
  type MethodName RaftService "requestVote" = "RequestVote"
  type MethodInput RaftService "requestVote" = RequestVoteRequest
  type MethodOutput RaftService "requestVote" = RequestVoteResponse
  type MethodStreamingType RaftService "requestVote" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl RaftService "installSnapshot" where
  type MethodName RaftService "installSnapshot" = "InstallSnapshot"
  type MethodInput RaftService "installSnapshot" = InstallSnapshotRequest
  type MethodOutput RaftService "installSnapshot" = InstallSnapshotResponse
  type MethodStreamingType RaftService "installSnapshot" = 'Data.ProtoLens.Service.Types.NonStreaming
{- This file was auto-generated from raft-grpc.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.RaftGrpc_Fields where
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
candidate ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "candidate" a) =>
  Lens.Family2.LensLike' f s a
candidate = Data.ProtoLens.Field.field @"candidate"
data' ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "data'" a) =>
  Lens.Family2.LensLike' f s a
data' = Data.ProtoLens.Field.field @"data'"
entries ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "entries" a) =>
  Lens.Family2.LensLike' f s a
entries = Data.ProtoLens.Field.field @"entries"
error ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "error" a) =>
  Lens.Family2.LensLike' f s a
error = Data.ProtoLens.Field.field @"error"
granted ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "granted" a) =>
  Lens.Family2.LensLike' f s a
granted = Data.ProtoLens.Field.field @"granted"
index ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "index" a) =>
  Lens.Family2.LensLike' f s a
index = Data.ProtoLens.Field.field @"index"
lastLog ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "lastLog" a) =>
  Lens.Family2.LensLike' f s a
lastLog = Data.ProtoLens.Field.field @"lastLog"
lastLogIndex ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "lastLogIndex" a) =>
  Lens.Family2.LensLike' f s a
lastLogIndex = Data.ProtoLens.Field.field @"lastLogIndex"
lastLogTerm ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "lastLogTerm" a) =>
  Lens.Family2.LensLike' f s a
lastLogTerm = Data.ProtoLens.Field.field @"lastLogTerm"
leader ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "leader" a) =>
  Lens.Family2.LensLike' f s a
leader = Data.ProtoLens.Field.field @"leader"
leaderCommitIndex ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "leaderCommitIndex" a) =>
  Lens.Family2.LensLike' f s a
leaderCommitIndex = Data.ProtoLens.Field.field @"leaderCommitIndex"
maybe'response ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'response" a) =>
  Lens.Family2.LensLike' f s a
maybe'response = Data.ProtoLens.Field.field @"maybe'response"
noRetryBackoff ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "noRetryBackoff" a) =>
  Lens.Family2.LensLike' f s a
noRetryBackoff = Data.ProtoLens.Field.field @"noRetryBackoff"
peerName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "peerName" a) =>
  Lens.Family2.LensLike' f s a
peerName = Data.ProtoLens.Field.field @"peerName"
peers ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "peers" a) =>
  Lens.Family2.LensLike' f s a
peers = Data.ProtoLens.Field.field @"peers"
prevLogEntry ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "prevLogEntry" a) =>
  Lens.Family2.LensLike' f s a
prevLogEntry = Data.ProtoLens.Field.field @"prevLogEntry"
prevLogTerm ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "prevLogTerm" a) =>
  Lens.Family2.LensLike' f s a
prevLogTerm = Data.ProtoLens.Field.field @"prevLogTerm"
response ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "response" a) =>
  Lens.Family2.LensLike' f s a
response = Data.ProtoLens.Field.field @"response"
snapshot ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "snapshot" a) =>
  Lens.Family2.LensLike' f s a
snapshot = Data.ProtoLens.Field.field @"snapshot"
success ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "success" a) =>
  Lens.Family2.LensLike' f s a
success = Data.ProtoLens.Field.field @"success"
term ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "term" a) =>
  Lens.Family2.LensLike' f s a
term = Data.ProtoLens.Field.field @"term"
type' ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "type'" a) =>
  Lens.Family2.LensLike' f s a
type' = Data.ProtoLens.Field.field @"type'"
vec'entries ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'entries" a) =>
  Lens.Family2.LensLike' f s a
vec'entries = Data.ProtoLens.Field.field @"vec'entries"
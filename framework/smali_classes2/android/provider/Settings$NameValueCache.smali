.class Landroid/provider/Settings$NameValueCache;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NameValueCache"
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final NAME_EQ_PLACEHOLDER:Ljava/lang/String; = "name=?"

.field private static final SELECT_VALUE_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final mCallGetCommand:Ljava/lang/String;

.field private final mCallSetCommand:Ljava/lang/String;

.field private mGenerationTracker:Landroid/provider/Settings$GenerationTracker;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

.field private final mUri:Landroid/net/Uri;

.field private final mValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "value"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Landroid/provider/Settings$NameValueCache;->SELECT_VALUE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/provider/Settings$ContentProviderHolder;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    iput-object p1, p0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    iput-object p2, p0, Landroid/provider/Settings$NameValueCache;->mCallGetCommand:Ljava/lang/String;

    iput-object p3, p0, Landroid/provider/Settings$NameValueCache;->mCallSetCommand:Ljava/lang/String;

    iput-object p4, p0, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    return-void
.end method


# virtual methods
.method public clearGenerationTrackerForTest()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->destroy()V

    :cond_a
    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    monitor-exit p0

    return-void

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
    .registers 26

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_103

    const/16 v17, 0x1

    :goto_a
    const/4 v13, -0x1

    if-eqz v17, :cond_34

    monitor-enter p0

    :try_start_e
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    if-eqz v3, :cond_33

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    invoke-virtual {v3}, Landroid/provider/Settings$GenerationTracker;->isGenerationChanged()Z

    move-result v3

    if-eqz v3, :cond_107

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    :cond_25
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    if-eqz v3, :cond_33

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    invoke-virtual {v3}, Landroid/provider/Settings$GenerationTracker;->getCurrentGeneration()I
    :try_end_32
    .catchall {:try_start_e .. :try_end_32} :catchall_121

    move-result v13

    :cond_33
    monitor-exit p0

    :cond_34
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/provider/Settings$ContentProviderHolder;->getProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/provider/Settings$NameValueCache;->mCallGetCommand:Ljava/lang/String;

    if-eqz v3, :cond_12c

    const/4 v8, 0x0

    if-nez v17, :cond_23b

    :try_start_47
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_4c} :catch_12b

    :try_start_4c
    const-string/jumbo v3, "_user"

    move/from16 v0, p3

    invoke-virtual {v9, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_54
    const/16 v18, 0x0

    monitor-enter p0
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_57} :catch_231

    if-eqz v17, :cond_124

    :try_start_59
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    if-nez v3, :cond_124

    const/16 v18, 0x1

    if-nez v9, :cond_238

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V
    :try_end_68
    .catchall {:try_start_59 .. :try_end_68} :catchall_127

    :goto_68
    :try_start_68
    const-string/jumbo v3, "_track_generation"

    const/4 v4, 0x0

    invoke-virtual {v8, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6f
    .catchall {:try_start_68 .. :try_end_6f} :catchall_235

    :goto_6f
    :try_start_6f
    monitor-exit p0

    invoke-static {}, Landroid/provider/Settings;->isInSystemServer()Z

    move-result v3

    if-eqz v3, :cond_19a

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    if-eq v3, v4, :cond_19a

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_83
    .catch Landroid/os/RemoteException; {:try_start_6f .. :try_end_83} :catch_12b

    move-result-wide v20

    :try_start_84
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/provider/Settings$NameValueCache;->mCallGetCommand:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-interface {v2, v3, v4, v0, v8}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_91
    .catchall {:try_start_84 .. :try_end_91} :catchall_195

    move-result-object v11

    :try_start_92
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_95
    if-eqz v11, :cond_12c

    const-string/jumbo v3, "value"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    if-eqz v17, :cond_102

    monitor-enter p0
    :try_end_a1
    .catch Landroid/os/RemoteException; {:try_start_92 .. :try_end_a1} :catch_12b

    if-eqz v18, :cond_e6

    :try_start_a3
    const-string/jumbo v3, "_track_generation"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/util/MemoryIntArray;

    const-string/jumbo v3, "_generation_index"

    const/4 v4, -0x1

    invoke-virtual {v11, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v16

    if-eqz v10, :cond_e6

    if-ltz v16, :cond_e6

    const-string/jumbo v3, "_generation"

    const/4 v4, 0x0

    invoke-virtual {v11, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    if-eqz v3, :cond_d3

    invoke-static {}, Landroid/provider/Settings;->isInSystemServer()Z

    move-result v3

    if-nez v3, :cond_d3

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    invoke-virtual {v3}, Landroid/provider/Settings$GenerationTracker;->destroy()V

    :cond_d3
    new-instance v3, Landroid/provider/Settings$GenerationTracker;

    new-instance v4, Landroid/provider/-$Lambda$asz6VwQ86PPY-v8JLMb7rx-pSqg;

    const/4 v5, 0x7

    move-object/from16 v0, p0

    invoke-direct {v4, v5, v0}, Landroid/provider/-$Lambda$asz6VwQ86PPY-v8JLMb7rx-pSqg;-><init>(BLjava/lang/Object;)V

    move/from16 v0, v16

    invoke-direct {v3, v10, v0, v15, v4}, Landroid/provider/Settings$GenerationTracker;-><init>(Landroid/util/MemoryIntArray;IILjava/lang/Runnable;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    :cond_e6
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    if-eqz v3, :cond_101

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    invoke-virtual {v3}, Landroid/provider/Settings$GenerationTracker;->getCurrentGeneration()I

    move-result v3

    if-ne v13, v3, :cond_101

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_101
    .catchall {:try_start_a3 .. :try_end_101} :catchall_1aa

    :cond_101
    :try_start_101
    monitor-exit p0
    :try_end_102
    .catch Landroid/os/RemoteException; {:try_start_101 .. :try_end_102} :catch_12b

    :cond_102
    return-object v19

    :cond_103
    const/16 v17, 0x0

    goto/16 :goto_a

    :cond_107
    :try_start_107
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_11f
    .catchall {:try_start_107 .. :try_end_11f} :catchall_121

    monitor-exit p0

    return-object v3

    :catchall_121
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_124
    move-object v8, v9

    goto/16 :goto_6f

    :catchall_127
    move-exception v3

    move-object v8, v9

    :goto_129
    :try_start_129
    monitor-exit p0

    throw v3
    :try_end_12b
    .catch Landroid/os/RemoteException; {:try_start_129 .. :try_end_12b} :catch_12b

    :catch_12b
    move-exception v14

    :cond_12c
    :goto_12c
    const/4 v12, 0x0

    :try_start_12d
    const-string/jumbo v3, "name=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/content/ContentResolver;->createSqlQueryBundle(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    invoke-static {}, Landroid/provider/Settings;->isInSystemServer()Z

    move-result v3

    if-eqz v3, :cond_1e5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    if-eq v3, v4, :cond_1e5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_14e
    .catch Landroid/os/RemoteException; {:try_start_12d .. :try_end_14e} :catch_1b2
    .catchall {:try_start_12d .. :try_end_14e} :catchall_22a

    move-result-wide v20

    :try_start_14f
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    sget-object v5, Landroid/provider/Settings$NameValueCache;->SELECT_VALUE_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;
    :try_end_15d
    .catchall {:try_start_14f .. :try_end_15d} :catchall_1ad

    move-result-object v12

    :try_start_15e
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_161
    if-nez v12, :cond_1f6

    const-string/jumbo v3, "Settings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Can\'t get key "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18e
    .catch Landroid/os/RemoteException; {:try_start_15e .. :try_end_18e} :catch_1b2
    .catchall {:try_start_15e .. :try_end_18e} :catchall_22a

    const/4 v3, 0x0

    if-eqz v12, :cond_194

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_194
    return-object v3

    :catchall_195
    move-exception v3

    :try_start_196
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_19a
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/provider/Settings$NameValueCache;->mCallGetCommand:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-interface {v2, v3, v4, v0, v8}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v11

    goto/16 :goto_95

    :catchall_1aa
    move-exception v3

    monitor-exit p0

    throw v3
    :try_end_1ad
    .catch Landroid/os/RemoteException; {:try_start_196 .. :try_end_1ad} :catch_12b

    :catchall_1ad
    move-exception v3

    :try_start_1ae
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_1b2
    .catch Landroid/os/RemoteException; {:try_start_1ae .. :try_end_1b2} :catch_1b2
    .catchall {:try_start_1ae .. :try_end_1b2} :catchall_22a

    :catch_1b2
    move-exception v14

    :try_start_1b3
    const-string/jumbo v3, "Settings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Can\'t get key "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1de
    .catchall {:try_start_1b3 .. :try_end_1de} :catchall_22a

    const/4 v3, 0x0

    if-eqz v12, :cond_1e4

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_1e4
    return-object v3

    :cond_1e5
    :try_start_1e5
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    sget-object v5, Landroid/provider/Settings$NameValueCache;->SELECT_VALUE_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v12

    goto/16 :goto_161

    :cond_1f6
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_224

    const/4 v3, 0x0

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    :goto_201
    monitor-enter p0
    :try_end_202
    .catch Landroid/os/RemoteException; {:try_start_1e5 .. :try_end_202} :catch_1b2
    .catchall {:try_start_1e5 .. :try_end_202} :catchall_22a

    :try_start_202
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    if-eqz v3, :cond_21d

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    invoke-virtual {v3}, Landroid/provider/Settings$GenerationTracker;->getCurrentGeneration()I

    move-result v3

    if-ne v13, v3, :cond_21d

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21d
    .catchall {:try_start_202 .. :try_end_21d} :catchall_227

    :cond_21d
    :try_start_21d
    monitor-exit p0
    :try_end_21e
    .catch Landroid/os/RemoteException; {:try_start_21d .. :try_end_21e} :catch_1b2
    .catchall {:try_start_21d .. :try_end_21e} :catchall_22a

    if-eqz v12, :cond_223

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_223
    return-object v19

    :cond_224
    const/16 v19, 0x0

    goto :goto_201

    :catchall_227
    move-exception v3

    :try_start_228
    monitor-exit p0

    throw v3
    :try_end_22a
    .catch Landroid/os/RemoteException; {:try_start_228 .. :try_end_22a} :catch_1b2
    .catchall {:try_start_228 .. :try_end_22a} :catchall_22a

    :catchall_22a
    move-exception v3

    if-eqz v12, :cond_230

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_230
    throw v3

    :catch_231
    move-exception v14

    move-object v8, v9

    goto/16 :goto_12c

    :catchall_235
    move-exception v3

    goto/16 :goto_129

    :cond_238
    move-object v8, v9

    goto/16 :goto_68

    :cond_23b
    move-object v9, v8

    goto/16 :goto_54
.end method

.method synthetic lambda$-android_provider_Settings$NameValueCache_72263()V
    .registers 4

    monitor-enter p0

    :try_start_1
    const-string/jumbo v1, "Settings"

    const-string/jumbo v2, "Error accessing generation tracker - removing"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    if-eqz v1, :cond_21

    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    invoke-static {}, Landroid/provider/Settings;->isInSystemServer()Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->destroy()V

    :cond_1c
    iget-object v1, p0, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_23

    :cond_21
    monitor-exit p0

    return-void

    :catchall_23
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Z
    .registers 13

    const/4 v5, 0x1

    :try_start_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "value"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "_user"

    invoke-virtual {v0, v3, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p4, :cond_1a

    const-string/jumbo v3, "_tag"

    invoke-virtual {v0, v3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a
    if-eqz p5, :cond_23

    const-string/jumbo v3, "_make_default"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_23
    iget-object v3, p0, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-virtual {v3, p1}, Landroid/provider/Settings$ContentProviderHolder;->getProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/provider/Settings$NameValueCache;->mCallSetCommand:Ljava/lang/String;

    invoke-interface {v1, v3, v4, p2, v0}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_32} :catch_33

    return v5

    :catch_33
    move-exception v2

    const-string/jumbo v3, "Settings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Can\'t set key "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v3, 0x0

    return v3
.end method

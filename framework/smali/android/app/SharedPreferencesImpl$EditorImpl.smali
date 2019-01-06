.class public final Landroid/app/SharedPreferencesImpl$EditorImpl;
.super Ljava/lang/Object;
.source "SharedPreferencesImpl.java"

# interfaces
.implements Landroid/content/SharedPreferences$Editor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SharedPreferencesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "EditorImpl"
.end annotation


# instance fields
.field private mClear:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mModified:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/app/SharedPreferencesImpl;


# direct methods
.method static synthetic -wrap0(Landroid/app/SharedPreferencesImpl$EditorImpl;Landroid/app/SharedPreferencesImpl$MemoryCommitResult;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/SharedPreferencesImpl$EditorImpl;->notifyListeners(Landroid/app/SharedPreferencesImpl$MemoryCommitResult;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/SharedPreferencesImpl;)V
    .registers 3

    iput-object p1, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mLock:Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mClear:Z

    return-void
.end method

.method private commitToMemory()Landroid/app/SharedPreferencesImpl$MemoryCommitResult;
    .registers 25

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    invoke-static {v3}, Landroid/app/SharedPreferencesImpl;->-get3(Landroid/app/SharedPreferencesImpl;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    :try_start_b
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    invoke-static {v3}, Landroid/app/SharedPreferencesImpl;->-get1(Landroid/app/SharedPreferencesImpl;)I

    move-result v3

    if-lez v3, :cond_2d

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    new-instance v18, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/app/SharedPreferencesImpl;->-get4(Landroid/app/SharedPreferencesImpl;)Ljava/util/Map;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Landroid/app/SharedPreferencesImpl;->-set2(Landroid/app/SharedPreferencesImpl;Ljava/util/Map;)Ljava/util/Map;

    :cond_2d
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    invoke-static {v3}, Landroid/app/SharedPreferencesImpl;->-get4(Landroid/app/SharedPreferencesImpl;)Ljava/util/Map;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    invoke-static {v3}, Landroid/app/SharedPreferencesImpl;->-get1(Landroid/app/SharedPreferencesImpl;)I

    move-result v18

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    invoke-static {v3, v0}, Landroid/app/SharedPreferencesImpl;->-set1(Landroid/app/SharedPreferencesImpl;I)I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    invoke-static {v3}, Landroid/app/SharedPreferencesImpl;->-get2(Landroid/app/SharedPreferencesImpl;)Ljava/util/WeakHashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->size()I

    move-result v3

    if-lez v3, :cond_ed

    const/4 v13, 0x1

    :goto_53
    if-eqz v13, :cond_70

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V
    :try_end_5a
    .catchall {:try_start_b .. :try_end_5a} :catchall_ea

    :try_start_5a
    new-instance v16, Ljava/util/HashSet;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    invoke-static {v3}, Landroid/app/SharedPreferencesImpl;->-get2(Landroid/app/SharedPreferencesImpl;)Ljava/util/WeakHashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_6d
    .catchall {:try_start_5a .. :try_end_6d} :catchall_14d

    move-object/from16 v7, v16

    move-object v6, v15

    :cond_70
    :try_start_70
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18
    :try_end_77
    .catchall {:try_start_70 .. :try_end_77} :catchall_ea

    const/4 v2, 0x0

    :try_start_78
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mClear:Z

    if-eqz v3, :cond_9d

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    invoke-static {v3}, Landroid/app/SharedPreferencesImpl;->-get4(Landroid/app/SharedPreferencesImpl;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_98

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    invoke-static {v3}, Landroid/app/SharedPreferencesImpl;->-get4(Landroid/app/SharedPreferencesImpl;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    :cond_98
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mClear:Z

    :cond_9d
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_a9
    :goto_a9
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_122

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    if-eq v0, v1, :cond_c7

    if-nez v17, :cond_f0

    :cond_c7
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    invoke-static {v3}, Landroid/app/SharedPreferencesImpl;->-get4(Landroid/app/SharedPreferencesImpl;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a9

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    invoke-static {v3}, Landroid/app/SharedPreferencesImpl;->-get4(Landroid/app/SharedPreferencesImpl;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v14}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_e0
    const/4 v2, 0x1

    if-eqz v13, :cond_a9

    invoke-interface {v6, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_e6
    .catchall {:try_start_78 .. :try_end_e6} :catchall_e7

    goto :goto_a9

    :catchall_e7
    move-exception v3

    :try_start_e8
    monitor-exit v18

    throw v3
    :try_end_ea
    .catchall {:try_start_e8 .. :try_end_ea} :catchall_ea

    :catchall_ea
    move-exception v3

    :goto_eb
    monitor-exit v9

    throw v3

    :cond_ed
    const/4 v13, 0x0

    goto/16 :goto_53

    :cond_f0
    :try_start_f0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    invoke-static {v3}, Landroid/app/SharedPreferencesImpl;->-get4(Landroid/app/SharedPreferencesImpl;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_114

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    invoke-static {v3}, Landroid/app/SharedPreferencesImpl;->-get4(Landroid/app/SharedPreferencesImpl;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_114

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a9

    :cond_114
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    invoke-static {v3}, Landroid/app/SharedPreferencesImpl;->-get4(Landroid/app/SharedPreferencesImpl;)Ljava/util/Map;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-interface {v3, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e0

    :cond_122
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    if-eqz v2, :cond_13c

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    invoke-static {v3}, Landroid/app/SharedPreferencesImpl;->-get0(Landroid/app/SharedPreferencesImpl;)J

    move-result-wide v20

    const-wide/16 v22, 0x1

    add-long v20, v20, v22

    move-wide/from16 v0, v20

    invoke-static {v3, v0, v1}, Landroid/app/SharedPreferencesImpl;->-set0(Landroid/app/SharedPreferencesImpl;J)J

    :cond_13c
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    invoke-static {v3}, Landroid/app/SharedPreferencesImpl;->-get0(Landroid/app/SharedPreferencesImpl;)J
    :try_end_143
    .catchall {:try_start_f0 .. :try_end_143} :catchall_e7

    move-result-wide v4

    :try_start_144
    monitor-exit v18
    :try_end_145
    .catchall {:try_start_144 .. :try_end_145} :catchall_ea

    monitor-exit v9

    new-instance v3, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v9}, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;-><init>(JLjava/util/List;Ljava/util/Set;Ljava/util/Map;Landroid/app/SharedPreferencesImpl$MemoryCommitResult;)V

    return-object v3

    :catchall_14d
    move-exception v3

    move-object v6, v15

    goto :goto_eb
.end method

.method private notifyListeners(Landroid/app/SharedPreferencesImpl$MemoryCommitResult;)V
    .registers 8

    iget-object v4, p1, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->listeners:Ljava/util/Set;

    if-eqz v4, :cond_8

    iget-object v4, p1, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->keysModified:Ljava/util/List;

    if-nez v4, :cond_9

    :cond_8
    return-void

    :cond_9
    iget-object v4, p1, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->keysModified:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_8

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    if-ne v4, v5, :cond_4a

    iget-object v4, p1, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->keysModified:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    :goto_23
    if-ltz v0, :cond_54

    iget-object v4, p1, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->keysModified:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v4, p1, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->listeners:Ljava/util/Set;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_33
    :goto_33
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_47

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    if-eqz v2, :cond_33

    iget-object v4, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    invoke-interface {v2, v4, v1}, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    goto :goto_33

    :cond_47
    add-int/lit8 v0, v0, -0x1

    goto :goto_23

    :cond_4a
    sget-object v4, Landroid/app/ActivityThread;->sMainThreadHandler:Landroid/os/Handler;

    new-instance v5, Landroid/app/SharedPreferencesImpl$EditorImpl$3;

    invoke-direct {v5, p0, p1}, Landroid/app/SharedPreferencesImpl$EditorImpl$3;-><init>(Landroid/app/SharedPreferencesImpl$EditorImpl;Landroid/app/SharedPreferencesImpl$MemoryCommitResult;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_54
    return-void
.end method


# virtual methods
.method public apply()V
    .registers 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl$EditorImpl;->commitToMemory()Landroid/app/SharedPreferencesImpl$MemoryCommitResult;

    move-result-object v1

    new-instance v0, Landroid/app/SharedPreferencesImpl$EditorImpl$1;

    invoke-direct {v0, p0, v1, v4, v5}, Landroid/app/SharedPreferencesImpl$EditorImpl$1;-><init>(Landroid/app/SharedPreferencesImpl$EditorImpl;Landroid/app/SharedPreferencesImpl$MemoryCommitResult;J)V

    invoke-static {v0}, Landroid/app/QueuedWork;->addFinisher(Ljava/lang/Runnable;)V

    new-instance v2, Landroid/app/SharedPreferencesImpl$EditorImpl$2;

    invoke-direct {v2, p0, v0}, Landroid/app/SharedPreferencesImpl$EditorImpl$2;-><init>(Landroid/app/SharedPreferencesImpl$EditorImpl;Ljava/lang/Runnable;)V

    iget-object v3, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    invoke-static {v3, v1, v2}, Landroid/app/SharedPreferencesImpl;->-wrap0(Landroid/app/SharedPreferencesImpl;Landroid/app/SharedPreferencesImpl$MemoryCommitResult;Ljava/lang/Runnable;)V

    invoke-direct {p0, v1}, Landroid/app/SharedPreferencesImpl$EditorImpl;->notifyListeners(Landroid/app/SharedPreferencesImpl$MemoryCommitResult;)V

    return-void
.end method

.method public clear()Landroid/content/SharedPreferences$Editor;
    .registers 3

    iget-object v0, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mClear:Z
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_8

    monitor-exit v0

    return-object p0

    :catchall_8
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public commit()Z
    .registers 7

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl$EditorImpl;->commitToMemory()Landroid/app/SharedPreferencesImpl$MemoryCommitResult;

    move-result-object v1

    iget-object v4, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    const/4 v5, 0x0

    invoke-static {v4, v1, v5}, Landroid/app/SharedPreferencesImpl;->-wrap0(Landroid/app/SharedPreferencesImpl;Landroid/app/SharedPreferencesImpl$MemoryCommitResult;Ljava/lang/Runnable;)V

    :try_start_c
    iget-object v4, v1, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->writtenToDiskLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_11} :catch_17
    .catchall {:try_start_c .. :try_end_11} :catchall_1a

    invoke-direct {p0, v1}, Landroid/app/SharedPreferencesImpl$EditorImpl;->notifyListeners(Landroid/app/SharedPreferencesImpl$MemoryCommitResult;)V

    iget-boolean v4, v1, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->writeToDiskResult:Z

    return v4

    :catch_17
    move-exception v0

    const/4 v4, 0x0

    return v4

    :catchall_1a
    move-exception v4

    throw v4
.end method

.method public putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .registers 6

    iget-object v1, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    monitor-exit v1

    return-object p0

    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .registers 6

    iget-object v1, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    monitor-exit v1

    return-object p0

    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .registers 6

    iget-object v1, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    monitor-exit v1

    return-object p0

    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    .registers 8

    iget-object v1, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    monitor-exit v1

    return-object p0

    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .registers 5

    iget-object v1, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    return-object p0

    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/SharedPreferences$Editor;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    iget-object v2, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    if-nez p2, :cond_d

    :goto_8
    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_13

    monitor-exit v1

    return-object p0

    :cond_d
    :try_start_d
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_13

    goto :goto_8

    :catchall_13
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .registers 4

    iget-object v1, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    return-object p0

    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

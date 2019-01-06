.class public final Lmiui/log/AndroidTags;
.super Ljava/lang/Object;
.source "AndroidTags.java"


# static fields
.field static final TAG_AM_DEBUG_BROADCAST:Ljava/lang/String; = "com.android.server.am.ActivityManagerService.DEBUG_BROADCAST"

.field private static final androidTagMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lmiui/log/AndroidTag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/log/AndroidTags;->androidTagMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized add(Ljava/lang/Class;Ljava/lang/String;Z)Lmiui/log/AndroidTag;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Z)",
            "Lmiui/log/AndroidTag;"
        }
    .end annotation

    const-class v2, Lmiui/log/AndroidTags;

    monitor-enter v2

    :try_start_3
    sget-object v1, Lmiui/log/AndroidTags;->androidTagMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Lmiui/log/AndroidTag;->buildFieldFullPath(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/log/AndroidTag;

    if-nez v0, :cond_1d

    new-instance v0, Lmiui/log/AndroidTag;

    invoke-direct {v0, p0, p1, p2}, Lmiui/log/AndroidTag;-><init>(Ljava/lang/Class;Ljava/lang/String;Z)V

    sget-object v1, Lmiui/log/AndroidTags;->androidTagMap:Ljava/util/HashMap;

    iget-object v3, v0, Lmiui/log/AndroidTag;->fieldFullPath:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1f

    :cond_1d
    monitor-exit v2

    return-object v0

    :catchall_1f
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static create(Ljava/lang/String;)Lmiui/log/AndroidTag;
    .registers 10

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v6, 0x2e

    invoke-virtual {p0, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    if-gez v5, :cond_b

    return-object v8

    :cond_b
    invoke-virtual {p0, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v6, v5, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2d

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2e

    :cond_2d
    return-object v8

    :cond_2e
    sget-object v6, Lmiui/log/AndroidTag;->BOOTCLASSLOADER:Ljava/lang/ClassLoader;

    invoke-static {v0, v6}, Lmiui/util/ReflectionUtils;->tryFindClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_37

    return-object v8

    :cond_37
    const-class v6, Ljava/lang/Boolean;

    invoke-static {v1, v4, v6}, Lmiui/util/ReflectionUtils;->tryGetStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Lmiui/util/ObjectReference;

    move-result-object v3

    if-nez v3, :cond_46

    :cond_3f
    const/4 v2, 0x0

    :goto_40
    new-instance v6, Lmiui/log/AndroidTag;

    invoke-direct {v6, v1, v4, v2}, Lmiui/log/AndroidTag;-><init>(Ljava/lang/Class;Ljava/lang/String;Z)V

    return-object v6

    :cond_46
    invoke-virtual {v3}, Lmiui/util/ObjectReference;->get()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_3f

    invoke-virtual {v3}, Lmiui/util/ObjectReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_40
.end method

.method public static declared-synchronized get(Ljava/lang/String;)Lmiui/log/AndroidTag;
    .registers 4

    const-class v2, Lmiui/log/AndroidTags;

    monitor-enter v2

    :try_start_3
    sget-object v1, Lmiui/log/AndroidTags;->androidTagMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    sget-object v1, Lmiui/log/AndroidTags;->androidTagMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/log/AndroidTag;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_20

    monitor-exit v2

    return-object v1

    :cond_15
    :try_start_15
    invoke-static {p0}, Lmiui/log/AndroidTags;->create(Ljava/lang/String;)Lmiui/log/AndroidTag;

    move-result-object v0

    sget-object v1, Lmiui/log/AndroidTags;->androidTagMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_20

    monitor-exit v2

    return-object v0

    :catchall_20
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized isOn(Ljava/lang/String;)Z
    .registers 4

    const-class v2, Lmiui/log/AndroidTags;

    monitor-enter v2

    :try_start_3
    invoke-static {p0}, Lmiui/log/AndroidTags;->get(Ljava/lang/String;)Lmiui/log/AndroidTag;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lmiui/log/AndroidTag;->isOn()Z
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_12

    move-result v1

    monitor-exit v2

    return v1

    :cond_f
    const/4 v1, 0x0

    monitor-exit v2

    return v1

    :catchall_12
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized switchOff(Ljava/lang/String;)V
    .registers 4

    const-class v2, Lmiui/log/AndroidTags;

    monitor-enter v2

    :try_start_3
    invoke-static {p0}, Lmiui/log/AndroidTags;->get(Ljava/lang/String;)Lmiui/log/AndroidTag;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lmiui/log/AndroidTag;->switchOff()V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    :cond_c
    monitor-exit v2

    return-void

    :catchall_e
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized switchOn(Ljava/lang/String;)V
    .registers 4

    const-class v2, Lmiui/log/AndroidTags;

    monitor-enter v2

    :try_start_3
    invoke-static {p0}, Lmiui/log/AndroidTags;->get(Ljava/lang/String;)Lmiui/log/AndroidTag;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lmiui/log/AndroidTag;->switchOn()V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    :cond_c
    monitor-exit v2

    return-void

    :catchall_e
    move-exception v1

    monitor-exit v2

    throw v1
.end method

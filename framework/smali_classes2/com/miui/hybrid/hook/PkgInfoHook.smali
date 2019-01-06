.class public Lcom/miui/hybrid/hook/PkgInfoHook;
.super Ljava/lang/Object;
.source "PkgInfoHook.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "PkgInfoHook"

.field private static volatile sInstance:Lcom/miui/hybrid/hook/PkgInfoHook;


# instance fields
.field private fakeData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/hybrid/hook/PkgInfoHook;->fakeData:Ljava/util/Map;

    return-void
.end method

.method public static getInstance()Lcom/miui/hybrid/hook/PkgInfoHook;
    .registers 2

    sget-object v0, Lcom/miui/hybrid/hook/PkgInfoHook;->sInstance:Lcom/miui/hybrid/hook/PkgInfoHook;

    if-nez v0, :cond_13

    const-class v1, Lcom/miui/hybrid/hook/PkgInfoHook;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/miui/hybrid/hook/PkgInfoHook;->sInstance:Lcom/miui/hybrid/hook/PkgInfoHook;

    if-nez v0, :cond_12

    new-instance v0, Lcom/miui/hybrid/hook/PkgInfoHook;

    invoke-direct {v0}, Lcom/miui/hybrid/hook/PkgInfoHook;-><init>()V

    sput-object v0, Lcom/miui/hybrid/hook/PkgInfoHook;->sInstance:Lcom/miui/hybrid/hook/PkgInfoHook;
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_16

    :cond_12
    monitor-exit v1

    :cond_13
    sget-object v0, Lcom/miui/hybrid/hook/PkgInfoHook;->sInstance:Lcom/miui/hybrid/hook/PkgInfoHook;

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public delete(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .registers 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    const-string/jumbo v1, "PkgInfoHook"

    const-string/jumbo v2, "Expect non-null pkgName."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    :cond_11
    iget-object v1, p0, Lcom/miui/hybrid/hook/PkgInfoHook;->fakeData:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    const-string/jumbo v1, "PkgInfoHook"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "remove "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " pInfo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public hook(Landroid/content/pm/PackageInfo;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .registers 8

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2b

    iget-object v1, p0, Lcom/miui/hybrid/hook/PkgInfoHook;->fakeData:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_2b

    const-string/jumbo v1, "PkgInfoHook"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "hook "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_2b
    return-object p1
.end method

.method public insert(Landroid/content/pm/PackageInfo;)Z
    .registers 5

    if-eqz p1, :cond_a

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_a
    const-string/jumbo v0, "PkgInfoHook"

    const-string/jumbo v1, "PkgInfoHook.insert(PackageInfo) failed."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_15
    iget-object v0, p0, Lcom/miui/hybrid/hook/PkgInfoHook;->fakeData:Ljava/util/Map;

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "PkgInfoHook"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "insert "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

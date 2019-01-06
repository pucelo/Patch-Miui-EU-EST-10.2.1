.class Lcom/android/server/am/ActivityManagerServiceInjector$SettingObserver;
.super Landroid/database/ContentObserver;
.source "ActivityManagerServiceInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerServiceInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SettingObserver"
.end annotation


# instance fields
.field private final URI_ANR_PACKAGES:Landroid/net/Uri;

.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string/jumbo v0, "anr_pkgs"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector$SettingObserver;->URI_ANR_PACKAGES:Landroid/net/Uri;

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceInjector$SettingObserver;->context:Landroid/content/Context;

    return-void
.end method

.method private dump()V
    .registers 6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_c
    invoke-static {}, Lcom/android/server/am/ActivityManagerServiceInjector;->-get0()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2d

    invoke-static {}, Lcom/android/server/am/ActivityManagerServiceInjector;->-get0()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_2d
    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ActivityManagerServiceInjector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sPackageList:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private update()V
    .registers 8

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerServiceInjector$SettingObserver;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "anr_pkgs"

    invoke-static {v4, v5}, Landroid/provider/MiuiSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3d

    :try_start_f
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/ActivityManagerServiceInjector;->-get0()Ljava/util/List;

    move-result-object v5

    monitor-enter v5
    :try_end_19
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_19} :catch_41

    :try_start_19
    invoke-static {}, Lcom/android/server/am/ActivityManagerServiceInjector;->-get0()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    :goto_21
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_39

    invoke-static {}, Lcom/android/server/am/ActivityManagerServiceInjector;->-get0()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :cond_39
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerServiceInjector$SettingObserver;->dump()V
    :try_end_3c
    .catchall {:try_start_19 .. :try_end_3c} :catchall_3e

    :try_start_3c
    monitor-exit v5

    :cond_3d
    :goto_3d
    return-void

    :catchall_3e
    move-exception v4

    monitor-exit v5

    throw v4
    :try_end_41
    .catch Lorg/json/JSONException; {:try_start_3c .. :try_end_41} :catch_41

    :catch_41
    move-exception v2

    const-string/jumbo v4, "ActivityManagerServiceInjector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "json error while parse anr packageNames string:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d
.end method


# virtual methods
.method public observe()V
    .registers 4

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceInjector$SettingObserver;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceInjector$SettingObserver;->URI_ANR_PACKAGES:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerServiceInjector$SettingObserver;->update()V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector$SettingObserver;->URI_ANR_PACKAGES:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerServiceInjector$SettingObserver;->update()V

    :cond_e
    return-void
.end method

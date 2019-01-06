.class public abstract Landroid/location/SettingInjectorService;
.super Landroid/app/Service;
.source "SettingInjectorService.java"


# static fields
.field public static final ACTION_INJECTED_SETTING_CHANGED:Ljava/lang/String; = "android.location.InjectedSettingChanged"

.field public static final ACTION_SERVICE_INTENT:Ljava/lang/String; = "android.location.SettingInjectorService"

.field public static final ATTRIBUTES_NAME:Ljava/lang/String; = "injected-location-setting"

.field public static final ENABLED_KEY:Ljava/lang/String; = "enabled"

.field public static final MESSENGER_KEY:Ljava/lang/String; = "messenger"

.field public static final META_DATA_NAME:Ljava/lang/String; = "android.location.SettingInjectorService"

.field private static final TAG:Ljava/lang/String; = "SettingInjectorService"


# instance fields
.field private final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    iput-object p1, p0, Landroid/location/SettingInjectorService;->mName:Ljava/lang/String;

    return-void
.end method

.method private onHandleIntent(Landroid/content/Intent;)V
    .registers 5

    :try_start_0
    invoke-virtual {p0}, Landroid/location/SettingInjectorService;->onGetEnabled()Z
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_8

    move-result v1

    invoke-direct {p0, p1, v1}, Landroid/location/SettingInjectorService;->sendStatus(Landroid/content/Intent;Z)V

    return-void

    :catch_8
    move-exception v0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Landroid/location/SettingInjectorService;->sendStatus(Landroid/content/Intent;Z)V

    throw v0
.end method

.method private sendStatus(Landroid/content/Intent;Z)V
    .registers 10

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v4, "enabled"

    invoke-virtual {v0, v4, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const-string/jumbo v4, "SettingInjectorService"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_52

    const-string/jumbo v4, "SettingInjectorService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Landroid/location/SettingInjectorService;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": received "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", enabled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", sending message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_52
    const-string/jumbo v4, "messenger"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/Messenger;

    :try_start_5b
    invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_5b .. :try_end_5e} :catch_5f

    :goto_5e
    return-void

    :catch_5f
    move-exception v1

    const-string/jumbo v4, "SettingInjectorService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Landroid/location/SettingInjectorService;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": sending dynamic status failed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5e
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract onGetEnabled()Z
.end method

.method protected abstract onGetSummary()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public final onStart(Landroid/content/Intent;I)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .registers 5

    invoke-direct {p0, p1}, Landroid/location/SettingInjectorService;->onHandleIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p3}, Landroid/location/SettingInjectorService;->stopSelf(I)V

    const/4 v0, 0x2

    return v0
.end method

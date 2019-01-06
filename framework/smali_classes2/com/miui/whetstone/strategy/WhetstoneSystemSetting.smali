.class public Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;
.super Ljava/util/Observable;
.source "WhetstoneSystemSetting.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mConfigMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mWhetstoneActivityManagerService:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/whetstone/server/WhetstoneActivityManagerService;)V
    .registers 4

    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;->mConfigMap:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p1, p0, Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;->mWhetstoneActivityManagerService:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    return-void
.end method

.method private finishCommonAllowed(ILandroid/content/ComponentName;Ljava/lang/Boolean;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez v0, :cond_21

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_21

    iget-object v2, p0, Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;->mWhetstoneActivityManagerService:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    invoke-virtual {v2, p1}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getPackageNamebyPid(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_21

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    const/4 v0, 0x1

    :cond_21
    return v0
.end method


# virtual methods
.method public finishIsStartPorcessAllowedByBroadcast(ILandroid/content/Intent;Landroid/content/ComponentName;Ljava/lang/Boolean;)Z
    .registers 9

    const/4 v3, 0x1

    const-string/jumbo v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-ne v1, v2, :cond_f

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    return v3

    :cond_f
    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, p4}, Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;->finishCommonAllowed(ILandroid/content/ComponentName;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public finishstartServiceAllowed(ILandroid/content/ComponentName;IZZ)Z
    .registers 8

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne p1, v1, :cond_a

    const/4 p5, 0x1

    const/4 v1, 0x1

    return v1

    :cond_a
    if-eqz p2, :cond_14

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;->finishCommonAllowed(ILandroid/content/ComponentName;Ljava/lang/Boolean;)Z

    move-result v0

    :cond_14
    return v0
.end method

.method public finishstartServiceAllowed(ILandroid/content/Intent;Ljava/lang/Boolean;)Z
    .registers 5

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    return v0
.end method

.method public getCommonConfigInBoolean(Ljava/lang/String;Z)Z
    .registers 6

    move v0, p2

    iget-object v2, p0, Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;->mConfigMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_11

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :cond_11
    return v0
.end method

.method public getCommonConfigInInt(Ljava/lang/String;I)I
    .registers 6

    move v0, p2

    iget-object v2, p0, Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;->mConfigMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_11

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_11
    return v0
.end method

.method public getCommonConfigInJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    .registers 4

    iget-object v1, p0, Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;->mConfigMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg/json/JSONArray;

    if-eqz v1, :cond_d

    check-cast v0, Lorg/json/JSONArray;

    return-object v0

    :cond_d
    const/4 v1, 0x0

    return-object v1
.end method

.method public getCommonConfigInJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 4

    iget-object v1, p0, Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;->mConfigMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg/json/JSONObject;

    if-eqz v1, :cond_d

    check-cast v0, Lorg/json/JSONObject;

    return-object v0

    :cond_d
    const/4 v1, 0x0

    return-object v1
.end method

.method public getCommonConfigInString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    move-object v0, p2

    iget-object v2, p0, Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;->mConfigMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_e

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    :cond_e
    return-object v0
.end method

.method public updateFrameworkCommonConfig(Ljava/lang/String;)V
    .registers 10

    sget-object v5, Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateFrameworkCommonConfig json:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_19
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_56

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;->mConfigMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_37
    .catch Lorg/json/JSONException; {:try_start_19 .. :try_end_37} :catch_38

    goto :goto_22

    :catch_38
    move-exception v0

    sget-object v5, Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateFrameworkCommonConfig JSONException e:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_56
    invoke-virtual {p0}, Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;->setChanged()V

    invoke-virtual {p0}, Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;->notifyObservers()V

    return-void
.end method

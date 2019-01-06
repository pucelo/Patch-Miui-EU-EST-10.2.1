.class Lcom/miui/server/MiuiInitServer$InitCustEnvironmentTask;
.super Ljava/lang/Thread;
.source "MiuiInitServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/MiuiInitServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InitCustEnvironmentTask"
.end annotation


# instance fields
.field private mCustVarinat:Ljava/lang/String;

.field private mObs:Lmiui/os/IMiuiInitObserver;

.field final synthetic this$0:Lcom/miui/server/MiuiInitServer;


# direct methods
.method constructor <init>(Lcom/miui/server/MiuiInitServer;Ljava/lang/String;Lmiui/os/IMiuiInitObserver;)V
    .registers 4

    iput-object p1, p0, Lcom/miui/server/MiuiInitServer$InitCustEnvironmentTask;->this$0:Lcom/miui/server/MiuiInitServer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/miui/server/MiuiInitServer$InitCustEnvironmentTask;->mCustVarinat:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/server/MiuiInitServer$InitCustEnvironmentTask;->mObs:Lmiui/os/IMiuiInitObserver;

    return-void
.end method

.method private importCustProperties(Ljava/io/File;Z)V
    .registers 10

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4a

    :try_start_6
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/4 v3, 0x0

    :cond_11
    :goto_11
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_55

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "#"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_11

    const-string/jumbo v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_11

    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_11

    const-string/jumbo v5, "persist.sys.timezone"

    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4b

    if-eqz p2, :cond_4b

    const-string/jumbo v5, "MiuiInitServer"

    const-string/jumbo v6, "persist.sys.timezone will not be changed when AUTO_TIME_ZONE is open!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    :catch_49
    move-exception v1

    :cond_4a
    :goto_4a
    return-void

    :cond_4b
    const/4 v5, 0x0

    aget-object v5, v4, v5

    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    :cond_55
    invoke-direct {p0}, Lcom/miui/server/MiuiInitServer$InitCustEnvironmentTask;->pokeSystemProperties()V

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_5e} :catch_49

    goto :goto_4a
.end method

.method private initCustEnvironment(Ljava/lang/String;)Z
    .registers 7

    invoke-static {p1}, Lmiui/util/CustomizeUtil;->setMiuiCustVariatDir(Ljava/lang/String;)V

    invoke-static {}, Lmiui/util/CustomizeUtil;->getMiuiCustVariantDir()Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_b

    const/4 v3, 0x0

    return v3

    :cond_b
    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "cust.prop"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/server/MiuiInitServer$InitCustEnvironmentTask;->isTimeZoneAuto()Z

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/miui/server/MiuiInitServer$InitCustEnvironmentTask;->importCustProperties(Ljava/io/File;Z)V

    invoke-direct {p0, p1}, Lcom/miui/server/MiuiInitServer$InitCustEnvironmentTask;->saveCustVariantToFile(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/miui/server/MiuiInitServer$InitCustEnvironmentTask;->this$0:Lcom/miui/server/MiuiInitServer;

    invoke-static {v3}, Lcom/miui/server/MiuiInitServer;->-get0(Lcom/miui/server/MiuiInitServer;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "wifi_country_code"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_51

    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_51

    iget-object v3, p0, Lcom/miui/server/MiuiInitServer$InitCustEnvironmentTask;->this$0:Lcom/miui/server/MiuiInitServer;

    invoke-static {v3}, Lcom/miui/server/MiuiInitServer;->-get0(Lcom/miui/server/MiuiInitServer;)Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/net/wifi/WifiManager;->setCountryCode(Ljava/lang/String;Z)V

    :cond_51
    invoke-direct {p0}, Lcom/miui/server/MiuiInitServer$InitCustEnvironmentTask;->installVanwardCustApps()V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    return v3
.end method

.method private installVanwardCustApps()V
    .registers 1

    invoke-static {}, Lcom/android/server/pm/PreinstallApp;->installVanwardCustApps()V

    return-void
.end method

.method private isTimeZoneAuto()Z
    .registers 6

    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/miui/server/MiuiInitServer$InitCustEnvironmentTask;->this$0:Lcom/miui/server/MiuiInitServer;

    invoke-static {v2}, Lcom/miui/server/MiuiInitServer;->-get0(Lcom/miui/server/MiuiInitServer;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "auto_time_zone"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_11
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_11} :catch_16

    move-result v2

    if-lez v2, :cond_15

    const/4 v1, 0x1

    :cond_15
    return v1

    :catch_16
    move-exception v0

    const-string/jumbo v2, "MiuiInitServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "AUTO_TIME_ZONE can\'t found : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private pokeSystemProperties()V
    .registers 12

    const/4 v6, 0x0

    :try_start_1
    invoke-static {}, Landroid/os/ServiceManager;->listServices()[Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_22

    move-result-object v5

    array-length v7, v5

    :goto_6
    if-ge v6, v7, :cond_4d

    aget-object v4, v5, v6

    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_1f

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const v8, 0x5f535052

    const/4 v9, 0x0

    const/4 v10, 0x0

    :try_start_19
    invoke-interface {v3, v8, v0, v9, v10}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1c} :catch_4b
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1c} :catch_24

    :goto_1c
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    :cond_1f
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :catch_22
    move-exception v2

    return-void

    :catch_24
    move-exception v2

    const-string/jumbo v8, "MiuiInitServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Someone wrote a bad service \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\' that doesn\'t like to be poked: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    :catch_4b
    move-exception v1

    goto :goto_1c

    :cond_4d
    return-void
.end method

.method private saveCustVariantToFile(Ljava/lang/String;)V
    .registers 8

    invoke-static {}, Lmiui/util/CustomizeUtil;->getMiuiCustVariantFile()Ljava/io/File;

    move-result-object v1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_14

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    :cond_14
    new-instance v3, Ljava/io/FileWriter;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    new-instance v0, Ljava/io/BufferedWriter;

    invoke-direct {v0, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Ljava/io/File;->setReadable(ZZ)Z
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_2d} :catch_2e

    :goto_2d
    return-void

    :catch_2e
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2d
.end method


# virtual methods
.method public run()V
    .registers 9

    iget-object v4, p0, Lcom/miui/server/MiuiInitServer$InitCustEnvironmentTask;->mCustVarinat:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/miui/server/MiuiInitServer$InitCustEnvironmentTask;->initCustEnvironment(Ljava/lang/String;)Z

    move-result v3

    iget-object v4, p0, Lcom/miui/server/MiuiInitServer$InitCustEnvironmentTask;->mObs:Lmiui/os/IMiuiInitObserver;

    if-eqz v4, :cond_f

    :try_start_a
    iget-object v4, p0, Lcom/miui/server/MiuiInitServer$InitCustEnvironmentTask;->mObs:Lmiui/os/IMiuiInitObserver;

    invoke-interface {v4, v3}, Lmiui/os/IMiuiInitObserver;->initDone(Z)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_5a

    :cond_f
    :goto_f
    iget-object v4, p0, Lcom/miui/server/MiuiInitServer$InitCustEnvironmentTask;->this$0:Lcom/miui/server/MiuiInitServer;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/miui/server/MiuiInitServer;->-set0(Lcom/miui/server/MiuiInitServer;Z)Z

    :try_start_15
    invoke-static {}, Lmiui/content/res/GlobalConfiguration;->get()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0}, Lmiui/content/res/GlobalConfiguration;->getExtraConfig(Landroid/content/res/Configuration;)Landroid/content/res/MiuiConfiguration;

    move-result-object v4

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/res/MiuiConfiguration;->updateTheme(J)V

    invoke-static {v0}, Lmiui/content/res/GlobalConfiguration;->update(Landroid/content/res/Configuration;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_25} :catch_55

    :goto_25
    iget-object v4, p0, Lcom/miui/server/MiuiInitServer$InitCustEnvironmentTask;->this$0:Lcom/miui/server/MiuiInitServer;

    invoke-static {v4}, Lcom/miui/server/MiuiInitServer;->-get0(Lcom/miui/server/MiuiInitServer;)Landroid/content/Context;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v6, "miui.intent.action.MIUI_INIT_COMPLETED"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "miui.os.permisson.INIT_MIUI_ENVIRONMENT"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "miui.intent.action.MIUI_REGION_CHANGED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "region"

    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/miui/server/MiuiInitServer$InitCustEnvironmentTask;->this$0:Lcom/miui/server/MiuiInitServer;

    invoke-static {v4}, Lcom/miui/server/MiuiInitServer;->-get0(Lcom/miui/server/MiuiInitServer;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :catch_55
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_25

    :catch_5a
    move-exception v1

    goto :goto_f
.end method

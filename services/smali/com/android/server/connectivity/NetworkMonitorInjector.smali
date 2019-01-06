.class Lcom/android/server/connectivity/NetworkMonitorInjector;
.super Ljava/lang/Object;
.source "NetworkMonitorInjector.java"


# static fields
.field private static final SOCKET_TIMEOUT_MS:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "NetworkMonitorInjector"

.field private static final sDefaultCandidates:[Ljava/lang/String;

.field private static final sGlobalCandidates:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "http://info.3g.qq.com/"

    aput-object v1, v0, v2

    const-string/jumbo v1, "http://m.baidu.com/"

    aput-object v1, v0, v3

    const-string/jumbo v1, "http://m.sohu.com/"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/connectivity/NetworkMonitorInjector;->sDefaultCandidates:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "http://www.google.com/"

    aput-object v1, v0, v2

    const-string/jumbo v1, "http://www.facebook.com/"

    aput-object v1, v0, v3

    const-string/jumbo v1, "http://www.youtube.com/"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/connectivity/NetworkMonitorInjector;->sGlobalCandidates:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final enableDataAndWifiRoam(Landroid/content/Context;)Z
    .registers 2

    invoke-static {p0}, Lcom/android/server/MiuiConfigCaptivePortal;->enableDataAndWifiRoam(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static final getCaptivePortalPendingIntent(Landroid/content/Context;Landroid/app/PendingIntent;Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkAgentInfo;I)Landroid/app/PendingIntent;
    .registers 10

    const/high16 v4, 0x8000000

    const/4 v3, 0x0

    if-eqz p3, :cond_41

    iget-object v1, p3, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_41

    if-eqz p1, :cond_41

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_41

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "miui.intent.extra.CAPTIVE_PORTAL"

    new-instance v2, Lcom/android/server/connectivity/NetworkMonitorInjector$1;

    invoke-direct {v2, p2, p4}, Lcom/android/server/connectivity/NetworkMonitorInjector$1;-><init>(Lcom/android/server/connectivity/NetworkMonitor;I)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    const-string/jumbo v1, "miui.intent.extra.NETWORK"

    iget-object v2, p3, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v1, "miui.intent.extra.EXPLICIT_SELECTED"

    iget-object v2, p3, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v2, v2, Landroid/net/NetworkMisc;->explicitlySelected:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-static {p0, v3, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    :cond_41
    :goto_41
    return-object p1

    :cond_42
    invoke-static {p0, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    goto :goto_41
.end method

.method static final getCaptivePortalServer(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Lcom/android/server/MiuiConfigCaptivePortal;->getCaptivePortalServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static final getCaptivePortalServer(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 6

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/server/MiuiConfigCaptivePortal;->getCaptivePortalServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_2c

    const-string/jumbo v1, "https"

    :goto_11
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/generate_204"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2b
    return-object p1

    :cond_2c
    const-string/jumbo v1, "http"

    goto :goto_11
.end method

.method static final getCaptivePortalServer(Landroid/content/Context;Ljava/net/URL;)Ljava/net/URL;
    .registers 3

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/MiuiConfigCaptivePortal;->getCaptivePortalServer(Landroid/content/Context;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method static final sendHttpProbe(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/util/LocalLog;)I
    .registers 18

    new-instance v13, Ljava/util/Random;

    invoke-direct {v13}, Ljava/util/Random;-><init>()V

    const/4 v14, 0x3

    invoke-virtual {v13, v14}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    const/4 v12, 0x0

    const/16 v5, 0x257

    sget-boolean v13, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v13, :cond_97

    sget-object v2, Lcom/android/server/connectivity/NetworkMonitorInjector;->sGlobalCandidates:[Ljava/lang/String;

    :goto_13
    :try_start_13
    new-instance v7, Ljava/net/URL;

    aget-object v13, v2, v6

    invoke-direct {v7, v13}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    invoke-virtual {v13, v7}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v12, v0

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const/16 v13, 0x2710

    invoke-virtual {v12, v13}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v13, 0x2710

    invoke-virtual {v12, v13}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "PROBE_HTTP "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " time="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sub-long v14, v10, v8

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "ms"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " ret="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " headers="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V
    :try_end_8b
    .catch Ljava/net/MalformedURLException; {:try_start_13 .. :try_end_8b} :catch_ea
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_8b} :catch_9b
    .catchall {:try_start_13 .. :try_end_8b} :catchall_10d

    if-eqz v12, :cond_90

    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_90
    :goto_90
    const/16 v13, 0xc8

    if-ne v5, v13, :cond_114

    const/16 v13, 0xcc

    :goto_96
    return v13

    :cond_97
    sget-object v2, Lcom/android/server/connectivity/NetworkMonitorInjector;->sDefaultCandidates:[Ljava/lang/String;

    goto/16 :goto_13

    :catch_9b
    move-exception v3

    :try_start_9c
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "NetworkMonitorInjector/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Probably not a portal: exception "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Probably not a portal: exception "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V
    :try_end_e4
    .catchall {:try_start_9c .. :try_end_e4} :catchall_10d

    if-eqz v12, :cond_90

    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_90

    :catch_ea
    move-exception v4

    :try_start_eb
    const-string/jumbo v13, "NetworkMonitorInjector"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Invalid probe URL: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-object v15, v2, v6

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_107
    .catchall {:try_start_eb .. :try_end_107} :catchall_10d

    if-eqz v12, :cond_90

    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_90

    :catchall_10d
    move-exception v13

    if-eqz v12, :cond_113

    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_113
    throw v13

    :cond_114
    const/16 v13, 0x257

    goto :goto_96
.end method

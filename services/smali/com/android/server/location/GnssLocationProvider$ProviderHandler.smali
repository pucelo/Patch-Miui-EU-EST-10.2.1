.class final Lcom/android/server/location/GnssLocationProvider$ProviderHandler;
.super Landroid/os/Handler;
.source "GnssLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GnssLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ProviderHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GnssLocationProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/location/GnssLocationProvider;Landroid/os/Looper;)V
    .registers 5

    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method

.method private handleInitialize()V
    .registers 15

    iget-object v11, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    iget-object v12, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v12}, Lcom/android/server/location/GnssLocationProvider;->-get3(Lcom/android/server/location/GnssLocationProvider;)Landroid/content/Context;

    move-result-object v12

    iget-object v13, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v13}, Lcom/android/server/location/GnssLocationProvider;->-get18(Lcom/android/server/location/GnssLocationProvider;)Ljava/util/Properties;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lcom/android/server/location/GnssLocationProvider;->-wrap38(Lcom/android/server/location/GnssLocationProvider;Landroid/content/Context;Ljava/util/Properties;)V

    iget-object v11, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v11}, Lcom/android/server/location/GnssLocationProvider;->-get3(Lcom/android/server/location/GnssLocationProvider;)Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v12}, Lcom/android/server/location/GnssLocationProvider;->-get17(Lcom/android/server/location/GnssLocationProvider;)Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->-wrap1()Z

    move-result v11

    if-eqz v11, :cond_125

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v11, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-virtual {v1, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v11, "sms"

    invoke-virtual {v1, v11}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string/jumbo v11, "localhost"

    const-string/jumbo v12, "7275"

    invoke-virtual {v1, v11, v12}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v11}, Lcom/android/server/location/GnssLocationProvider;->-get3(Lcom/android/server/location/GnssLocationProvider;)Landroid/content/Context;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v12}, Lcom/android/server/location/GnssLocationProvider;->-get1(Lcom/android/server/location/GnssLocationProvider;)Landroid/content/BroadcastReceiver;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v1, v13, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v11, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {v1, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :try_start_5f
    const-string/jumbo v11, "application/vnd.omaloc-supl-init"

    invoke-virtual {v1, v11}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_65
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_5f .. :try_end_65} :catch_119

    :goto_65
    iget-object v11, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v11}, Lcom/android/server/location/GnssLocationProvider;->-get3(Lcom/android/server/location/GnssLocationProvider;)Landroid/content/Context;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v12}, Lcom/android/server/location/GnssLocationProvider;->-get1(Lcom/android/server/location/GnssLocationProvider;)Landroid/content/BroadcastReceiver;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v1, v13, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_75
    :goto_75
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v11, "com.android.internal.location.ALARM_WAKEUP"

    invoke-virtual {v1, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v11, "com.android.internal.location.ALARM_TIMEOUT"

    invoke-virtual {v1, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v11, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v1, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v11, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v1, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v11, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v11, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v11, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v11}, Lcom/android/server/location/GnssLocationProvider;->-get3(Lcom/android/server/location/GnssLocationProvider;)Landroid/content/Context;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v12}, Lcom/android/server/location/GnssLocationProvider;->-get1(Lcom/android/server/location/GnssLocationProvider;)Landroid/content/BroadcastReceiver;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v1, v13, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v8, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v8}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    const/4 v11, 0x1

    invoke-virtual {v8, v11}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    iget-object v11, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v11}, Lcom/android/server/location/GnssLocationProvider;->-get3(Lcom/android/server/location/GnssLocationProvider;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const-string/jumbo v12, "android.hardware.type.watch"

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d8

    const/4 v11, 0x2

    invoke-virtual {v8, v11}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    :cond_d8
    invoke-virtual {v8}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v5

    iget-object v11, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v11}, Lcom/android/server/location/GnssLocationProvider;->-get2(Lcom/android/server/location/GnssLocationProvider;)Landroid/net/ConnectivityManager;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v12}, Lcom/android/server/location/GnssLocationProvider;->-get13(Lcom/android/server/location/GnssLocationProvider;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v12

    invoke-virtual {v11, v5, v12}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    iget-object v11, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v11}, Lcom/android/server/location/GnssLocationProvider;->-get3(Lcom/android/server/location/GnssLocationProvider;)Landroid/content/Context;

    move-result-object v11

    const-string/jumbo v12, "location"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/LocationManager;

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/4 v9, 0x0

    const-string/jumbo v11, "passive"

    invoke-static {v11, v6, v7, v4, v9}, Landroid/location/LocationRequest;->createFromDeprecatedProvider(Ljava/lang/String;JFZ)Landroid/location/LocationRequest;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/location/LocationRequest;->setHideFromAppOps(Z)V

    new-instance v11, Lcom/android/server/location/GnssLocationProvider$NetworkLocationListener;

    iget-object v12, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Lcom/android/server/location/GnssLocationProvider$NetworkLocationListener;-><init>(Lcom/android/server/location/GnssLocationProvider;Lcom/android/server/location/GnssLocationProvider$NetworkLocationListener;)V

    invoke-virtual {p0}, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->getLooper()Landroid/os/Looper;

    move-result-object v12

    invoke-virtual {v3, v10, v11, v12}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;)V

    return-void

    :catch_119
    move-exception v0

    const-string/jumbo v11, "GnssLocationProvider"

    const-string/jumbo v12, "Malformed SUPL init mime type"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_65

    :cond_125
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->-get0()Z

    move-result v11

    if-eqz v11, :cond_75

    const-string/jumbo v11, "GnssLocationProvider"

    const-string/jumbo v12, "Skipped registration for SMS/WAP-PUSH messages because AGPS Ril in GPS HAL is not supported"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_75
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8

    const/4 v3, 0x2

    const/4 v5, 0x1

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_d6

    :goto_7
    :pswitch_7
    iget v2, p1, Landroid/os/Message;->arg2:I

    if-ne v2, v5, :cond_5f

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/GnssLocationProvider;->-get19(Lcom/android/server/location/GnssLocationProvider;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    const-string/jumbo v2, "GnssLocationProvider"

    const/4 v3, 0x4

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5f

    const-string/jumbo v2, "GnssLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "WakeLock released by handleMessage("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v4, v1}, Lcom/android/server/location/GnssLocationProvider;->-wrap22(Lcom/android/server/location/GnssLocationProvider;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5f
    return-void

    :pswitch_60
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v5, :cond_6a

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/GnssLocationProvider;->-wrap25(Lcom/android/server/location/GnssLocationProvider;)V

    goto :goto_7

    :cond_6a
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/GnssLocationProvider;->-wrap23(Lcom/android/server/location/GnssLocationProvider;)V

    goto :goto_7

    :pswitch_70
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/location/GnssLocationProvider$GpsRequest;

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    iget-object v3, v0, Lcom/android/server/location/GnssLocationProvider$GpsRequest;->request:Lcom/android/internal/location/ProviderRequest;

    iget-object v4, v0, Lcom/android/server/location/GnssLocationProvider$GpsRequest;->source:Landroid/os/WorkSource;

    invoke-static {v2, v3, v4}, Lcom/android/server/location/GnssLocationProvider;->-wrap29(Lcom/android/server/location/GnssLocationProvider;Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    goto :goto_7

    :pswitch_7e
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/Network;

    invoke-static {v3, v2}, Lcom/android/server/location/GnssLocationProvider;->-wrap31(Lcom/android/server/location/GnssLocationProvider;Landroid/net/Network;)V

    goto :goto_7

    :pswitch_88
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/net/InetAddress;

    invoke-static {v3, v2}, Lcom/android/server/location/GnssLocationProvider;->-wrap28(Lcom/android/server/location/GnssLocationProvider;Ljava/net/InetAddress;)V

    goto/16 :goto_7

    :pswitch_93
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2, v3}, Lcom/android/server/location/GnssLocationProvider;->-wrap27(Lcom/android/server/location/GnssLocationProvider;I)V

    goto/16 :goto_7

    :pswitch_9c
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/GnssLocationProvider;->-wrap26(Lcom/android/server/location/GnssLocationProvider;)V

    goto/16 :goto_7

    :pswitch_a3
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/GnssLocationProvider;->-wrap24(Lcom/android/server/location/GnssLocationProvider;)V

    goto/16 :goto_7

    :pswitch_aa
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v2, v3}, Lcom/android/server/location/GnssLocationProvider;->-set1(Lcom/android/server/location/GnssLocationProvider;I)I

    goto/16 :goto_7

    :pswitch_b1
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v2, v3}, Lcom/android/server/location/GnssLocationProvider;->-set0(Lcom/android/server/location/GnssLocationProvider;I)I

    goto/16 :goto_7

    :pswitch_b8
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/location/Location;

    invoke-static {v3, v2}, Lcom/android/server/location/GnssLocationProvider;->-wrap30(Lcom/android/server/location/GnssLocationProvider;Landroid/location/Location;)V

    goto/16 :goto_7

    :pswitch_c3
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v3}, Lcom/android/server/location/GnssLocationProvider;->-get3(Lcom/android/server/location/GnssLocationProvider;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/location/GnssLocationProvider;->-wrap42(Lcom/android/server/location/GnssLocationProvider;Landroid/content/Context;)V

    goto/16 :goto_7

    :pswitch_d0
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->handleInitialize()V

    goto/16 :goto_7

    nop

    :pswitch_data_d6
    .packed-switch 0x2
        :pswitch_60
        :pswitch_70
        :pswitch_7e
        :pswitch_9c
        :pswitch_a3
        :pswitch_b8
        :pswitch_7
        :pswitch_7
        :pswitch_aa
        :pswitch_b1
        :pswitch_c3
        :pswitch_d0
        :pswitch_88
        :pswitch_93
    .end packed-switch
.end method

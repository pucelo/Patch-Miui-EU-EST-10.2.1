.class public Lcom/android/systemui/statusbar/NetworkSpeedView;
.super Landroid/widget/TextView;
.source "NetworkSpeedView.java"

# interfaces
.implements Lcom/android/systemui/DemoMode;
.implements Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/NetworkSpeedView$1;,
        Lcom/android/systemui/statusbar/NetworkSpeedView$2;,
        Lcom/android/systemui/statusbar/NetworkSpeedView$3;,
        Lcom/android/systemui/statusbar/NetworkSpeedView$4;,
        Lcom/android/systemui/statusbar/NetworkSpeedView$WorkHandler;
    }
.end annotation


# static fields
.field private static sViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/NetworkSpeedView;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mBgHandler:Landroid/os/Handler;

.field private mConnectivityReceiver:Landroid/content/BroadcastReceiver;

.field private final mDemoCallback:Lcom/android/systemui/statusbar/policy/DemoModeController$DemoModeCallback;

.field private mDemoMode:Z

.field private mDisabled:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsDriveMode:Z

.field private mIsFirst:Z

.field private mIsNetworkConnected:Z

.field private mLastTime:J

.field private mMaxLength:I

.field private mNetworkSpeedObserver:Landroid/database/ContentObserver;

.field private mNetworkUpdateInterval:I

.field private mNetworkUri:Landroid/net/Uri;

.field private mNotch:Z

.field private mTotalBytes:J


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/NetworkSpeedView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/NetworkSpeedView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mIsNetworkConnected:Z

    return p1
.end method

.method static synthetic -wrap0(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/android/systemui/statusbar/NetworkSpeedView;->formatSpeed(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/NetworkSpeedView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NetworkSpeedView;->postUpdateNetworkSpeed()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/NetworkSpeedView;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NetworkSpeedView;->setTextToViewList(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/statusbar/NetworkSpeedView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NetworkSpeedView;->setVisibilityToViewList(I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/statusbar/NetworkSpeedView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NetworkSpeedView;->updateInterval()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/statusbar/NetworkSpeedView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NetworkSpeedView;->updateNetworkSpeed()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/systemui/statusbar/NetworkSpeedView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NetworkSpeedView;->updateSwitchState()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mIsFirst:Z

    new-instance v0, Lcom/android/systemui/statusbar/NetworkSpeedView$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/NetworkSpeedView$1;-><init>(Lcom/android/systemui/statusbar/NetworkSpeedView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mNetworkSpeedObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/systemui/statusbar/NetworkSpeedView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/NetworkSpeedView$2;-><init>(Lcom/android/systemui/statusbar/NetworkSpeedView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/statusbar/NetworkSpeedView$3;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/NetworkSpeedView$3;-><init>(Lcom/android/systemui/statusbar/NetworkSpeedView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/statusbar/NetworkSpeedView$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/NetworkSpeedView$4;-><init>(Lcom/android/systemui/statusbar/NetworkSpeedView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mDemoCallback:Lcom/android/systemui/statusbar/policy/DemoModeController$DemoModeCallback;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NetworkSpeedView;->initNetworkAssistantProviderUri()V

    return-void
.end method

.method private addToViewList()V
    .locals 2

    sget-object v0, Lcom/android/systemui/statusbar/NetworkSpeedView;->sViewList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mIsFirst:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/NetworkSpeedView;->sViewList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/NetworkSpeedView$WorkHandler;

    sget-object v0, Lcom/android/systemui/Dependency;->NET_BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/statusbar/NetworkSpeedView$WorkHandler;-><init>(Lcom/android/systemui/statusbar/NetworkSpeedView;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mBgHandler:Landroid/os/Handler;

    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/NetworkSpeedView;->sViewList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static formatSpeed(Landroid/content/Context;J)Ljava/lang/String;
    .locals 9

    const/high16 v4, 0x44800000    # 1024.0f

    const/4 v7, 0x1

    const/4 v6, 0x0

    long-to-float v0, p1

    const v1, 0x7f1103a9

    div-float/2addr v0, v4

    const v3, 0x4479c000    # 999.0f

    cmpl-float v3, v0, v3

    if-lez v3, :cond_0

    const v1, 0x7f1103e9

    div-float/2addr v0, v4

    :cond_0
    const/high16 v3, 0x42c80000    # 100.0f

    cmpg-float v3, v0, v3

    if-gez v3, :cond_1

    const-string/jumbo v3, "%.1f"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v6

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const v5, 0x7f110430

    invoke-virtual {v3, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_1
    const-string/jumbo v3, "%.0f"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getTotalByte()J
    .locals 12

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mNetworkUri:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "total_tx_byte"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const-string/jumbo v0, "total_rx_byte"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    add-long/2addr v10, v0

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    if-nez v8, :cond_2

    if-nez v6, :cond_3

    :cond_2
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v0

    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v2

    add-long v10, v0, v2

    :cond_3
    return-wide v10

    :catch_0
    move-exception v7

    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v8, 0x1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private initNetworkAssistantProviderUri()V
    .locals 1

    const-string/jumbo v0, "content://com.miui.networkassistant.provider/na_traffic_stats"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mNetworkUri:Landroid/net/Uri;

    return-void
.end method

.method private postUpdateNetworkSpeed()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/NetworkSpeedView;->postUpdateNetworkSpeedDelay(J)V

    return-void
.end method

.method private postUpdateNetworkSpeedDelay(J)V
    .locals 3

    const/16 v1, 0x66

    iget-object v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mBgHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method private removeFromViewList()V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/android/systemui/statusbar/NetworkSpeedView;->sViewList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/statusbar/NetworkSpeedView;->sViewList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mIsFirst:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mBgHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mBgHandler:Landroid/os/Handler;

    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/NetworkSpeedView;->sViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sput-object v1, Lcom/android/systemui/statusbar/NetworkSpeedView;->sViewList:Ljava/util/ArrayList;

    :cond_1
    return-void
.end method

.method private setTextToViewList(Ljava/lang/CharSequence;)V
    .locals 3

    sget-object v2, Lcom/android/systemui/statusbar/NetworkSpeedView;->sViewList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/systemui/statusbar/NetworkSpeedView;->sViewList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NetworkSpeedView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NetworkSpeedView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setVisibilityToViewList(I)V
    .locals 3

    sget-object v2, Lcom/android/systemui/statusbar/NetworkSpeedView;->sViewList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/systemui/statusbar/NetworkSpeedView;->sViewList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NetworkSpeedView;

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mIsDriveMode:Z

    if-nez v2, :cond_0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mNotch:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NetworkSpeedView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateInterval()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "status_bar_network_speed_interval"

    const/16 v2, 0xfa0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mNetworkUpdateInterval:I

    return-void
.end method

.method private updateNetworkSpeed()V
    .locals 13

    const v12, 0x30d40

    const-wide/16 v10, 0x0

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mDemoMode:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mIsDriveMode:Z

    if-eqz v5, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mIsFirst:Z

    if-nez v5, :cond_2

    return-void

    :cond_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    iput v12, v4, Landroid/os/Message;->what:I

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mDisabled:Z

    if-nez v5, :cond_3

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mIsNetworkConnected:Z

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_4

    :cond_3
    const/4 v5, 0x0

    iput v5, v4, Landroid/os/Message;->arg1:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v12}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iput-wide v10, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mLastTime:J

    iput-wide v10, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mTotalBytes:J

    return-void

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NetworkSpeedView;->getTotalByte()J

    move-result-wide v6

    cmp-long v5, v6, v10

    if-nez v5, :cond_5

    iput-wide v10, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mLastTime:J

    iput-wide v10, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mTotalBytes:J

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NetworkSpeedView;->getTotalByte()J

    move-result-wide v6

    :cond_5
    const-wide/16 v0, 0x0

    iget-wide v8, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mLastTime:J

    cmp-long v5, v8, v10

    if-eqz v5, :cond_6

    iget-wide v8, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mLastTime:J

    cmp-long v5, v2, v8

    if-lez v5, :cond_6

    iget-wide v8, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mTotalBytes:J

    cmp-long v5, v8, v10

    if-eqz v5, :cond_6

    cmp-long v5, v6, v10

    if-eqz v5, :cond_6

    iget-wide v8, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mTotalBytes:J

    cmp-long v5, v6, v8

    if-lez v5, :cond_6

    iget-wide v8, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mTotalBytes:J

    sub-long v8, v6, v8

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    iget-wide v10, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mLastTime:J

    sub-long v10, v2, v10

    div-long v0, v8, v10

    :cond_6
    const/4 v5, 0x1

    iput v5, v4, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v12}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iput-wide v2, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mLastTime:J

    iput-wide v6, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mTotalBytes:J

    iget v5, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mNetworkUpdateInterval:I

    int-to-long v8, v5

    invoke-direct {p0, v8, v9}, Lcom/android/systemui/statusbar/NetworkSpeedView;->postUpdateNetworkSpeedDelay(J)V

    return-void
.end method

.method private updateSwitchState()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mContext:Landroid/content/Context;

    const/4 v1, -0x2

    invoke-static {v0, v1}, Landroid/app/MiuiStatusBarManager;->isShowNetworkSpeedForUser(Landroid/content/Context;I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mDisabled:Z

    return-void
.end method


# virtual methods
.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    const-string/jumbo v0, "demo_mode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "NetworkSpeedView mDemoMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mDemoMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", command = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mDemoMode:Z

    if-nez v0, :cond_1

    const-string/jumbo v0, "enter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mDemoMode:Z

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NetworkSpeedView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mDemoMode:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "exit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mDemoMode:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NetworkSpeedView;->postUpdateNetworkSpeed()V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 6

    const/4 v5, -0x1

    const/4 v4, 0x1

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NetworkSpeedView;->addToViewList()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "status_bar_show_network_speed"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mNetworkSpeedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "status_bar_network_speed_interval"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mNetworkSpeedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mNetworkSpeedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v4}, Landroid/database/ContentObserver;->onChange(Z)V

    const-class v1, Lcom/android/systemui/statusbar/policy/DemoModeController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/DemoModeController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mDemoCallback:Lcom/android/systemui/statusbar/policy/DemoModeController$DemoModeCallback;

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/policy/DemoModeController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 3

    const v0, 0x7f060189

    invoke-static {}, Lcom/android/systemui/Util;->showCtsSpecifiedColor()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NetworkSpeedView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p1, p0, p2}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcherHelper;->inDarkMode(Landroid/graphics/Rect;Landroid/view/View;F)Z

    move-result v2

    if-eqz v2, :cond_0

    const v0, 0x7f060181

    :cond_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NetworkSpeedView;->setTextColor(I)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NetworkSpeedView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p1, p0, p2}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcherHelper;->inDarkMode(Landroid/graphics/Rect;Landroid/view/View;F)Z

    move-result v2

    if-eqz v2, :cond_2

    const v0, 0x7f06018a

    :cond_2
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NetworkSpeedView;->setTextColor(I)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mNetworkSpeedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const-class v0, Lcom/android/systemui/statusbar/policy/DemoModeController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DemoModeController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mDemoCallback:Lcom/android/systemui/statusbar/policy/DemoModeController$DemoModeCallback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/DemoModeController;->removeCallback(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NetworkSpeedView;->removeFromViewList()V

    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mMaxLength:I

    if-ge v1, v0, :cond_0

    iput v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mMaxLength:I

    iget v1, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mMaxLength:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NetworkSpeedView;->setWidth(I)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NetworkSpeedView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    goto :goto_0
.end method

.method public setDriveMode(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mIsDriveMode:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mIsDriveMode:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NetworkSpeedView;->setVisibility(I)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NetworkSpeedView;->postUpdateNetworkSpeed()V

    return-void
.end method

.method public setNotch()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mNotch:Z

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NetworkSpeedView;->setVisibility(I)V

    return-void
.end method

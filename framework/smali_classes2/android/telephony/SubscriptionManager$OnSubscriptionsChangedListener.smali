.class public Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.super Ljava/lang/Object;
.source "SubscriptionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/SubscriptionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnSubscriptionsChangedListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener$1;,
        Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener$2;
    }
.end annotation


# instance fields
.field callback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener$1;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_1c

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_f
    invoke-direct {v1, p0, v0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener$1;-><init>(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener$2;

    invoke-direct {v0, p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener$2;-><init>(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    iput-object v0, p0, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;->callback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    return-void

    :cond_1c
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_f
.end method

.method private log(Ljava/lang/String;)V
    .registers 3

    const-string/jumbo v0, "SubscriptionManager"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .registers 1

    return-void
.end method

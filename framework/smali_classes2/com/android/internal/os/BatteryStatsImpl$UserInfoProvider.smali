.class public abstract Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "UserInfoProvider"
.end annotation


# instance fields
.field private userIds:[I


# direct methods
.method static synthetic -wrap0(Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;I)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;->exists(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;->refreshUserIds()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final exists(I)Z
    .registers 3

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;->userIds:[I

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;->userIds:[I

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.method private final refreshUserIds()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;->getUserIds()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;->userIds:[I

    return-void
.end method


# virtual methods
.method protected abstract getUserIds()[I
.end method

.class final synthetic Landroid/net/lowpan/-$Lambda$ahIH8UUgV8jOvhfOz4liCd3-gII;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic $INST$0:Landroid/net/lowpan/-$Lambda$ahIH8UUgV8jOvhfOz4liCd3-gII;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Landroid/net/lowpan/LowpanScanner;->lambda$-android_net_lowpan_LowpanScanner_4627(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/net/lowpan/-$Lambda$ahIH8UUgV8jOvhfOz4liCd3-gII;

    invoke-direct {v0}, Landroid/net/lowpan/-$Lambda$ahIH8UUgV8jOvhfOz4liCd3-gII;-><init>()V

    sput-object v0, Landroid/net/lowpan/-$Lambda$ahIH8UUgV8jOvhfOz4liCd3-gII;->$INST$0:Landroid/net/lowpan/-$Lambda$ahIH8UUgV8jOvhfOz4liCd3-gII;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/lowpan/-$Lambda$ahIH8UUgV8jOvhfOz4liCd3-gII;->$m$0(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

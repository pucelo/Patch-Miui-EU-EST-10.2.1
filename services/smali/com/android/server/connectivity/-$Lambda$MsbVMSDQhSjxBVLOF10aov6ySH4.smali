.class final synthetic Lcom/android/server/connectivity/-$Lambda$MsbVMSDQhSjxBVLOF10aov6ySH4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic $INST$0:Lcom/android/server/connectivity/-$Lambda$MsbVMSDQhSjxBVLOF10aov6ySH4;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/connectivity/IpConnectivityMetrics;->lambda$-com_android_server_connectivity_IpConnectivityMetrics_10868(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/connectivity/-$Lambda$MsbVMSDQhSjxBVLOF10aov6ySH4;

    invoke-direct {v0}, Lcom/android/server/connectivity/-$Lambda$MsbVMSDQhSjxBVLOF10aov6ySH4;-><init>()V

    sput-object v0, Lcom/android/server/connectivity/-$Lambda$MsbVMSDQhSjxBVLOF10aov6ySH4;->$INST$0:Lcom/android/server/connectivity/-$Lambda$MsbVMSDQhSjxBVLOF10aov6ySH4;

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

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/-$Lambda$MsbVMSDQhSjxBVLOF10aov6ySH4;->$m$0(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

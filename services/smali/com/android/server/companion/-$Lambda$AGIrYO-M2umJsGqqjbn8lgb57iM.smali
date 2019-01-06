.class final synthetic Lcom/android/server/companion/-$Lambda$AGIrYO-M2umJsGqqjbn8lgb57iM;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic $INST$0:Lcom/android/server/companion/-$Lambda$AGIrYO-M2umJsGqqjbn8lgb57iM;

.field public static final synthetic $INST$1:Lcom/android/server/companion/-$Lambda$AGIrYO-M2umJsGqqjbn8lgb57iM;


# instance fields
.field private final synthetic $id:B


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lcom/android/server/companion/CompanionDeviceManagerService$Association;

    invoke-static {p1}, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->lambda$-com_android_server_companion_CompanionDeviceManagerService$CompanionDeviceManagerImpl_9832(Lcom/android/server/companion/CompanionDeviceManagerService$Association;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final synthetic $m$1(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->lambda$-com_android_server_companion_CompanionDeviceManagerService_22200(Ljava/lang/Integer;)Landroid/util/AtomicFile;

    move-result-object v0

    return-object v0
.end method

.method static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/server/companion/-$Lambda$AGIrYO-M2umJsGqqjbn8lgb57iM;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/companion/-$Lambda$AGIrYO-M2umJsGqqjbn8lgb57iM;-><init>(B)V

    sput-object v0, Lcom/android/server/companion/-$Lambda$AGIrYO-M2umJsGqqjbn8lgb57iM;->$INST$0:Lcom/android/server/companion/-$Lambda$AGIrYO-M2umJsGqqjbn8lgb57iM;

    new-instance v0, Lcom/android/server/companion/-$Lambda$AGIrYO-M2umJsGqqjbn8lgb57iM;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/server/companion/-$Lambda$AGIrYO-M2umJsGqqjbn8lgb57iM;-><init>(B)V

    sput-object v0, Lcom/android/server/companion/-$Lambda$AGIrYO-M2umJsGqqjbn8lgb57iM;->$INST$1:Lcom/android/server/companion/-$Lambda$AGIrYO-M2umJsGqqjbn8lgb57iM;

    return-void
.end method

.method private synthetic constructor <init>(B)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/server/companion/-$Lambda$AGIrYO-M2umJsGqqjbn8lgb57iM;->$id:B

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-byte v0, p0, Lcom/android/server/companion/-$Lambda$AGIrYO-M2umJsGqqjbn8lgb57iM;->$id:B

    packed-switch v0, :pswitch_data_16

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_b
    invoke-direct {p0, p1}, Lcom/android/server/companion/-$Lambda$AGIrYO-M2umJsGqqjbn8lgb57iM;->$m$0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_10
    invoke-direct {p0, p1}, Lcom/android/server/companion/-$Lambda$AGIrYO-M2umJsGqqjbn8lgb57iM;->$m$1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_b
        :pswitch_10
    .end packed-switch
.end method

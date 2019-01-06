.class final synthetic Lcom/android/server/companion/-$Lambda$AGIrYO-M2umJsGqqjbn8lgb57iM$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/companion/-$Lambda$AGIrYO-M2umJsGqqjbn8lgb57iM$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/companion/CompanionDeviceManagerService$ShellCmd;

    check-cast p1, Lcom/android/server/companion/CompanionDeviceManagerService$Association;

    invoke-virtual {v0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService$ShellCmd;->lambda$-com_android_server_companion_CompanionDeviceManagerService$ShellCmd_25681(Lcom/android/server/companion/CompanionDeviceManagerService$Association;)V

    return-void
.end method

.method private final synthetic $m$1(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/companion/-$Lambda$AGIrYO-M2umJsGqqjbn8lgb57iM$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Lorg/xmlpull/v1/XmlSerializer;

    check-cast p1, Lcom/android/server/companion/CompanionDeviceManagerService$Association;

    invoke-static {v0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->lambda$-com_android_server_companion_CompanionDeviceManagerService_21400(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/companion/CompanionDeviceManagerService$Association;)V

    return-void
.end method

.method public synthetic constructor <init>(BLjava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/server/companion/-$Lambda$AGIrYO-M2umJsGqqjbn8lgb57iM$1;->$id:B

    iput-object p2, p0, Lcom/android/server/companion/-$Lambda$AGIrYO-M2umJsGqqjbn8lgb57iM$1;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-byte v0, p0, Lcom/android/server/companion/-$Lambda$AGIrYO-M2umJsGqqjbn8lgb57iM$1;->$id:B

    packed-switch v0, :pswitch_data_14

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_b
    invoke-direct {p0, p1}, Lcom/android/server/companion/-$Lambda$AGIrYO-M2umJsGqqjbn8lgb57iM$1;->$m$0(Ljava/lang/Object;)V

    return-void

    :pswitch_f
    invoke-direct {p0, p1}, Lcom/android/server/companion/-$Lambda$AGIrYO-M2umJsGqqjbn8lgb57iM$1;->$m$1(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_b
        :pswitch_f
    .end packed-switch
.end method

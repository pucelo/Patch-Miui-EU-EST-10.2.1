.class final synthetic Lcom/android/server/pm/-$Lambda$iCTRLJcHnavjRcatPDKSIvElD0U;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/-$Lambda$iCTRLJcHnavjRcatPDKSIvElD0U;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/Installer;

    invoke-virtual {v0}, Lcom/android/server/pm/Installer;->lambda$-com_android_server_pm_Installer_4745()V

    return-void
.end method

.method private final synthetic $m$1()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/-$Lambda$iCTRLJcHnavjRcatPDKSIvElD0U;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/ShortcutBitmapSaver;

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutBitmapSaver;->lambda$-com_android_server_pm_ShortcutBitmapSaver_7645()V

    return-void
.end method

.method private final synthetic $m$2()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/-$Lambda$iCTRLJcHnavjRcatPDKSIvElD0U;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutBitmapSaver;->lambda$-com_android_server_pm_ShortcutBitmapSaver_4411(Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method private final synthetic $m$3()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/-$Lambda$iCTRLJcHnavjRcatPDKSIvElD0U;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->-com_android_server_pm_ShortcutService-mthref-0()V

    return-void
.end method

.method public synthetic constructor <init>(BLjava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/server/pm/-$Lambda$iCTRLJcHnavjRcatPDKSIvElD0U;->$id:B

    iput-object p2, p0, Lcom/android/server/pm/-$Lambda$iCTRLJcHnavjRcatPDKSIvElD0U;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-byte v0, p0, Lcom/android/server/pm/-$Lambda$iCTRLJcHnavjRcatPDKSIvElD0U;->$id:B

    packed-switch v0, :pswitch_data_1c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_b
    invoke-direct {p0}, Lcom/android/server/pm/-$Lambda$iCTRLJcHnavjRcatPDKSIvElD0U;->$m$0()V

    return-void

    :pswitch_f
    invoke-direct {p0}, Lcom/android/server/pm/-$Lambda$iCTRLJcHnavjRcatPDKSIvElD0U;->$m$1()V

    return-void

    :pswitch_13
    invoke-direct {p0}, Lcom/android/server/pm/-$Lambda$iCTRLJcHnavjRcatPDKSIvElD0U;->$m$2()V

    return-void

    :pswitch_17
    invoke-direct {p0}, Lcom/android/server/pm/-$Lambda$iCTRLJcHnavjRcatPDKSIvElD0U;->$m$3()V

    return-void

    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_b
        :pswitch_f
        :pswitch_13
        :pswitch_17
    .end packed-switch
.end method

.class final synthetic Lcom/android/internal/widget/-$Lambda$E2sSlgjiM2w1MdavtCJi6YeQRgk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/-$Lambda$E2sSlgjiM2w1MdavtCJi6YeQRgk;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternChecker$2;->-com_android_internal_widget_LockPatternChecker$2-mthref-0(Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)V

    return-void
.end method

.method private final synthetic $m$1()V
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/-$Lambda$E2sSlgjiM2w1MdavtCJi6YeQRgk;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternChecker$5;->-com_android_internal_widget_LockPatternChecker$5-mthref-0(Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)V

    return-void
.end method

.method public synthetic constructor <init>(BLjava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/internal/widget/-$Lambda$E2sSlgjiM2w1MdavtCJi6YeQRgk;->$id:B

    iput-object p2, p0, Lcom/android/internal/widget/-$Lambda$E2sSlgjiM2w1MdavtCJi6YeQRgk;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onEarlyMatched()V
    .registers 2

    iget-byte v0, p0, Lcom/android/internal/widget/-$Lambda$E2sSlgjiM2w1MdavtCJi6YeQRgk;->$id:B

    packed-switch v0, :pswitch_data_14

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_b
    invoke-direct {p0}, Lcom/android/internal/widget/-$Lambda$E2sSlgjiM2w1MdavtCJi6YeQRgk;->$m$0()V

    return-void

    :pswitch_f
    invoke-direct {p0}, Lcom/android/internal/widget/-$Lambda$E2sSlgjiM2w1MdavtCJi6YeQRgk;->$m$1()V

    return-void

    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_b
        :pswitch_f
    .end packed-switch
.end method

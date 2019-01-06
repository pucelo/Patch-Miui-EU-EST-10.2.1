.class final synthetic Lcom/android/keyguard/-$Lambda$eeU1eBkslsvsESE5i_Dri0qGUlg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/-$Lambda$eeU1eBkslsvsESE5i_Dri0qGUlg;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/keyguard/OnCheckForUsersCallback;

    invoke-static {v0}, Lcom/android/keyguard/LockPatternUtilsWrapper;->-com_android_keyguard_LockPatternUtilsWrapper-mthref-1(Lcom/android/keyguard/OnCheckForUsersCallback;)V

    return-void
.end method

.method private final synthetic $m$1()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/-$Lambda$eeU1eBkslsvsESE5i_Dri0qGUlg;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/keyguard/OnCheckForUsersCallback;

    invoke-static {v0}, Lcom/android/keyguard/LockPatternUtilsWrapper;->-com_android_keyguard_LockPatternUtilsWrapper-mthref-0(Lcom/android/keyguard/OnCheckForUsersCallback;)V

    return-void
.end method

.method public synthetic constructor <init>(BLjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/keyguard/-$Lambda$eeU1eBkslsvsESE5i_Dri0qGUlg;->$id:B

    iput-object p2, p0, Lcom/android/keyguard/-$Lambda$eeU1eBkslsvsESE5i_Dri0qGUlg;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onEarlyMatched()V
    .locals 1

    iget-byte v0, p0, Lcom/android/keyguard/-$Lambda$eeU1eBkslsvsESE5i_Dri0qGUlg;->$id:B

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/keyguard/-$Lambda$eeU1eBkslsvsESE5i_Dri0qGUlg;->$m$0()V

    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/android/keyguard/-$Lambda$eeU1eBkslsvsESE5i_Dri0qGUlg;->$m$1()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

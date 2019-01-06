.class final Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardShowDelegate;
.super Lcom/android/internal/policy/IKeyguardDrawnCallback$Stub;
.source "KeyguardServiceDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "KeyguardShowDelegate"
.end annotation


# instance fields
.field private mDrawnListener:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;

.field private mScreenOnDelay:J

.field final synthetic this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;


# direct methods
.method constructor <init>(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardShowDelegate;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-direct {p0}, Lcom/android/internal/policy/IKeyguardDrawnCallback$Stub;-><init>()V

    iput-object p2, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardShowDelegate;->mDrawnListener:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;

    return-void
.end method


# virtual methods
.method public onDrawn()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardShowDelegate;->mDrawnListener:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardShowDelegate;->mDrawnListener:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;

    iget-wide v2, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardShowDelegate;->mScreenOnDelay:J

    invoke-interface {v0, v2, v3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;->onDrawn(J)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardShowDelegate;->mScreenOnDelay:J

    :cond_f
    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_1c

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/policy/IKeyguardDrawnCallback$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_8
    const-string/jumbo v0, "com.android.internal.policy.IKeyguardDrawnCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardShowDelegate;->mScreenOnDelay:J

    invoke-virtual {p0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardShowDelegate;->onDrawn()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    return v0

    :pswitch_data_1c
    .packed-switch 0xff
        :pswitch_8
    .end packed-switch
.end method

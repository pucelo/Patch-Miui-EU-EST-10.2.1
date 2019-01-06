.class Lcom/android/server/am/MiuiSysUserServiceHelper$UserHandler;
.super Landroid/os/Handler;
.source "MiuiSysUserServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MiuiSysUserServiceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UserHandler"
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    const/4 v1, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_10

    :goto_6
    return-void

    :pswitch_7
    invoke-static {v1}, Lcom/android/server/am/MiuiSysUserServiceHelper;->-set1(Z)Z

    goto :goto_6

    :pswitch_b
    invoke-static {v1}, Lcom/android/server/am/MiuiSysUserServiceHelper;->-set0(Z)Z

    goto :goto_6

    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_7
        :pswitch_b
    .end packed-switch
.end method

.class public Landroid/view/IWindowManagerCompat;
.super Ljava/lang/Object;
.source "IWindowManagerCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addWindowToken(Landroid/view/IWindowManager;Landroid/os/IBinder;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p0, p1, p2, p3}, Landroid/view/IWindowManager;->addWindowToken(Landroid/os/IBinder;II)V

    return-void
.end method

.method public static removeWindowToken(Landroid/view/IWindowManager;Landroid/os/IBinder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p0, p1, p2}, Landroid/view/IWindowManager;->removeWindowToken(Landroid/os/IBinder;I)V

    return-void
.end method

.method public static setPipVisibility(Landroid/view/IWindowManager;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p0, p1}, Landroid/view/IWindowManager;->setPipVisibility(Z)V

    return-void
.end method

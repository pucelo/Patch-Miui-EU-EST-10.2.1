.class Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;
.super Ljava/lang/Object;
.source "IAccessibilityInteractionConnection.java"

# interfaces
.implements Landroid/view/accessibility/IAccessibilityInteractionConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public findAccessibilityNodeInfoByAccessibilityId(JLandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;Landroid/os/Bundle;)V
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_4
    const-string/jumbo v2, "android.view.accessibility.IAccessibilityInteractionConnection"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    if-eqz p3, :cond_50

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/graphics/Region;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_17
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p5, :cond_5a

    invoke-interface {p5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_20
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, p8, p9}, Landroid/os/Parcel;->writeLong(J)V

    if-eqz p10, :cond_5c

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    move-object/from16 v0, p10

    invoke-virtual {v0, v1, v2}, Landroid/view/MagnificationSpec;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_38
    if-eqz p11, :cond_61

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    move-object/from16 v0, p11

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_44
    iget-object v2, p0, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-interface {v2, v3, v1, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_4c
    .catchall {:try_start_4 .. :try_end_4c} :catchall_55

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_50
    const/4 v2, 0x0

    :try_start_51
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_55

    goto :goto_17

    :catchall_55
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2

    :cond_5a
    const/4 v2, 0x0

    goto :goto_20

    :cond_5c
    const/4 v2, 0x0

    :try_start_5d
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_38

    :cond_61
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_65
    .catchall {:try_start_5d .. :try_end_65} :catchall_55

    goto :goto_44
.end method

.method public findAccessibilityNodeInfosByText(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_4
    const-string/jumbo v3, "android.view.accessibility.IAccessibilityInteractionConnection"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    if-eqz p4, :cond_49

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x0

    invoke-virtual {p4, v2, v3}, Landroid/graphics/Region;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1a
    invoke-virtual {v2, p5}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p6, :cond_53

    invoke-interface {p6}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_23
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {v2, p7}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, p8}, Landroid/os/Parcel;->writeInt(I)V

    move-wide/from16 v0, p9

    invoke-virtual {v2, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    if-eqz p11, :cond_55

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x0

    move-object/from16 v0, p11

    invoke-virtual {v0, v2, v3}, Landroid/view/MagnificationSpec;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_3d
    iget-object v3, p0, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-interface {v3, v4, v2, v5, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_45
    .catchall {:try_start_4 .. :try_end_45} :catchall_4e

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_49
    const/4 v3, 0x0

    :try_start_4a
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_4e

    goto :goto_1a

    :catchall_4e
    move-exception v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v3

    :cond_53
    const/4 v3, 0x0

    goto :goto_23

    :cond_55
    const/4 v3, 0x0

    :try_start_56
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_4e

    goto :goto_3d
.end method

.method public findAccessibilityNodeInfosByViewId(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_4
    const-string/jumbo v3, "android.view.accessibility.IAccessibilityInteractionConnection"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    if-eqz p4, :cond_49

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x0

    invoke-virtual {p4, v2, v3}, Landroid/graphics/Region;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1a
    invoke-virtual {v2, p5}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p6, :cond_53

    invoke-interface {p6}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_23
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {v2, p7}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, p8}, Landroid/os/Parcel;->writeInt(I)V

    move-wide/from16 v0, p9

    invoke-virtual {v2, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    if-eqz p11, :cond_55

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x0

    move-object/from16 v0, p11

    invoke-virtual {v0, v2, v3}, Landroid/view/MagnificationSpec;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_3d
    iget-object v3, p0, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-interface {v3, v4, v2, v5, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_45
    .catchall {:try_start_4 .. :try_end_45} :catchall_4e

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_49
    const/4 v3, 0x0

    :try_start_4a
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_4e

    goto :goto_1a

    :catchall_4e
    move-exception v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v3

    :cond_53
    const/4 v3, 0x0

    goto :goto_23

    :cond_55
    const/4 v3, 0x0

    :try_start_56
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_4e

    goto :goto_3d
.end method

.method public findFocus(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_4
    const-string/jumbo v3, "android.view.accessibility.IAccessibilityInteractionConnection"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p4, :cond_49

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x0

    invoke-virtual {p4, v2, v3}, Landroid/graphics/Region;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1a
    invoke-virtual {v2, p5}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p6, :cond_53

    invoke-interface {p6}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_23
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {v2, p7}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, p8}, Landroid/os/Parcel;->writeInt(I)V

    move-wide/from16 v0, p9

    invoke-virtual {v2, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    if-eqz p11, :cond_55

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x0

    move-object/from16 v0, p11

    invoke-virtual {v0, v2, v3}, Landroid/view/MagnificationSpec;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_3d
    iget-object v3, p0, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-interface {v3, v4, v2, v5, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_45
    .catchall {:try_start_4 .. :try_end_45} :catchall_4e

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_49
    const/4 v3, 0x0

    :try_start_4a
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_4e

    goto :goto_1a

    :catchall_4e
    move-exception v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v3

    :cond_53
    const/4 v3, 0x0

    goto :goto_23

    :cond_55
    const/4 v3, 0x0

    :try_start_56
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_4e

    goto :goto_3d
.end method

.method public focusSearch(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_4
    const-string/jumbo v3, "android.view.accessibility.IAccessibilityInteractionConnection"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p4, :cond_49

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x0

    invoke-virtual {p4, v2, v3}, Landroid/graphics/Region;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1a
    invoke-virtual {v2, p5}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p6, :cond_53

    invoke-interface {p6}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_23
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {v2, p7}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, p8}, Landroid/os/Parcel;->writeInt(I)V

    move-wide/from16 v0, p9

    invoke-virtual {v2, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    if-eqz p11, :cond_55

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x0

    move-object/from16 v0, p11

    invoke-virtual {v0, v2, v3}, Landroid/view/MagnificationSpec;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_3d
    iget-object v3, p0, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-interface {v3, v4, v2, v5, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_45
    .catchall {:try_start_4 .. :try_end_45} :catchall_4e

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_49
    const/4 v3, 0x0

    :try_start_4a
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_4e

    goto :goto_1a

    :catchall_4e
    move-exception v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v3

    :cond_53
    const/4 v3, 0x0

    goto :goto_23

    :cond_55
    const/4 v3, 0x0

    :try_start_56
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_4e

    goto :goto_3d
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "android.view.accessibility.IAccessibilityInteractionConnection"

    return-object v0
.end method

.method public performAccessibilityAction(JILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_5
    const-string/jumbo v2, "android.view.accessibility.IAccessibilityInteractionConnection"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p4, :cond_3c

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    invoke-virtual {p4, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1b
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p6, :cond_24

    invoke-interface {p6}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :cond_24
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p9, p10}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v1, p0, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_38
    .catchall {:try_start_5 .. :try_end_38} :catchall_41

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_3c
    const/4 v2, 0x0

    :try_start_3d
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_41

    goto :goto_1b

    :catchall_41
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

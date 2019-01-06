.class public abstract Landroid/database/BulkCursorNative;
.super Landroid/os/Binder;
.source "BulkCursorNative.java"

# interfaces
.implements Landroid/database/IBulkCursor;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.content.IBulkCursor"

    invoke-virtual {p0, p0, v0}, Landroid/database/BulkCursorNative;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/database/IBulkCursor;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.content.IBulkCursor"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/database/IBulkCursor;

    if-eqz v0, :cond_10

    return-object v0

    :cond_10
    new-instance v1, Landroid/database/BulkCursorProxy;

    invoke-direct {v1, p0}, Landroid/database/BulkCursorProxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v9, 0x1

    packed-switch p1, :pswitch_data_a0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    return v8

    :pswitch_9
    :try_start_9
    const-string/jumbo v8, "android.content.IBulkCursor"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/database/BulkCursorNative;->getWindow(I)Landroid/database/CursorWindow;

    move-result-object v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-nez v7, :cond_21

    const/4 v8, 0x0

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    :goto_20
    return v9

    :cond_21
    const/4 v8, 0x1

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v8, 0x1

    invoke-virtual {v7, p3, v8}, Landroid/database/CursorWindow;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_29} :catch_2a

    goto :goto_20

    :catch_2a
    move-exception v1

    invoke-static {p3, v1}, Landroid/database/DatabaseUtils;->writeExceptionToParcel(Landroid/os/Parcel;Ljava/lang/Exception;)V

    return v9

    :pswitch_2f
    :try_start_2f
    const-string/jumbo v8, "android.content.IBulkCursor"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/database/BulkCursorNative;->deactivate()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :pswitch_3c
    const-string/jumbo v8, "android.content.IBulkCursor"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/database/BulkCursorNative;->close()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :pswitch_49
    const-string/jumbo v8, "android.content.IBulkCursor"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/database/IContentObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/database/IContentObserver;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/database/BulkCursorNative;->requery(Landroid/database/IContentObserver;)I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Landroid/database/BulkCursorNative;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return v9

    :pswitch_69
    const-string/jumbo v8, "android.content.IBulkCursor"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/database/BulkCursorNative;->onMove(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :pswitch_7a
    const-string/jumbo v8, "android.content.IBulkCursor"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/database/BulkCursorNative;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return v9

    :pswitch_8b
    const-string/jumbo v8, "android.content.IBulkCursor"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/database/BulkCursorNative;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_9f} :catch_2a

    return v9

    :pswitch_data_a0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_2f
        :pswitch_49
        :pswitch_69
        :pswitch_7a
        :pswitch_8b
        :pswitch_3c
    .end packed-switch
.end method

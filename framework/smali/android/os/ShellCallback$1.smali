.class final Landroid/os/ShellCallback$1;
.super Ljava/lang/Object;
.source "ShellCallback.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/ShellCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/os/ShellCallback;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/os/ShellCallback;
    .registers 3

    new-instance v0, Landroid/os/ShellCallback;

    invoke-direct {v0, p1}, Landroid/os/ShellCallback;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/os/ShellCallback$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/ShellCallback;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/os/ShellCallback;
    .registers 3

    new-array v0, p1, [Landroid/os/ShellCallback;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/os/ShellCallback$1;->newArray(I)[Landroid/os/ShellCallback;

    move-result-object v0

    return-object v0
.end method

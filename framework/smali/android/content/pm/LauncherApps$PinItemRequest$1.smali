.class final Landroid/content/pm/LauncherApps$PinItemRequest$1;
.super Ljava/lang/Object;
.source "LauncherApps.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/LauncherApps$PinItemRequest;
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
        "Landroid/content/pm/LauncherApps$PinItemRequest;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/LauncherApps$PinItemRequest;
    .registers 4

    new-instance v0, Landroid/content/pm/LauncherApps$PinItemRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/content/pm/LauncherApps$PinItemRequest;-><init>(Landroid/os/Parcel;Landroid/content/pm/LauncherApps$PinItemRequest;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/content/pm/LauncherApps$PinItemRequest$1;->createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/LauncherApps$PinItemRequest;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/content/pm/LauncherApps$PinItemRequest;
    .registers 3

    new-array v0, p1, [Landroid/content/pm/LauncherApps$PinItemRequest;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/content/pm/LauncherApps$PinItemRequest$1;->newArray(I)[Landroid/content/pm/LauncherApps$PinItemRequest;

    move-result-object v0

    return-object v0
.end method

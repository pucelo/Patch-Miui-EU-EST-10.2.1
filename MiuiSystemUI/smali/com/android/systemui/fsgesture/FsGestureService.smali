.class public Lcom/android/systemui/fsgesture/FsGestureService;
.super Landroid/app/Service;
.source "FsGestureService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/fsgesture/FsGestureService$1;
    }
.end annotation


# instance fields
.field private mBinder:Lcom/android/systemui/fsgesture/IFsGestureService$Stub;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/android/systemui/fsgesture/FsGestureService$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/fsgesture/FsGestureService$1;-><init>(Lcom/android/systemui/fsgesture/FsGestureService;)V

    iput-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureService;->mBinder:Lcom/android/systemui/fsgesture/IFsGestureService$Stub;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureService;->mBinder:Lcom/android/systemui/fsgesture/IFsGestureService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

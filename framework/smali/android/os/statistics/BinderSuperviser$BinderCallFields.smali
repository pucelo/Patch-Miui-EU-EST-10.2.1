.class public Landroid/os/statistics/BinderSuperviser$BinderCallFields;
.super Landroid/os/statistics/MicroscopicEvent$MicroEventFields;
.source "BinderSuperviser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/BinderSuperviser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BinderCallFields"
.end annotation


# instance fields
.field binder:Ljava/lang/Object;

.field javaBackTrace:Ljava/lang/Object;

.field nativeBackTrace:Landroid/os/statistics/NativeBackTrace;

.field public stackTrace:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;-><init>()V

    return-void
.end method

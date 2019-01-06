.class public Lcom/android/internal/backup/LocalTransportService;
.super Landroid/app/Service;
.source "LocalTransportService.java"


# static fields
.field private static sTransport:Lcom/android/internal/backup/LocalTransport;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/backup/LocalTransportService;->sTransport:Lcom/android/internal/backup/LocalTransport;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    sget-object v0, Lcom/android/internal/backup/LocalTransportService;->sTransport:Lcom/android/internal/backup/LocalTransport;

    invoke-virtual {v0}, Lcom/android/internal/backup/LocalTransport;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .registers 2

    sget-object v0, Lcom/android/internal/backup/LocalTransportService;->sTransport:Lcom/android/internal/backup/LocalTransport;

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/internal/backup/LocalTransport;

    invoke-direct {v0, p0}, Lcom/android/internal/backup/LocalTransport;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/backup/LocalTransportService;->sTransport:Lcom/android/internal/backup/LocalTransport;

    :cond_b
    return-void
.end method

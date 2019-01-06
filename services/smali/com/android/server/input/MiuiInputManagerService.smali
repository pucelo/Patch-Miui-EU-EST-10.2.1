.class public Lcom/android/server/input/MiuiInputManagerService;
.super Lcom/android/server/input/MiuiBaseInputManagerService;
.source "MiuiInputManagerService.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/input/MiuiBaseInputManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/input/MiuiInputManagerService;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public start()V
    .registers 2

    invoke-super {p0}, Lcom/android/server/input/MiuiBaseInputManagerService;->start()V

    iget-object v0, p0, Lcom/android/server/input/MiuiInputManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/android/server/HandyMode;->initialize(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    return-void
.end method

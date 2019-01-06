.class public Lcom/android/server/am/ActivityManagerServiceCompat;
.super Ljava/lang/Object;
.source "ActivityManagerServiceCompat.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isUserRunning(Lcom/android/server/am/ActivityManagerService;I)Z
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActivityManagerService;->isUserRunning(II)Z

    move-result v0

    return v0
.end method

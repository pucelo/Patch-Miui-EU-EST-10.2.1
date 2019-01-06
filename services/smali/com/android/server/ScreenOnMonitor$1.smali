.class final Lcom/android/server/ScreenOnMonitor$1;
.super Ljava/util/ArrayList;
.source "ScreenOnMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ScreenOnMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v0, "wayne"

    invoke-virtual {p0, v0}, Lcom/android/server/ScreenOnMonitor$1;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "dipper"

    invoke-virtual {p0, v0}, Lcom/android/server/ScreenOnMonitor$1;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "sirius"

    invoke-virtual {p0, v0}, Lcom/android/server/ScreenOnMonitor$1;->add(Ljava/lang/Object;)Z

    return-void
.end method

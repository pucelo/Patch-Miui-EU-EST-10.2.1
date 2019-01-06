.class Lcom/miui/server/XSpaceManagerServiceCompat;
.super Ljava/lang/Object;
.source "XSpaceManagerServiceCompat.java"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static setBundleDefusable(Z)V
    .registers 1

    invoke-static {p0}, Landroid/os/BaseBundle;->setShouldDefuse(Z)V

    return-void
.end method

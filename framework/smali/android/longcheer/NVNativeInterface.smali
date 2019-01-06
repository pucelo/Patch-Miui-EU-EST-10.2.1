.class public Landroid/longcheer/NVNativeInterface;
.super Ljava/lang/Object;
.source "NVNativeInterface.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "nvinterface"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native change_online()V
.end method

.method public static native getTxAdcValue(Ljava/lang/String;)I
.end method

.method public static readNvItem(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/longcheer/NVNativeInterface;->readNvItem(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static native readNvItem(II)Ljava/lang/String;
.end method

.method public static native setPAStatus(Ljava/lang/String;I)I
.end method

.method public static native switchAnt(I)Z
.end method

.method public static writeNvItem(Ljava/lang/String;I)Z
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/longcheer/NVNativeInterface;->writeNvItem(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public static native writeNvItem(Ljava/lang/String;II)Z
.end method

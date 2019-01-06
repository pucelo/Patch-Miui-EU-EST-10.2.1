.class public Lcom/megvii/facepp/sdk/jni/LiteApi;
.super Ljava/lang/Object;
.source "LiteApi.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "MegviiUnlock-jni-1.2"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native nativeCompare(J[BIIIZZ[I)I
.end method

.method public static native nativeDeleteFeature(JI)I
.end method

.method public static native nativeGetConfig(JLcom/megvii/facepp/sdk/Lite$LiteConfig;)J
.end method

.method public static native nativeGetFeatureCount()I
.end method

.method public static native nativeGetVersion(J)Ljava/lang/String;
.end method

.method public static native nativeInitAll(JLjava/lang/String;Ljava/lang/String;[B)J
.end method

.method public static native nativeInitHandle(Ljava/lang/String;)J
.end method

.method public static native nativePrepare(J)I
.end method

.method public static native nativeRelease(J)J
.end method

.method public static native nativeReset(J)I
.end method

.method public static native nativeSetConfig(JFFFFZZ)I
.end method

.method public static native nativeSetConfigV2(JLcom/megvii/facepp/sdk/Lite$LiteConfig;)I
.end method

.method public static native nativeSetDetectArea(JIIII)I
.end method

.method public static native nativeUpdateFeature(J[BIIII[B[BI)I
.end method

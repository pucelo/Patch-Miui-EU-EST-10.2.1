.class public Landroid/net/nsd/NsdServiceInfoInjector;
.super Ljava/lang/Object;
.source "NsdServiceInfoInjector.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NsdServiceInfo"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setTxtRecord(I[BLandroid/net/nsd/NsdServiceInfo;)V
    .registers 18

    const/4 v10, 0x2

    if-ge p0, v10, :cond_d

    const-string/jumbo v10, "NsdServiceInfo"

    const-string/jumbo v11, "txtRecord < 2"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_d
    if-nez p1, :cond_19

    const-string/jumbo v10, "NsdServiceInfo"

    const-string/jumbo v11, "txtRecord is null"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_19
    move-object/from16 v0, p1

    array-length v10, v0

    if-eq v10, p0, :cond_27

    const-string/jumbo v10, "NsdServiceInfo"

    const-string/jumbo v11, "txtRecord.length != txtLen"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    const/4 v4, 0x0

    :goto_28
    if-ge v4, p0, :cond_49

    aget-byte v6, p1, v4

    add-int/lit8 v7, v4, 0x1

    sub-int v10, p0, v7

    if-le v6, v10, :cond_4a

    const-string/jumbo v10, "NsdServiceInfo"

    const-string/jumbo v11, "invalid length: %d"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_49
    :goto_49
    return-void

    :cond_4a
    new-array v2, v6, [B

    const/4 v10, 0x0

    :try_start_4d
    move-object/from16 v0, p1

    invoke-static {v0, v7, v2, v10, v6}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_52} :catch_74

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v2}, Ljava/lang/String;-><init>([B)V

    const-string/jumbo v10, "="

    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v10, v1

    const/4 v11, 0x2

    if-ne v10, v11, :cond_71

    const/4 v10, 0x0

    aget-object v5, v1, v10

    const/4 v10, 0x1

    aget-object v9, v1, v10

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v10}, Landroid/net/nsd/NsdServiceInfo;->setAttribute(Ljava/lang/String;[B)V

    :cond_71
    add-int v4, v7, v6

    goto :goto_28

    :catch_74
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_49
.end method

.class public Landroid/renderscript/ScriptC;
.super Landroid/renderscript/Script;
.source "ScriptC.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ScriptC"


# direct methods
.method protected constructor <init>(ILandroid/renderscript/RenderScript;)V
    .registers 5

    int-to-long v0, p1

    invoke-direct {p0, v0, v1, p2}, Landroid/renderscript/Script;-><init>(JLandroid/renderscript/RenderScript;)V

    return-void
.end method

.method protected constructor <init>(JLandroid/renderscript/RenderScript;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/Script;-><init>(JLandroid/renderscript/RenderScript;)V

    return-void
.end method

.method protected constructor <init>(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)V
    .registers 8

    const-wide/16 v2, 0x0

    invoke-direct {p0, v2, v3, p1}, Landroid/renderscript/Script;-><init>(JLandroid/renderscript/RenderScript;)V

    invoke-static {p1, p2, p3}, Landroid/renderscript/ScriptC;->internalCreate(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)J

    move-result-wide v0

    cmp-long v2, v0, v2

    if-nez v2, :cond_16

    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string/jumbo v3, "Loading of ScriptC script failed."

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_16
    invoke-virtual {p0, v0, v1}, Landroid/renderscript/ScriptC;->setID(J)V

    return-void
.end method

.method protected constructor <init>(Landroid/renderscript/RenderScript;Ljava/lang/String;[B[B)V
    .registers 11

    const-wide/16 v4, 0x0

    invoke-direct {p0, v4, v5, p1}, Landroid/renderscript/Script;-><init>(JLandroid/renderscript/RenderScript;)V

    const-wide/16 v0, 0x0

    sget v2, Landroid/renderscript/RenderScript;->sPointerSize:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1d

    invoke-static {p1, p2, p3}, Landroid/renderscript/ScriptC;->internalStringCreate(Landroid/renderscript/RenderScript;Ljava/lang/String;[B)J

    move-result-wide v0

    :goto_10
    cmp-long v2, v0, v4

    if-nez v2, :cond_22

    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string/jumbo v3, "Loading of ScriptC script failed."

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1d
    invoke-static {p1, p2, p4}, Landroid/renderscript/ScriptC;->internalStringCreate(Landroid/renderscript/RenderScript;Ljava/lang/String;[B)J

    move-result-wide v0

    goto :goto_10

    :cond_22
    invoke-virtual {p0, v0, v1}, Landroid/renderscript/ScriptC;->setID(J)V

    return-void
.end method

.method private static declared-synchronized internalCreate(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)J
    .registers 15

    const-class v9, Landroid/renderscript/ScriptC;

    monitor-enter v9

    :try_start_3
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_45

    move-result-object v4

    const/16 v8, 0x400

    :try_start_9
    new-array v5, v8, [B

    const/4 v6, 0x0

    :goto_c
    array-length v8, v5

    sub-int v1, v8, v6

    if-nez v1, :cond_20

    array-length v8, v5

    mul-int/lit8 v8, v8, 0x2

    new-array v0, v8, [B

    array-length v8, v5

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v5, v10, v0, v11, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    move-object v5, v0

    array-length v8, v0

    sub-int v1, v8, v6

    :cond_20
    invoke-virtual {v4, v5, v6, v1}, Ljava/io/InputStream;->read([BII)I
    :try_end_23
    .catchall {:try_start_9 .. :try_end_23} :catchall_39

    move-result v2

    if-gtz v2, :cond_37

    :try_start_26
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_3e
    .catchall {:try_start_26 .. :try_end_29} :catchall_45

    :try_start_29
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Landroid/renderscript/RenderScript;->getCachePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8, v5, v6}, Landroid/renderscript/RenderScript;->nScriptCCreate(Ljava/lang/String;Ljava/lang/String;[BI)J
    :try_end_34
    .catchall {:try_start_29 .. :try_end_34} :catchall_45

    move-result-wide v10

    monitor-exit v9

    return-wide v10

    :cond_37
    add-int/2addr v6, v2

    goto :goto_c

    :catchall_39
    move-exception v8

    :try_start_3a
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    throw v8
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3e} :catch_3e
    .catchall {:try_start_3a .. :try_end_3e} :catchall_45

    :catch_3e
    move-exception v3

    :try_start_3f
    new-instance v8, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {v8}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    throw v8
    :try_end_45
    .catchall {:try_start_3f .. :try_end_45} :catchall_45

    :catchall_45
    move-exception v8

    monitor-exit v9

    throw v8
.end method

.method private static declared-synchronized internalStringCreate(Landroid/renderscript/RenderScript;Ljava/lang/String;[B)J
    .registers 7

    const-class v1, Landroid/renderscript/ScriptC;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Landroid/renderscript/RenderScript;->getCachePath()Ljava/lang/String;

    move-result-object v0

    array-length v2, p2

    invoke-virtual {p0, p1, v0, p2, v2}, Landroid/renderscript/RenderScript;->nScriptCCreate(Ljava/lang/String;Ljava/lang/String;[BI)J
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_e

    move-result-wide v2

    monitor-exit v1

    return-wide v2

    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

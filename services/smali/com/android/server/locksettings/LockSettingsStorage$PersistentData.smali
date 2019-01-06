.class public Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;
.super Ljava/lang/Object;
.source "LockSettingsStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/LockSettingsStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PersistentData"
.end annotation


# static fields
.field public static final NONE:Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

.field public static final TYPE_NONE:I = 0x0

.field public static final TYPE_SP:I = 0x1

.field public static final TYPE_SP_WEAVER:I = 0x2

.field static final VERSION_1:B = 0x1t

.field static final VERSION_1_HEADER_SIZE:I = 0xa


# instance fields
.field final payload:[B

.field final qualityForUi:I

.field final type:I

.field final userId:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x0

    new-instance v0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    const/16 v1, -0x2710

    const/4 v2, 0x0

    invoke-direct {v0, v3, v1, v3, v2}, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;-><init>(III[B)V

    sput-object v0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->NONE:Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    return-void
.end method

.method private constructor <init>(III[B)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->type:I

    iput p2, p0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->userId:I

    iput p3, p0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->qualityForUi:I

    iput-object p4, p0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->payload:[B

    return-void
.end method

.method public static fromBytes([B)Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;
    .registers 12

    const/4 v10, 0x0

    if-eqz p0, :cond_6

    array-length v7, p0

    if-nez v7, :cond_9

    :cond_6
    sget-object v7, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->NONE:Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    return-object v7

    :cond_9
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_13
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3a

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    and-int/lit16 v4, v7, 0xff

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    array-length v7, p0

    add-int/lit8 v7, v7, -0xa

    new-array v2, v7, [B

    array-length v7, v2

    const/16 v8, 0xa

    const/4 v9, 0x0

    invoke-static {p0, v8, v2, v9, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    new-instance v7, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    invoke-direct {v7, v4, v5, v3, v2}, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;-><init>(III[B)V

    return-object v7

    :cond_3a
    const-string/jumbo v7, "LockSettingsStorage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unknown PersistentData version code: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_54} :catch_55

    return-object v10

    :catch_55
    move-exception v0

    const-string/jumbo v7, "LockSettingsStorage"

    const-string/jumbo v8, "Could not parse PersistentData"

    invoke-static {v7, v8, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v10
.end method

.method public static toBytes(III[B)[B
    .registers 10

    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez p0, :cond_10

    if-nez p3, :cond_e

    :goto_7
    const-string/jumbo v4, "TYPE_NONE must have empty payload"

    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    return-object v5

    :cond_e
    move v3, v4

    goto :goto_7

    :cond_10
    if-eqz p3, :cond_16

    array-length v5, p3

    if-lez v5, :cond_16

    move v4, v3

    :cond_16
    const-string/jumbo v3, "empty payload must only be used with TYPE_NONE"

    invoke-static {v4, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    array-length v3, p3

    add-int/lit8 v3, v3, 0xa

    invoke-direct {v2, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v3, 0x1

    :try_start_2a
    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v0, p0}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v0, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v0, p3}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_39} :catch_3e

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    :catch_3e
    move-exception v1

    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "ByteArrayOutputStream cannot throw IOException"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.class public Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
.super Ljava/lang/Object;
.source "LockSettingsStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/LockSettingsStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CredentialHash"
.end annotation


# static fields
.field static final VERSION_GATEKEEPER:I = 0x1

.field static final VERSION_LEGACY:I


# instance fields
.field hash:[B

.field isBaseZeroPattern:Z

.field type:I

.field version:I


# direct methods
.method static synthetic -wrap0([B)Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    .registers 2

    invoke-static {p0}, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->createBaseZeroPattern([B)Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    move-result-object v0

    return-object v0
.end method

.method private constructor <init>([BII)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;-><init>([BIIZ)V

    return-void
.end method

.method synthetic constructor <init>([BIILcom/android/server/locksettings/LockSettingsStorage$CredentialHash;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;-><init>([BII)V

    return-void
.end method

.method private constructor <init>([BIIZ)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    if-eq p2, v0, :cond_11

    if-nez p1, :cond_1c

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Empty hash for CredentialHash"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    if-eqz p1, :cond_1c

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "None type CredentialHash should not have hash"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    iput p2, p0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    iput p3, p0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->version:I

    iput-boolean p4, p0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->isBaseZeroPattern:Z

    return-void
.end method

.method static create([BI)Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    .registers 4

    const/4 v0, -0x1

    if-ne p1, v0, :cond_c

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Bad type for CredentialHash"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    new-instance v0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;-><init>([BII)V

    return-object v0
.end method

.method private static createBaseZeroPattern([B)Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    .registers 3

    const/4 v1, 0x1

    new-instance v0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    invoke-direct {v0, p0, v1, v1, v1}, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;-><init>([BIIZ)V

    return-object v0
.end method

.method static createEmptyHash()Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    .registers 4

    new-instance v0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;-><init>([BII)V

    return-object v0
.end method

.method public static fromBytes([B)Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    .registers 8

    :try_start_0
    new-instance v3, Ljava/io/DataInputStream;

    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v3, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v5

    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v4

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    const/4 v1, 0x0

    if-lez v2, :cond_1e

    new-array v1, v2, [B

    invoke-virtual {v3, v1}, Ljava/io/DataInputStream;->readFully([B)V

    :cond_1e
    new-instance v6, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    invoke-direct {v6, v1, v4, v5}, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;-><init>([BII)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_23} :catch_24

    return-object v6

    :catch_24
    move-exception v0

    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method


# virtual methods
.method public toBytes()[B
    .registers 6

    iget-boolean v3, p0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->isBaseZeroPattern:Z

    xor-int/lit8 v3, v3, 0x1

    const-string/jumbo v4, "base zero patterns are not serializable"

    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    :try_start_a
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget v3, p0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->version:I

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->write(I)V

    iget v3, p0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->write(I)V

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    if-eqz v3, :cond_3a

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    array-length v3, v3

    if-lez v3, :cond_3a

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->write([B)V

    :goto_32
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    :cond_3a
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_3e} :catch_3f

    goto :goto_32

    :catch_3f
    move-exception v1

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

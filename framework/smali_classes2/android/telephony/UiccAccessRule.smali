.class public final Landroid/telephony/UiccAccessRule;
.super Ljava/lang/Object;
.source "UiccAccessRule.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/UiccAccessRule$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/UiccAccessRule;",
            ">;"
        }
    .end annotation
.end field

.field private static final ENCODING_VERSION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "UiccAccessRule"


# instance fields
.field private final mAccessType:J

.field private final mCertificateHash:[B

.field private final mPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/telephony/UiccAccessRule$1;

    invoke-direct {v0}, Landroid/telephony/UiccAccessRule$1;-><init>()V

    sput-object v0, Landroid/telephony/UiccAccessRule;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/UiccAccessRule;->mCertificateHash:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/UiccAccessRule;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/UiccAccessRule;->mAccessType:J

    return-void
.end method

.method public constructor <init>([BLjava/lang/String;J)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/UiccAccessRule;->mCertificateHash:[B

    iput-object p2, p0, Landroid/telephony/UiccAccessRule;->mPackageName:Ljava/lang/String;

    iput-wide p3, p0, Landroid/telephony/UiccAccessRule;->mAccessType:J

    return-void
.end method

.method public static decodeRules([B)[Landroid/telephony/UiccAccessRule;
    .registers 19

    if-nez p0, :cond_4

    const/4 v14, 0x0

    return-object v14

    :cond_4
    new-instance v3, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v15, 0x0

    const/4 v11, 0x0

    :try_start_d
    new-instance v12, Ljava/io/DataInputStream;

    invoke-direct {v12, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_12} :catch_5a
    .catchall {:try_start_d .. :try_end_12} :catchall_7b

    :try_start_12
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readInt()I

    invoke-virtual {v12}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    new-array v2, v8, [Landroid/telephony/UiccAccessRule;

    const/4 v10, 0x0

    :goto_1c
    if-ge v10, v8, :cond_41

    invoke-virtual {v12}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    new-array v6, v7, [B

    invoke-virtual {v12, v6}, Ljava/io/DataInputStream;->readFully([B)V

    invoke-virtual {v12}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v14

    if-eqz v14, :cond_3f

    invoke-virtual {v12}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v13

    :goto_31
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    new-instance v14, Landroid/telephony/UiccAccessRule;

    invoke-direct {v14, v6, v13, v4, v5}, Landroid/telephony/UiccAccessRule;-><init>([BLjava/lang/String;J)V

    aput-object v14, v2, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_1c

    :cond_3f
    const/4 v13, 0x0

    goto :goto_31

    :cond_41
    invoke-virtual {v12}, Ljava/io/DataInputStream;->close()V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_44} :catch_80
    .catchall {:try_start_12 .. :try_end_44} :catchall_7d

    if-eqz v12, :cond_49

    :try_start_46
    invoke-virtual {v12}, Ljava/io/DataInputStream;->close()V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_49} :catch_57
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_4c

    :cond_49
    :goto_49
    if-eqz v15, :cond_59

    :try_start_4b
    throw v15
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4c} :catch_4c

    :catch_4c
    move-exception v9

    move-object v11, v12

    :goto_4e
    new-instance v14, Ljava/lang/IllegalStateException;

    const-string/jumbo v15, "ByteArrayInputStream should never lead to an IOException"

    invoke-direct {v14, v15, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14

    :catch_57
    move-exception v15

    goto :goto_49

    :cond_59
    return-object v2

    :catch_5a
    move-exception v14

    :goto_5b
    :try_start_5b
    throw v14
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5c

    :catchall_5c
    move-exception v15

    move-object/from16 v17, v15

    move-object v15, v14

    move-object/from16 v14, v17

    :goto_62
    if-eqz v11, :cond_67

    :try_start_64
    invoke-virtual {v11}, Ljava/io/DataInputStream;->close()V
    :try_end_67
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_67} :catch_6c
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_6a

    :cond_67
    :goto_67
    if-eqz v15, :cond_7a

    :try_start_69
    throw v15

    :catch_6a
    move-exception v9

    goto :goto_4e

    :catch_6c
    move-exception v16

    if-nez v15, :cond_72

    move-object/from16 v15, v16

    goto :goto_67

    :cond_72
    move-object/from16 v0, v16

    if-eq v15, v0, :cond_67

    invoke-virtual/range {v15 .. v16}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_67

    :cond_7a
    throw v14
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_7b} :catch_6a

    :catchall_7b
    move-exception v14

    goto :goto_62

    :catchall_7d
    move-exception v14

    move-object v11, v12

    goto :goto_62

    :catch_80
    move-exception v14

    move-object v11, v12

    goto :goto_5b
.end method

.method public static encodeRules([Landroid/telephony/UiccAccessRule;)[B
    .registers 9

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez p0, :cond_5

    return-object v5

    :cond_5
    :try_start_5
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    array-length v5, p0

    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    array-length v5, p0

    :goto_18
    if-ge v4, v5, :cond_4b

    aget-object v0, p0, v4

    iget-object v6, v0, Landroid/telephony/UiccAccessRule;->mCertificateHash:[B

    array-length v6, v6

    invoke-virtual {v3, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v6, v0, Landroid/telephony/UiccAccessRule;->mCertificateHash:[B

    invoke-virtual {v3, v6}, Ljava/io/DataOutputStream;->write([B)V

    iget-object v6, v0, Landroid/telephony/UiccAccessRule;->mPackageName:Ljava/lang/String;

    if-eqz v6, :cond_3c

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    iget-object v6, v0, Landroid/telephony/UiccAccessRule;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    :goto_34
    iget-wide v6, v0, Landroid/telephony/UiccAccessRule;->mAccessType:J

    invoke-virtual {v3, v6, v7}, Ljava/io/DataOutputStream;->writeLong(J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    :cond_3c
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/io/DataOutputStream;->writeBoolean(Z)V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_40} :catch_41

    goto :goto_34

    :catch_41
    move-exception v2

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "ByteArrayOutputStream should never lead to an IOException"

    invoke-direct {v4, v5, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_4b
    :try_start_4b
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_51} :catch_41

    move-result-object v4

    return-object v4
.end method

.method private static getCertHash(Landroid/content/pm/Signature;Ljava/lang/String;)[B
    .registers 7

    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_b} :catch_d

    move-result-object v2

    return-object v2

    :catch_d
    move-exception v0

    const-string/jumbo v2, "UiccAccessRule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "NoSuchAlgorithmException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return-object v2
.end method

.method private matches([BLjava/lang/String;)Z
    .registers 4

    if-eqz p1, :cond_1b

    iget-object v0, p0, Landroid/telephony/UiccAccessRule;->mCertificateHash:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/telephony/UiccAccessRule;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Landroid/telephony/UiccAccessRule;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x1

    goto :goto_18

    :cond_1b
    const/4 v0, 0x0

    goto :goto_18
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getCarrierPrivilegeStatus(Landroid/content/pm/PackageInfo;)I
    .registers 9

    const/4 v3, 0x0

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v2, :cond_a

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v2, v2

    if-nez v2, :cond_13

    :cond_a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Must use GET_SIGNATURES when looking up package info"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_13
    iget-object v4, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v5, v4

    move v2, v3

    :goto_17
    if-ge v2, v5, :cond_27

    aget-object v1, v4, v2

    iget-object v6, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1, v6}, Landroid/telephony/UiccAccessRule;->getCarrierPrivilegeStatus(Landroid/content/pm/Signature;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_24

    return v0

    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_27
    return v3
.end method

.method public getCarrierPrivilegeStatus(Landroid/content/pm/Signature;Ljava/lang/String;)I
    .registers 6

    const-string/jumbo v2, "SHA-1"

    invoke-static {p1, v2}, Landroid/telephony/UiccAccessRule;->getCertHash(Landroid/content/pm/Signature;Ljava/lang/String;)[B

    move-result-object v0

    const-string/jumbo v2, "SHA-256"

    invoke-static {p1, v2}, Landroid/telephony/UiccAccessRule;->getCertHash(Landroid/content/pm/Signature;Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {p0, v0, p2}, Landroid/telephony/UiccAccessRule;->matches([BLjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1a

    invoke-direct {p0, v1, p2}, Landroid/telephony/UiccAccessRule;->matches([BLjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    :cond_1a
    const/4 v2, 0x1

    return v2

    :cond_1c
    const/4 v2, 0x0

    return v2
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/telephony/UiccAccessRule;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "cert: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/UiccAccessRule;->mCertificateHash:[B

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " pkg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/UiccAccessRule;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " access: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/telephony/UiccAccessRule;->mAccessType:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-object v0, p0, Landroid/telephony/UiccAccessRule;->mCertificateHash:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Landroid/telephony/UiccAccessRule;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Landroid/telephony/UiccAccessRule;->mAccessType:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method

.class public Lcom/miui/enterprise/signature/EnterpriseCer;
.super Ljava/lang/Object;
.source "EnterpriseCer.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/enterprise/signature/EnterpriseCer$1;
    }
.end annotation


# static fields
.field public static final ACTION_ENTERPRISE_CERT_UPDATE:Ljava/lang/String; = "com.miui.enterprise.ACTION_CERT_UPDATE"

.field public static final CERT_FILE:Ljava/lang/String; = "/data/system/entcert"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/enterprise/signature/EnterpriseCer;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_CERT:Ljava/lang/String; = "extra_ent_cert"

.field public static final PERMISSION_ACTIVATE_ENTERPRISE_MODE:Ljava/lang/String; = "com.miui.enterprise.permission.ACTIVE_ENTERPRISE_MODE"

.field static final sDateformat:Ljava/text/DateFormat;


# instance fields
.field public agencyCode:Ljava/lang/String;

.field public apkHash:Ljava/lang/String;

.field public deviceIds:[Ljava/lang/String;

.field public licenceCode:Ljava/lang/String;

.field public permissions:[Ljava/lang/String;

.field signature:Ljava/lang/String;

.field public validFrom:J

.field public validTo:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/enterprise/signature/EnterpriseCer;->sDateformat:Ljava/text/DateFormat;

    new-instance v0, Lcom/miui/enterprise/signature/EnterpriseCer$1;

    invoke-direct {v0}, Lcom/miui/enterprise/signature/EnterpriseCer$1;-><init>()V

    sput-object v0, Lcom/miui/enterprise/signature/EnterpriseCer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->agencyCode:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->licenceCode:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->apkHash:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->signature:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->agencyCode:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->licenceCode:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->apkHash:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->signature:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->agencyCode:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->licenceCode:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->permissions:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->deviceIds:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->validFrom:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->validTo:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->apkHash:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->signature:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v5, ""

    iput-object v5, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->agencyCode:Ljava/lang/String;

    const-string/jumbo v5, ""

    iput-object v5, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->licenceCode:Ljava/lang/String;

    const-string/jumbo v5, ""

    iput-object v5, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->apkHash:Ljava/lang/String;

    const-string/jumbo v5, ""

    iput-object v5, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->signature:Ljava/lang/String;

    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :cond_22
    :goto_22
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_120

    const-string/jumbo v5, "AgencyCode"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3d

    const-string/jumbo v5, "AgencyCode:"

    const-string/jumbo v6, ""

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->agencyCode:Ljava/lang/String;

    :cond_3d
    const-string/jumbo v5, "LicenceCode"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_52

    const-string/jumbo v5, "LicenceCode:"

    const-string/jumbo v6, ""

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->licenceCode:Ljava/lang/String;

    :cond_52
    const-string/jumbo v5, "Permissions"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_79

    const-string/jumbo v5, "Permissions:"

    const-string/jumbo v6, ""

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_77

    const-string/jumbo v5, "*"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_101

    :cond_77
    iput-object v8, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->permissions:[Ljava/lang/String;

    :cond_79
    :goto_79
    const-string/jumbo v5, "DeviceIds"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_97

    const-string/jumbo v5, "DeviceIds:"

    const-string/jumbo v6, ""

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "*"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10c

    iput-object v8, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->deviceIds:[Ljava/lang/String;

    :cond_97
    :goto_97
    const-string/jumbo v5, "ValidFrom"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b6

    :try_start_a0
    sget-object v5, Lcom/miui/enterprise/signature/EnterpriseCer;->sDateformat:Ljava/text/DateFormat;

    const-string/jumbo v6, "ValidFrom:"

    const-string/jumbo v7, ""

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->validFrom:J
    :try_end_b6
    .catch Ljava/text/ParseException; {:try_start_a0 .. :try_end_b6} :catch_116

    :cond_b6
    :goto_b6
    const-string/jumbo v5, "ValidTo"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d5

    :try_start_bf
    sget-object v5, Lcom/miui/enterprise/signature/EnterpriseCer;->sDateformat:Ljava/text/DateFormat;

    const-string/jumbo v6, "ValidTo:"

    const-string/jumbo v7, ""

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->validTo:J
    :try_end_d5
    .catch Ljava/text/ParseException; {:try_start_bf .. :try_end_d5} :catch_11b

    :cond_d5
    :goto_d5
    const-string/jumbo v5, "ApkHash"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ea

    const-string/jumbo v5, "ApkHash:"

    const-string/jumbo v6, ""

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->apkHash:Ljava/lang/String;

    :cond_ea
    const-string/jumbo v5, "Signature"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_22

    const-string/jumbo v5, "Signature:"

    const-string/jumbo v6, ""

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->signature:Ljava/lang/String;

    goto/16 :goto_22

    :cond_101
    const-string/jumbo v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->permissions:[Ljava/lang/String;

    goto/16 :goto_79

    :cond_10c
    const-string/jumbo v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->deviceIds:[Ljava/lang/String;

    goto :goto_97

    :catch_116
    move-exception v1

    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_b6

    :catch_11b
    move-exception v1

    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_d5

    :cond_120
    return-void
.end method

.method private printArray([Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    if-nez p1, :cond_6

    const-string/jumbo v2, ""

    return-object v2

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    array-length v3, p1

    :goto_d
    if-ge v2, v3, :cond_1e

    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getUnSignedRaw()Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AgencyCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->agencyCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "LicenceCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->licenceCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "Permissions:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->permissions:[Ljava/lang/String;

    if-nez v0, :cond_b6

    const-string/jumbo v0, "*"

    :goto_3b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "DeviceIds:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->deviceIds:[Ljava/lang/String;

    if-nez v0, :cond_be

    const-string/jumbo v0, "*"

    :goto_54
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ValidFrom:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/miui/enterprise/signature/EnterpriseCer;->sDateformat:Ljava/text/DateFormat;

    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->validFrom:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ValidTo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/miui/enterprise/signature/EnterpriseCer;->sDateformat:Ljava/text/DateFormat;

    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->validTo:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ApkHash:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->apkHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b6
    iget-object v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->permissions:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/miui/enterprise/signature/EnterpriseCer;->printArray([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3b

    :cond_be
    iget-object v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->deviceIds:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/miui/enterprise/signature/EnterpriseCer;->printArray([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_54
.end method

.method public getValidFrom()Ljava/util/Date;
    .registers 5

    new-instance v0, Ljava/util/Date;

    iget-wide v2, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->validFrom:J

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getValidTo()Ljava/util/Date;
    .registers 5

    new-instance v0, Ljava/util/Date;

    iget-wide v2, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->validTo:J

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AgencyCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->agencyCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "LicenceCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->licenceCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "Permissions:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->permissions:[Ljava/lang/String;

    if-nez v0, :cond_ca

    const-string/jumbo v0, "*"

    :goto_3b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "DeviceIds:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->deviceIds:[Ljava/lang/String;

    if-nez v0, :cond_d2

    const-string/jumbo v0, "*"

    :goto_54
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ValidFrom:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/miui/enterprise/signature/EnterpriseCer;->sDateformat:Ljava/text/DateFormat;

    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->validFrom:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ValidTo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/miui/enterprise/signature/EnterpriseCer;->sDateformat:Ljava/text/DateFormat;

    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->validTo:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ApkHash:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->apkHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "Signature:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->signature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_ca
    iget-object v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->permissions:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/miui/enterprise/signature/EnterpriseCer;->printArray([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3b

    :cond_d2
    iget-object v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->deviceIds:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/miui/enterprise/signature/EnterpriseCer;->printArray([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_54
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-object v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->agencyCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->licenceCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->permissions:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->deviceIds:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->validFrom:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->validTo:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->apkHash:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->signature:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

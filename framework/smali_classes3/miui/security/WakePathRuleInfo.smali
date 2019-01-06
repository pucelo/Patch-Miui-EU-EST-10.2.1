.class public Lmiui/security/WakePathRuleInfo;
.super Ljava/lang/Object;
.source "WakePathRuleInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/security/WakePathRuleInfo$1;,
        Lmiui/security/WakePathRuleInfo$UserSettings;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lmiui/security/WakePathRuleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final EXPRESS_TYPE_WILDCARD_ALL:I = 0x2

.field private static final EXPRESS_TYPE_WILDCARD_END:I = 0x1

.field private static final EXPRESS_TYPE_WILDCARD_NONE:I = 0x0

.field private static final EXPRESS_TYPE_WILDCARD_OTHER:I = 0x3

.field private static final EXPRESS_WILDCARD:Ljava/lang/String; = "*"

.field private static final TAG:Ljava/lang/String;

.field public static final WAKE_TYPE_ALLOW_START_ACTIVITY:I = 0x11

.field public static final WAKE_TYPE_CALL_LIST:I = 0x10

.field public static final WAKE_TYPE_GET_CONTENT_PROVIDER:I = 0x4

.field public static final WAKE_TYPE_SEND_BROADCAST:I = 0x2

.field public static final WAKE_TYPE_START_ACTIVITY:I = 0x1

.field public static final WAKE_TYPE_START_SERVICE:I = 0x8


# instance fields
.field public mActionExpress:Ljava/lang/String;

.field private mActionExpressType:I

.field public mCalleeExpress:Ljava/lang/String;

.field private mCalleeExpressType:I

.field public mCallerExpress:Ljava/lang/String;

.field private mCallerExpressType:I

.field public mClassNameExpress:Ljava/lang/String;

.field private mClassNameExpressType:I

.field public mHashCode:I

.field public mUserSettings:I

.field public mWakeType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lmiui/security/WakePathRuleInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/security/WakePathRuleInfo;->TAG:Ljava/lang/String;

    new-instance v0, Lmiui/security/WakePathRuleInfo$1;

    invoke-direct {v0}, Lmiui/security/WakePathRuleInfo$1;-><init>()V

    sput-object v0, Lmiui/security/WakePathRuleInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/security/WakePathRuleInfo;->mActionExpress:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/security/WakePathRuleInfo;->mActionExpressType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/security/WakePathRuleInfo;->mClassNameExpress:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/security/WakePathRuleInfo;->mClassNameExpressType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/security/WakePathRuleInfo;->mCallerExpress:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/security/WakePathRuleInfo;->mCallerExpressType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/security/WakePathRuleInfo;->mCalleeExpress:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/security/WakePathRuleInfo;->mCalleeExpressType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/security/WakePathRuleInfo;->mWakeType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/security/WakePathRuleInfo;->mUserSettings:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/security/WakePathRuleInfo;->mHashCode:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lmiui/security/WakePathRuleInfo;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/security/WakePathRuleInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/security/WakePathRuleInfo;->mActionExpress:Ljava/lang/String;

    iget-object v0, p0, Lmiui/security/WakePathRuleInfo;->mActionExpress:Ljava/lang/String;

    invoke-static {v0}, Lmiui/security/WakePathRuleInfo;->getExpressType(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lmiui/security/WakePathRuleInfo;->mActionExpressType:I

    iput-object p2, p0, Lmiui/security/WakePathRuleInfo;->mClassNameExpress:Ljava/lang/String;

    iget-object v0, p0, Lmiui/security/WakePathRuleInfo;->mClassNameExpress:Ljava/lang/String;

    invoke-static {v0}, Lmiui/security/WakePathRuleInfo;->getExpressType(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lmiui/security/WakePathRuleInfo;->mClassNameExpressType:I

    iput-object p3, p0, Lmiui/security/WakePathRuleInfo;->mCallerExpress:Ljava/lang/String;

    iget-object v0, p0, Lmiui/security/WakePathRuleInfo;->mCallerExpress:Ljava/lang/String;

    invoke-static {v0}, Lmiui/security/WakePathRuleInfo;->getExpressType(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lmiui/security/WakePathRuleInfo;->mCallerExpressType:I

    iput-object p4, p0, Lmiui/security/WakePathRuleInfo;->mCalleeExpress:Ljava/lang/String;

    iget-object v0, p0, Lmiui/security/WakePathRuleInfo;->mCalleeExpress:Ljava/lang/String;

    invoke-static {v0}, Lmiui/security/WakePathRuleInfo;->getExpressType(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lmiui/security/WakePathRuleInfo;->mCalleeExpressType:I

    iput p5, p0, Lmiui/security/WakePathRuleInfo;->mWakeType:I

    iput p6, p0, Lmiui/security/WakePathRuleInfo;->mUserSettings:I

    iget v0, p0, Lmiui/security/WakePathRuleInfo;->mWakeType:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_3c

    invoke-static {p1, p2, p3, p4}, Lmiui/security/WakePathRuleInfo;->getHashCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lmiui/security/WakePathRuleInfo;->mHashCode:I

    :goto_3b
    return-void

    :cond_3c
    const/4 v0, 0x0

    iput v0, p0, Lmiui/security/WakePathRuleInfo;->mHashCode:I

    goto :goto_3b
.end method

.method public static checkCompatibility(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 9

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v0, 0x11

    if-ne p4, v0, :cond_7

    return v3

    :cond_7
    const-string/jumbo v0, "*"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string/jumbo v0, "*"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string/jumbo v0, "*"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string/jumbo v0, "*"

    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2c

    return v2

    :cond_2c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0xa

    if-ge v0, v1, :cond_44

    return v2

    :cond_44
    const-string/jumbo v0, "com.miui.home"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_56

    const-string/jumbo v0, "com.miui.home"

    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_57

    :cond_56
    return v2

    :cond_57
    const-string/jumbo v0, "android"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_69

    const-string/jumbo v0, "android"

    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_86

    :cond_69
    const-string/jumbo v0, "android"

    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_73

    return v2

    :cond_73
    const-string/jumbo v0, "*"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_86

    const-string/jumbo v0, "*"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_86

    return v2

    :cond_86
    return v3
.end method

.method private static expressCompare(Ljava/lang/String;ILjava/lang/String;)Z
    .registers 9

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_6a

    :cond_4
    :pswitch_4
    const/4 v3, 0x1

    return v3

    :pswitch_6
    invoke-static {p0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    return v5

    :pswitch_d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_1e

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1e
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2c

    invoke-virtual {p2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_4

    :cond_2c
    return v5

    :pswitch_2d
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_39

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3a

    :cond_39
    return v5

    :cond_3a
    const-string/jumbo v3, "*"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_45

    return v5

    :cond_45
    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5b

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5c

    :cond_5b
    return v5

    :cond_5c
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_63

    return v5

    :cond_63
    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    return v5

    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_6
        :pswitch_d
        :pswitch_4
        :pswitch_2d
    .end packed-switch
.end method

.method private static getExpressType(Ljava/lang/String;)I
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v0, 0x0

    :cond_8
    :goto_8
    return v0

    :cond_9
    const-string/jumbo v1, "*"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v0, 0x2

    goto :goto_8

    :cond_14
    const-string/jumbo v1, "*"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    const/4 v0, 0x1

    goto :goto_8

    :cond_1f
    const-string/jumbo v1, "*"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x3

    goto :goto_8
.end method

.method public static getHashCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 6

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    return v1
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(I)Z
    .registers 6

    const/4 v0, 0x0

    iget v1, p0, Lmiui/security/WakePathRuleInfo;->mWakeType:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_9

    if-nez p1, :cond_30

    :cond_9
    sget-object v1, Lmiui/security/WakePathRuleInfo;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MIUILOG-WAKEPATH equals: Invalid parameter!! mWakeType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lmiui/security/WakePathRuleInfo;->mWakeType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " hashCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_30
    iget v1, p0, Lmiui/security/WakePathRuleInfo;->mHashCode:I

    if-ne v1, p1, :cond_35

    const/4 v0, 0x1

    :cond_35
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v3, 0x0

    if-nez p1, :cond_4

    return v3

    :cond_4
    :try_start_4
    move-object v0, p1

    check-cast v0, Lmiui/security/WakePathRuleInfo;

    move-object v2, v0
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_8} :catch_38

    iget-object v4, p0, Lmiui/security/WakePathRuleInfo;->mActionExpress:Ljava/lang/String;

    iget-object v5, v2, Lmiui/security/WakePathRuleInfo;->mActionExpress:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_37

    iget-object v4, p0, Lmiui/security/WakePathRuleInfo;->mClassNameExpress:Ljava/lang/String;

    iget-object v5, v2, Lmiui/security/WakePathRuleInfo;->mClassNameExpress:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_37

    iget-object v4, p0, Lmiui/security/WakePathRuleInfo;->mCallerExpress:Ljava/lang/String;

    iget-object v5, v2, Lmiui/security/WakePathRuleInfo;->mCallerExpress:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_37

    iget-object v4, p0, Lmiui/security/WakePathRuleInfo;->mCalleeExpress:Ljava/lang/String;

    iget-object v5, v2, Lmiui/security/WakePathRuleInfo;->mCalleeExpress:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_37

    iget v4, p0, Lmiui/security/WakePathRuleInfo;->mWakeType:I

    iget v5, v2, Lmiui/security/WakePathRuleInfo;->mWakeType:I

    if-ne v4, v5, :cond_37

    const/4 v3, 0x1

    :cond_37
    return v3

    :catch_38
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/ClassCastException;->printStackTrace()V

    return v3
.end method

.method public equals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 9

    const/4 v2, 0x0

    iget v0, p0, Lmiui/security/WakePathRuleInfo;->mWakeType:I

    and-int/2addr v0, p5

    if-nez v0, :cond_7

    return v2

    :cond_7
    iget-object v0, p0, Lmiui/security/WakePathRuleInfo;->mActionExpress:Ljava/lang/String;

    iget v1, p0, Lmiui/security/WakePathRuleInfo;->mActionExpressType:I

    invoke-static {v0, v1, p1}, Lmiui/security/WakePathRuleInfo;->expressCompare(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    return v2

    :cond_12
    iget-object v0, p0, Lmiui/security/WakePathRuleInfo;->mClassNameExpress:Ljava/lang/String;

    iget v1, p0, Lmiui/security/WakePathRuleInfo;->mClassNameExpressType:I

    invoke-static {v0, v1, p2}, Lmiui/security/WakePathRuleInfo;->expressCompare(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    return v2

    :cond_1d
    iget-object v0, p0, Lmiui/security/WakePathRuleInfo;->mCallerExpress:Ljava/lang/String;

    iget v1, p0, Lmiui/security/WakePathRuleInfo;->mCallerExpressType:I

    invoke-static {v0, v1, p3}, Lmiui/security/WakePathRuleInfo;->expressCompare(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_28

    return v2

    :cond_28
    iget-object v0, p0, Lmiui/security/WakePathRuleInfo;->mCalleeExpress:Ljava/lang/String;

    iget v1, p0, Lmiui/security/WakePathRuleInfo;->mCalleeExpressType:I

    invoke-static {v0, v1, p4}, Lmiui/security/WakePathRuleInfo;->expressCompare(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_33

    return v2

    :cond_33
    const/4 v0, 0x1

    return v0
.end method

.method public getCalleeExpress()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/security/WakePathRuleInfo;->mCalleeExpress:Ljava/lang/String;

    return-object v0
.end method

.method public getCallerExpress()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/security/WakePathRuleInfo;->mCallerExpress:Ljava/lang/String;

    return-object v0
.end method

.method public getUserSettings()I
    .registers 2

    iget v0, p0, Lmiui/security/WakePathRuleInfo;->mUserSettings:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "WakePathRuleInfo: mActionExpress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/security/WakePathRuleInfo;->mActionExpress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mClassNameExpress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/security/WakePathRuleInfo;->mClassNameExpress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mCallerExpress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/security/WakePathRuleInfo;->mCallerExpress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mCalleeExpress= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/security/WakePathRuleInfo;->mCalleeExpress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mWakeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmiui/security/WakePathRuleInfo;->mWakeType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " userSettings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmiui/security/WakePathRuleInfo;->mUserSettings:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Lmiui/security/WakePathRuleInfo;->mActionExpress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lmiui/security/WakePathRuleInfo;->mActionExpressType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lmiui/security/WakePathRuleInfo;->mClassNameExpress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lmiui/security/WakePathRuleInfo;->mClassNameExpressType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lmiui/security/WakePathRuleInfo;->mCallerExpress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lmiui/security/WakePathRuleInfo;->mCallerExpressType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lmiui/security/WakePathRuleInfo;->mCalleeExpress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lmiui/security/WakePathRuleInfo;->mCalleeExpressType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lmiui/security/WakePathRuleInfo;->mWakeType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lmiui/security/WakePathRuleInfo;->mUserSettings:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lmiui/security/WakePathRuleInfo;->mHashCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.class Lmiui/telephony/SubscriptionManagerEx$ConstantsDefiner;
.super Ljava/lang/Object;
.source "SubscriptionManagerEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/SubscriptionManagerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConstantsDefiner"
.end annotation


# static fields
.field private static final PHONE_ID:Ljava/lang/String; = "phone_id"

.field private static final SLOT_ID:Ljava/lang/String; = "slot_id"

.field private static final SUBSCRIPTION_ID:Ljava/lang/String; = "subscription_id"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getDefaultPhoneIdConstant()I
    .registers 1

    const v0, 0x7fffffff

    return v0
.end method

.method static getDefaultSlotIdConstant()I
    .registers 1

    const v0, 0x7fffffff

    return v0
.end method

.method static getDefaultSubscriptionIdConstant()I
    .registers 1

    const v0, 0x7fffffff

    return v0
.end method

.method static getInvalidPhoneIdConstant()I
    .registers 1

    const/4 v0, -0x1

    return v0
.end method

.method static getInvalidSlotIdConstant()I
    .registers 1

    const/4 v0, -0x1

    return v0
.end method

.method static getInvalidSubscriptionIdConstant()I
    .registers 1

    const/4 v0, -0x1

    return v0
.end method

.method static getPhoneKeyConstant()Ljava/lang/String;
    .registers 1

    const-string/jumbo v0, "phone_id"

    return-object v0
.end method

.method static getSlotKeyConstant()Ljava/lang/String;
    .registers 1

    const-string/jumbo v0, "slot_id"

    return-object v0
.end method

.method static getSubscriptionKeyConstant()Ljava/lang/String;
    .registers 1

    const-string/jumbo v0, "subscription_id"

    return-object v0
.end method

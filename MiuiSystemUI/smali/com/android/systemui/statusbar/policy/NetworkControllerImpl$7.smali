.class Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$7;
.super Ljava/lang/Object;
.source "NetworkControllerImpl.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->setCurrentSubscriptions(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lmiui/telephony/SubscriptionInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$7;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lmiui/telephony/SubscriptionInfo;

    check-cast p2, Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$7;->compare(Lmiui/telephony/SubscriptionInfo;Lmiui/telephony/SubscriptionInfo;)I

    move-result v0

    return v0
.end method

.method public compare(Lmiui/telephony/SubscriptionInfo;Lmiui/telephony/SubscriptionInfo;)I
    .locals 2

    invoke-virtual {p1}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v0

    invoke-virtual {p2}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lmiui/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    invoke-virtual {p2}, Lmiui/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v0

    invoke-virtual {p2}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

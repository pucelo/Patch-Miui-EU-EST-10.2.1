.class public Lcom/xiaomi/analytics/TrackAction;
.super Lcom/xiaomi/analytics/Action;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/analytics/Action;-><init>()V

    return-void
.end method


# virtual methods
.method public setAction(Ljava/lang/String;)Lcom/xiaomi/analytics/TrackAction;
    .locals 1

    const-string/jumbo v0, "_action_"

    invoke-virtual {p0, v0, p1}, Lcom/xiaomi/analytics/TrackAction;->addContent(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public setCategory(Ljava/lang/String;)Lcom/xiaomi/analytics/TrackAction;
    .locals 1

    const-string/jumbo v0, "_category_"

    invoke-virtual {p0, v0, p1}, Lcom/xiaomi/analytics/TrackAction;->addContent(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

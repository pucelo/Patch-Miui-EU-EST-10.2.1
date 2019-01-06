.class public Lmiui/maml/elements/DateTimeScreenElement;
.super Lmiui/maml/elements/TextScreenElement;
.source "DateTimeScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;
    }
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "DateTime"


# instance fields
.field private mDateFormatter:Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;

.field private mDescriptionDateFormatter:Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .registers 12

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/TextScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    invoke-virtual {p0}, Lmiui/maml/elements/DateTimeScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    const-string/jumbo v1, "value"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v8

    new-instance v0, Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;

    iget-object v1, p0, Lmiui/maml/elements/DateTimeScreenElement;->mFormatter:Lmiui/maml/util/TextFormatter;

    invoke-direct {v0, p0, v1, v8}, Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;-><init>(Lmiui/maml/elements/DateTimeScreenElement;Lmiui/maml/util/TextFormatter;Lmiui/maml/data/Expression;)V

    iput-object v0, p0, Lmiui/maml/elements/DateTimeScreenElement;->mDateFormatter:Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;

    const-string/jumbo v0, "contentDescriptionFormat"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_42

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/elements/DateTimeScreenElement;->mHasContentDescription:Z

    invoke-virtual {p0}, Lmiui/maml/elements/DateTimeScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    const-string/jumbo v3, "contentDescriptionFormat"

    move-object v1, p1

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-static/range {v0 .. v6}, Lmiui/maml/util/TextFormatter;->fromElement(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/util/TextFormatter;

    move-result-object v7

    new-instance v0, Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;

    invoke-direct {v0, p0, v7, v8}, Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;-><init>(Lmiui/maml/elements/DateTimeScreenElement;Lmiui/maml/util/TextFormatter;Lmiui/maml/data/Expression;)V

    iput-object v0, p0, Lmiui/maml/elements/DateTimeScreenElement;->mDescriptionDateFormatter:Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;

    :cond_42
    return-void
.end method


# virtual methods
.method public getContentDescription()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/DateTimeScreenElement;->mDescriptionDateFormatter:Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lmiui/maml/elements/DateTimeScreenElement;->mDescriptionDateFormatter:Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;

    invoke-virtual {v0}, Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;->getText()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    invoke-super {p0}, Lmiui/maml/elements/TextScreenElement;->getContentDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method protected getText()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/DateTimeScreenElement;->mDateFormatter:Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;

    invoke-virtual {v0}, Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public resume()V
    .registers 2

    invoke-super {p0}, Lmiui/maml/elements/TextScreenElement;->resume()V

    iget-object v0, p0, Lmiui/maml/elements/DateTimeScreenElement;->mDateFormatter:Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;

    invoke-virtual {v0}, Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;->resetCalendar()V

    iget-object v0, p0, Lmiui/maml/elements/DateTimeScreenElement;->mDescriptionDateFormatter:Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lmiui/maml/elements/DateTimeScreenElement;->mDescriptionDateFormatter:Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;

    invoke-virtual {v0}, Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;->resetCalendar()V

    :cond_11
    return-void
.end method

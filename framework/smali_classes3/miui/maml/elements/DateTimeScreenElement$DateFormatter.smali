.class Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;
.super Ljava/lang/Object;
.source "DateTimeScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/DateTimeScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DateFormatter"
.end annotation


# instance fields
.field private mCalendar:Lmiui/date/Calendar;

.field private mCurDay:I

.field private mLunarDate:Ljava/lang/String;

.field private mOldFormat:Ljava/lang/String;

.field private mPreValue:J

.field private mText:Ljava/lang/String;

.field private mTextFormatter:Lmiui/maml/util/TextFormatter;

.field private mValueExp:Lmiui/maml/data/Expression;

.field final synthetic this$0:Lmiui/maml/elements/DateTimeScreenElement;


# direct methods
.method public constructor <init>(Lmiui/maml/elements/DateTimeScreenElement;Lmiui/maml/util/TextFormatter;Lmiui/maml/data/Expression;)V
    .registers 5

    iput-object p1, p0, Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;->this$0:Lmiui/maml/elements/DateTimeScreenElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmiui/date/Calendar;

    invoke-direct {v0}, Lmiui/date/Calendar;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;->mCalendar:Lmiui/date/Calendar;

    const/4 v0, -0x1

    iput v0, p0, Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;->mCurDay:I

    iput-object p2, p0, Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;->mTextFormatter:Lmiui/maml/util/TextFormatter;

    iput-object p3, p0, Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;->mValueExp:Lmiui/maml/data/Expression;

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .registers 10

    const/16 v8, 0x9

    const/4 v5, 0x0

    iget-object v4, p0, Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;->mTextFormatter:Lmiui/maml/util/TextFormatter;

    if-nez v4, :cond_8

    return-object v5

    :cond_8
    iget-object v4, p0, Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;->mTextFormatter:Lmiui/maml/util/TextFormatter;

    invoke-virtual {v4}, Lmiui/maml/util/TextFormatter;->getFormat()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_11

    return-object v5

    :cond_11
    iget-object v4, p0, Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;->mValueExp:Lmiui/maml/data/Expression;

    if-eqz v4, :cond_37

    iget-object v4, p0, Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;->this$0:Lmiui/maml/elements/DateTimeScreenElement;

    iget-object v5, p0, Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;->mValueExp:Lmiui/maml/data/Expression;

    invoke-virtual {v4, v5}, Lmiui/maml/elements/DateTimeScreenElement;->evaluate(Lmiui/maml/data/Expression;)D

    move-result-wide v4

    double-to-long v2, v4

    :goto_1e
    iget-object v4, p0, Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;->mOldFormat:Ljava/lang/String;

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3c

    iget-wide v4, p0, Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;->mPreValue:J

    sub-long v4, v2, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/16 v6, 0xc8

    cmp-long v4, v4, v6

    if-gez v4, :cond_3c

    iget-object v4, p0, Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;->mText:Ljava/lang/String;

    return-object v4

    :cond_37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    goto :goto_1e

    :cond_3c
    iput-object v0, p0, Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;->mOldFormat:Ljava/lang/String;

    iget-object v4, p0, Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;->mCalendar:Lmiui/date/Calendar;

    invoke-virtual {v4, v2, v3}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    const-string/jumbo v4, "NNNN"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b5

    iget-object v4, p0, Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;->mCalendar:Lmiui/date/Calendar;

    invoke-virtual {v4, v8}, Lmiui/date/Calendar;->get(I)I

    move-result v4

    iget v5, p0, Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;->mCurDay:I

    if-eq v4, v5, :cond_ac

    iget-object v4, p0, Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;->mCalendar:Lmiui/date/Calendar;

    const-string/jumbo v5, "N\u6708e"

    invoke-virtual {v4, v5}, Lmiui/date/Calendar;->format(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;->mLunarDate:Ljava/lang/String;

    iget-object v4, p0, Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;->mCalendar:Lmiui/date/Calendar;

    const-string/jumbo v5, "t"

    invoke-virtual {v4, v5}, Lmiui/date/Calendar;->format(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_88

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;->mLunarDate:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;->mLunarDate:Ljava/lang/String;

    :cond_88
    iget-object v4, p0, Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;->mCalendar:Lmiui/date/Calendar;

    invoke-virtual {v4, v8}, Lmiui/date/Calendar;->get(I)I

    move-result v4

    iput v4, p0, Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;->mCurDay:I

    const-string/jumbo v4, "DateTimeScreenElement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "get lunar date:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;->mLunarDate:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ac
    const-string/jumbo v4, "NNNN"

    iget-object v5, p0, Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;->mLunarDate:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_b5
    iget-object v4, p0, Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;->mCalendar:Lmiui/date/Calendar;

    invoke-virtual {v4, v0}, Lmiui/date/Calendar;->format(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;->mText:Ljava/lang/String;

    iput-wide v2, p0, Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;->mPreValue:J

    iget-object v4, p0, Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;->mText:Ljava/lang/String;

    return-object v4
.end method

.method public resetCalendar()V
    .registers 2

    new-instance v0, Lmiui/date/Calendar;

    invoke-direct {v0}, Lmiui/date/Calendar;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;->mCalendar:Lmiui/date/Calendar;

    return-void
.end method
